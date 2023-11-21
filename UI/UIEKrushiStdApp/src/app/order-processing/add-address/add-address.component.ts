import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { TokenClaims } from '@enums/tokenclaims';
import { Address } from '@models/address';
import { AuthenticationService } from '@services/authentication.service';
import { UserService } from '@services/user.service';

@Component({
  selector: 'app-add-address',
  templateUrl: './add-address.component.html',
  styleUrls: ['./add-address.component.css'],
})
export class AddAddressComponent implements OnInit {
  addressForm!: FormGroup;
  @Output() hideComponent = new EventEmitter();

  constructor(
    private usersvc: UserService,
    private authsvc: AuthenticationService
  ) {}

  ngOnInit(): void {
    this.addressForm = new FormGroup({
      area: new FormControl('', [
        Validators.required,
        Validators.minLength(2),
        Validators.maxLength(50),
      ]),
      landmark: new FormControl(''),
      addressType: new FormControl('Residential', [Validators.required]),
      city: new FormControl('', [
        Validators.required,
        Validators.minLength(2),
        Validators.maxLength(20),
      ]),
      state: new FormControl('', [
        Validators.required,
        Validators.minLength(2),
        Validators.maxLength(20),
      ]),
      pincode: new FormControl('', [
        Validators.required,
        Validators.pattern('[0-9]+'),
        Validators.minLength(6),
        Validators.maxLength(6),
      ]),
    });
  }

  get area() {
    return this.addressForm.get('area')!;
  }
  get landmark() {
    return this.addressForm.get('landmark')!;
  }
  get city() {
    return this.addressForm.get('city')!;
  }
  get state() {
    return this.addressForm.get('state')!;
  }
  get addressType() {
    return this.addressForm.get('addressType')!;
  }
  get pincode() {
    return this.addressForm.get('pincode')!;
  }

  onSubmit() {
    if (this.addressForm.invalid) {
      for (const control of Object.keys(this.addressForm.controls)) {
        this.addressForm.controls[control].markAsTouched();
      }
      return;
    }

    let address: Address = {
      id: 0,
      userId: this.authsvc.getClaimFromToken(TokenClaims.userId),
      area: this.area.value,
      landMark: this.landmark.value,
      city: this.city.value,
      state: this.state.value,
      addressType: this.addressType.value,
      pinCode: this.pincode.value,
      name: '',
      contactNumber: '',
    };

    this.usersvc.addAddress(address).subscribe((res) => {
      if (res) {
        this.hideComponent.emit();
        this.usersvc.newaddressSubject.next();
      }
    });
  }
  onCancelClick() {
    this.hideComponent.emit();
  }
}
