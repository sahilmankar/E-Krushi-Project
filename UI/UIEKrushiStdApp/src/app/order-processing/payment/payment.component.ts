import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { LocalStorageKeys } from 'src/app/Models/Enums/local-storage-keys';
import { SessionStorageKeys } from 'src/app/Models/Enums/session-storage-keys';
import { PaymentAddModel } from 'src/app/Models/PaymentAddModel';
import { PaymentTransferDetails } from 'src/app/Models/PaymentTransferDetails';
import { CartItem } from 'src/app/Models/cart-item';
import { OrderAddModel } from 'src/app/Models/order-add-model';
import { OrderAmount } from 'src/app/Models/order-amount';
import { OrderDetailsAddModel } from 'src/app/Models/order-details-add-model';
import { BankingService } from 'src/app/Services/banking.service';
import { CartService } from 'src/app/Services/cart.service';
import { OrderService } from 'src/app/Services/order-service.service';
import { PaymentService } from 'src/app/Services/payment.service';

@Component({
  selector: 'app-payment',
  templateUrl: './payment.component.html',
  styleUrls: ['./payment.component.css'],
})
export class PaymentComponent {
  selectedMode: string = 'cash on delivery';
  accountNumber: string = '';
  ifscCode: string = '';
  showPayButton: boolean = false;

  constructor(
    private banksvc: BankingService,
    private paymentsvc: PaymentService,
    private ordersvc: OrderService,
    private cartsvc: CartService,
    private router: Router
  ) {}

  onPaymentOptionChange() {
    this.accountNumber = '';
    this.showPayButton = false;
    this.ifscCode = '';
  }

  checkAccount() {
    let customerId = Number(localStorage.getItem(LocalStorageKeys.userId));
    if (Number.isNaN(customerId)) {
      return;
    }

    this.banksvc.checkAccount(customerId).subscribe((res) => {
      let bankAccount = res;

      if (
        bankAccount.ifscCode == this.ifscCode &&
        bankAccount.accountNumber == this.accountNumber
      ) {
        this.showPayButton = true;
      }
    });
  }

  // makePayment() {
  //   const customerId = Number(localStorage.getItem(LocalStorageKeys.userId));
  //   const addressId = Number(
  //     sessionStorage.getItem(SessionStorageKeys.addressId)
  //   );

  //   if (Number.isNaN(customerId) || Number.isNaN(addressId)) {
  //     return;
  //   }

  //   let items = sessionStorage.getItem(SessionStorageKeys.items);
  //   if (items == null) {
  //     return;
  //   }
  //   const cartItems: CartItem[] = JSON.parse(items);

  //   const orderdetails: OrderDetailsAddModel[] = cartItems.map(
  //     (item) =>
  //       new OrderDetailsAddModel(item.productId, item.quantity, item.size)
  //   );

  //   const order: OrderAddModel = {
  //     customerId: customerId,
  //     addressId: addressId,
  //     orderDetails: orderdetails,
  //   };

  //   this.ordersvc.processOrder(order).subscribe((res) => {
  //     console.log(res);
  //     const orderAmount = res;

  //     if (this.selectedMode === 'cash on delivery') {
  //       let payment: PaymentAddModel = {
  //         paymentStatus: 'unpaid',
  //         mode: 'cash on delivery',
  //         orderId: orderAmount.orderId,
  //         transactionId: 0,
  //       };
  //       this.paymentsvc.addPayment(payment).subscribe((res) => {
  //         console.log('payment done successfully and order placed');
  //         this.router.navigate(['/']);
  //       });

  //     } else if (this.selectedMode === 'net banking') {
  //       let paymentDetails: PaymentTransferDetails = {
  //         fromAcct: this.accountNumber,
  //         toAcct: '5642999999',
  //         fromIfsc: this.ifscCode,
  //         toIfsc: 'AXIS0000296',
  //         amount: orderAmount.amount,
  //       };

  //       this.banksvc.fundTransfer(paymentDetails).subscribe((res) => {
  //         if (res != 0) {
  //           let payment: PaymentAddModel = {
  //             paymentStatus: 'paid',
  //             mode: 'net banking',
  //             orderId: orderAmount.orderId,
  //             transactionId: res,
  //           };

  //           this.paymentsvc.addPayment(payment).subscribe((res) => {
  //             console.log('payment done successfully and order placed');
  //             this.router.navigate(['/']);
  //           });
  //         }
  //       });
  //     }
  //   });
  // }

  makePayment() {
    const customerId = Number(localStorage.getItem(LocalStorageKeys.userId));
    const addressId = Number(
      sessionStorage.getItem(SessionStorageKeys.addressId)
    );

    if (Number.isNaN(customerId) || Number.isNaN(addressId)) {
      return;
    }

    const cartItems = this.getCartItems();

    if (!cartItems || cartItems.length === 0) {
      return;
    }

    const orderdetails = this.createOrderDetails(cartItems);
    const order: OrderAddModel = {
      customerId: customerId,
      addressId: addressId,
      orderDetails: orderdetails,
    };

    this.processOrder(order);
  }

  getCartItems() {
    const items = sessionStorage.getItem(SessionStorageKeys.items);
    return items ? JSON.parse(items) : [];
  }

  createOrderDetails(cartItems: CartItem[]) {
    return cartItems.map(
      (item) =>
        new OrderDetailsAddModel(item.productId, item.quantity, item.size)
    );
  }

  processOrder(order: OrderAddModel) {
    this.ordersvc.processOrder(order).subscribe((res) => {
      console.log(res);
      const orderAmount = res;

      if (this.selectedMode === 'cash on delivery') {
        this.processCashOnDeliveryPayment(orderAmount.orderId);
      } else if (this.selectedMode === 'net banking') {
        this.processNetBankingPayment(orderAmount);
      }
    });
  }

  processCashOnDeliveryPayment(orderId: number) {
    const payment: PaymentAddModel = {
      paymentStatus: 'unpaid',
      mode: 'cash on delivery',
      orderId: orderId,
      transactionId: 0,
    };

    this.paymentsvc.addPayment(payment).subscribe((res) => {
      if (res) {
        this.emptyCart();
        alert('Order Placed');
        console.log('payment done successfully and order placed');
        this.router.navigate(['/']);
      }
    });
  }

  processNetBankingPayment(orderAmount: OrderAmount) {
    const paymentDetails: PaymentTransferDetails = {
      fromAcct: this.accountNumber,
      toAcct: '5642999999',
      fromIfsc: this.ifscCode,
      toIfsc: 'AXIS0000296',
      amount: orderAmount.amount,
    };

    this.banksvc.fundTransfer(paymentDetails).subscribe((res) => {
      if (res != 0) {
        const payment: PaymentAddModel = {
          paymentStatus: 'paid',
          mode: 'net banking',
          orderId: orderAmount.orderId,
          transactionId: res,
        };

        this.paymentsvc.addPayment(payment).subscribe((res) => {
          if (res) {
            this.emptyCart();
            alert('Order Placed');
            console.log('payment done successfully and order placed');
            this.router.navigate(['/']);
          }
        });
      }
    });
  }

  emptyCart() {
    if (sessionStorage.getItem(SessionStorageKeys.isFromCart) == 'true') {
      const customerId = Number(localStorage.getItem(LocalStorageKeys.userId));
      this.cartsvc.RemoveAllCartItems(customerId).subscribe((res) => {});
    }
  }
}