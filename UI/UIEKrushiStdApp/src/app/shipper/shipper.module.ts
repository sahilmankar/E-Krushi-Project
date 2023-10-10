import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ShipperDashboardComponent } from './shipper-dashboard/shipper-dashboard.component';
import { RouterModule, Routes } from '@angular/router';
import { ShipperOrdersComponent } from './shipper-orders/shipper-orders.component';
import { CustomerModule } from '../customer/customer.module';

export const shipperRoutes: Routes = [
  { path: 'dashboard', component: ShipperDashboardComponent },
  { path: 'orders', component: ShipperOrdersComponent },

];

@NgModule({
  declarations: [ShipperDashboardComponent, ShipperOrdersComponent],
  imports: [CommonModule,CustomerModule,RouterModule],
})
export class ShipperModule {}
