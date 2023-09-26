import { Component, OnInit } from '@angular/core';
import { LocalStorageKeys } from 'src/app/Models/Enums/local-storage-keys';
import { Order } from 'src/app/Models/Order';
import { OrderService } from 'src/app/Services/order-service.service';

@Component({
  selector: 'app-customer-orders',
  templateUrl: './customer-orders.component.html',
  styleUrls: ['./customer-orders.component.css'],
})
export class CustomerOrdersComponent implements OnInit {
  orders: Order[] = [];
  filteredOrders: Order[] = [];
  activeFilter: string = 'all';
 
  constructor(private ordersvc: OrderService) {}

  ngOnInit(): void {
    const customerId = Number(localStorage.getItem(LocalStorageKeys.userId));

    this.ordersvc.getOrdersOfCustomer(customerId).subscribe((res) => {
      this.orders = res;
      this.filteredOrders = res;
      console.log(res);
    });
  }

  filterOrders(status: string) {
    this.activeFilter = status;
    if (status == 'all') {
      this.filteredOrders = this.orders;
    } else {
      this.filteredOrders = this.orders.filter(
        (order) => order.status == status
      );
    }
  }
}
