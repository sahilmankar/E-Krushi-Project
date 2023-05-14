import { Component, Input, OnInit } from '@angular/core';
import { BreakpointObserver, Breakpoints } from '@angular/cdk/layout';
import { Observable } from 'rxjs';
import { map, shareReplay } from 'rxjs/operators';
import { CrmService } from '../crm.service';
import { Customer } from '../customer';

@Component({
  selector: 'app-customerdetails',
  templateUrl: './customerdetails.component.html',
  styleUrls: ['./customerdetails.component.scss']
})
export class CustomerdetailsComponent implements OnInit {

  isHandset$: Observable<boolean> = this.breakpointObserver.observe(Breakpoints.Handset)
    .pipe(
      map(result => result.matches),
      shareReplay()
    );

  constructor(private breakpointObserver: BreakpointObserver,private svc :CrmService) {}
  custId : number |undefined;
  customer:Customer |undefined;

  ngOnInit(): void {
    }

  getCustomer(custId:number){
    this.svc.getCustomer(custId).subscribe((Response)=>{
      this.customer=Response;
      console.log(Response);
    });
  }

  deleteCustomer(custId:any){
    this.svc.deleteCustomer(custId).subscribe((res)=>{
      this.customer=res;
    })
  }

}