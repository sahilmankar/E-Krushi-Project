import { Routes } from '@angular/router';

import { DashboardComponent } from '../../pages/dashboard/dashboard.component';
import { IconsComponent } from '../../pages/icons/icons.component';
import { MapsComponent } from '../../pages/maps/maps.component';
import { UserProfileComponent } from '../../pages/user-profile/user-profile.component';
import { TablesComponent } from '../../pages/tables/tables.component';
import { ProductlistComponent } from 'src/app/pages/productlist/productlist.component';
import { DetailsComponent } from 'src/app/pages/details/details.component';
import { CustomerListComponent } from 'src/app/pages/crm/customer-list/customer-list.component';
import { CustomerdetailsComponent } from 'src/app/pages/crm/customerdetails/customerdetails.component';
import { InsertcustomerComponent } from 'src/app/pages/crm/insertcustomer/insertcustomer.component';
import { UpdatecustomerComponent } from 'src/app/pages/crm/updatecustomer/updatecustomer.component';
import { CategorylistComponent } from 'src/app/pages/category/categorylist/categorylist.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'dashboard',      component: DashboardComponent },
    { path: 'user-profile',   component: UserProfileComponent },
    { path: 'tables',         component: TablesComponent },
    { path: 'icons',          component: IconsComponent },
    { path: 'maps',           component: MapsComponent },
    { path: 'productlist',    component: ProductlistComponent },
    { path: 'details',        component: DetailsComponent },
    { path: 'customerlist',   component: CustomerListComponent },
    { path: 'customerdetails',component: CustomerdetailsComponent },
    { path: 'insertcustomer', component: InsertcustomerComponent },
    { path: 'updatecustomer', component: UpdatecustomerComponent },
    { path: 'categorylist',   component: CategorylistComponent }
];
