import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '@environments/environment';
import { NameId } from '@models/nameId';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class CorporateService {
  private apiurl: string = environment.corporateServiceUrl;

  constructor(private httpClient: HttpClient) {}

  getCorporateName(id: number): Observable<any[]> {
    let url = `${this.apiurl}/names/${id}`;
    return this.httpClient.get<any>(url);
  }
}
