import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Question } from 'src/app/Models/question';
import { ConsultingService } from 'src/app/Services/consulting.service';

@Component({
  selector: 'app-categorywisequestions',
  templateUrl: './categorywisequestions.component.html',
  styleUrls: ['./categorywisequestions.component.css']
})
export class CategorywisequestionsComponent implements OnInit {

  constructor(private svc:ConsultingService,private route:ActivatedRoute,private router:Router){}
  questions:Question[]=[]
  categoryId!:number
  category:string=''
  ngOnInit(): void {
    this.route.params.subscribe(params=>{
      this.categoryId=params["categoryId"]
    })
    this.svc.getCategorywiseQuestions(this.categoryId).subscribe((res)=>{
      this.questions=res;
      console.log(res);
    })
  }

  navigateQuestionAnswers(id:number) {
    console.log(id);
    this.router.navigate(['/customer/question/',id],{relativeTo:this.route});
  
    
  }

}
