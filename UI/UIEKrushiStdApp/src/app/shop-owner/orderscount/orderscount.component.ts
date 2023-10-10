import { Component, OnInit } from '@angular/core';
import { LocalStorageKeys } from 'src/app/Models/Enums/local-storage-keys';
import { OrderCount } from 'src/app/Models/orderCount';
import { BIService } from 'src/app/Services/bi.service';

@Component({
  selector: 'app-orderscount',
  templateUrl: './orderscount.component.html',
  styleUrls: ['./orderscount.component.css']
})
export class OrderscountComponent implements OnInit{
  currentDate: string = new Date().toISOString().slice(0,10);

  orderCount:OrderCount|undefined;
  constructor(private bisvc:BIService){ 
  }
  ngOnInit(): void {
    const storeId = Number(localStorage.getItem(LocalStorageKeys.storeId));
    if (Number.isNaN(storeId) || storeId == 0) {
      return;
    }

    this.bisvc.getOrderCountByStore
    (this.currentDate,storeId).subscribe((res)=>{
      console.log(res);
        this.orderCount=res;      
    })
  }


   
  
}
