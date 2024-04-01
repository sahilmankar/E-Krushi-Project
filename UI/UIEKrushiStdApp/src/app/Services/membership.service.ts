import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { User } from '@models/user';
import { environment } from '@environments/environment';
import { Address } from '@models/address';

@Injectable({
  providedIn: 'root',
})
export class MembershipService {

  usersServiceUrl=environment.usersServiceUrl;
  fileIOServiceUrl=environment.fileIOServiceUrl;
  userAddressServiceUrl=environment.userAddressServiceUrl;
  constructor(private httpClient: HttpClient) {}


  getUser(id: number): Observable<User> {
    let url = `${this.usersServiceUrl}/${id}`;
    return this.httpClient.get<User>(url);
  }

  updateUser(id: number, user: User): Observable<any> {
    let url = `${this.usersServiceUrl}/${id}`;
    return this.httpClient.put<any>(url, user);
  }
  uploadFile(filename: string, formData: FormData): Observable<any> {
    let url = `${this.fileIOServiceUrl}/fileupload/${filename}`;
    return this.httpClient.post<any>(url, formData, {
      reportProgress: true,
      observe: 'events',
    });
  }

  addAddress(address: Address): Observable<boolean> {
    let url = `http://localhost:5142/api/addresses`;
    return this.httpClient.post<boolean>(url, address);
  }

  updateAddress(addressId: number, address: Address): Observable<boolean> {
    let url = `${this.userAddressServiceUrl}/${addressId}`;
    return this.httpClient.put<boolean>(url, address);
  }
}
