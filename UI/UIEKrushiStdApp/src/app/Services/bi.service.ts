import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '@environments/environment';
import { MonthOrderCount } from '@models/month-order-count';
import { OrderCount } from '@models/orderCount';
import { TopProduct } from '@models/top-product';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class BIService {

  private apiurl: string = environment.biServiceUrl;


  constructor(private httpClient:HttpClient) { }

  getOrderCountByStore(todaysDate :string,storeId: number): Observable<OrderCount> {
    let url = `${this.apiurl}/orderscount/${todaysDate}/${storeId}`;
    return this.httpClient.get<OrderCount>(url);
  }

  getTopFiveSellingProducts(todaysDate :string,mode:string,storeId: number): Observable<TopProduct[]> {
    let url =  `${this.apiurl}/topproducts/${todaysDate}/${mode}/${storeId}`;
    return this.httpClient.get<TopProduct[]>(url);
  }


  getMonthsWithOrders(year :number,storeId: number): Observable<MonthOrderCount[]> {
    let url =  `${this.apiurl}/MonthOrders/${year}/${storeId}`;
    return this.httpClient.get<MonthOrderCount[]>(url);
  }

  getCategorywiseProductsCount(todaysDate :string,mode:string,storeId: number): Observable<any[]> {
    let url =  `${this.apiurl}/categorywiseproducts/${todaysDate}/${mode}/${storeId}`;
    return this.httpClient.get<any[]>(url);
  }

  getDeliveredOrders(year :number,storeId: number): Observable<any[]> {
    let url = `${this.apiurl}/deliveredorders/${year}/${storeId}`;
    return this.httpClient.get<any[]>(url);
  }

}
