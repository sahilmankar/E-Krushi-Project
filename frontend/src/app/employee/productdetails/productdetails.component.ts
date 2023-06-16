import { Component, OnInit } from '@angular/core';
import { EmployeeModule } from '../employee.module';
import { Product } from 'src/app/product';
import { EmployeeService } from '../employee.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-productdetails',
  templateUrl: './productdetails.component.html',
  styleUrls: ['./productdetails.component.css']
})
export class ProductdetailsComponent implements OnInit{

  product: any;
  id:any; 
  unitPrice:any;
  
  constructor(private svc:EmployeeService,private route:ActivatedRoute,private router:Router){}
  
  
  ngOnInit(): void {
    console.log("ng on init")
    this.id = this.route.snapshot.paramMap.get('id');
    console.log(this.id);
    this.svc.getById(this.id).subscribe((res)=>{
    this.product=res;
    localStorage.setItem("price",res.unitPrice);
    console.log(this.product);
      })
 }

    onClick(id:any){
      this.router.navigate(['./addtocart',id],{relativeTo:this.route})
    }
}
  

