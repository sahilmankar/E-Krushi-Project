import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '@environments/environment';
import { PaymentTransferDetails } from '@models/PaymentTransferDetails';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PaymentGatewayService {
  paymentGatewayServiceUrl= environment.paymentGatewayServiceUrl;

  constructor(private httpClient: HttpClient) {}

  fundTransfer(payment: PaymentTransferDetails): Observable<number> {
    let url = `${this.paymentGatewayServiceUrl}/fundstransfer`;
    return this.httpClient.post<number>(url, payment);
  }
}
