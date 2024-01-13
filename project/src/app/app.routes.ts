import {loginComponent} from './login/login.component';
import {registerComponent} from './register/register.component';
import { Routes } from '@angular/router';

export const routes: Routes = [
    { path: 'login-component', component: loginComponent },
  { path: 'register-component', component: registerComponent },
];
