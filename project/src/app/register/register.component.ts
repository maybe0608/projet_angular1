import { AuthService } from './../auth.service';
import { HttpClient, HttpClientModule,HTTP_INTERCEPTORS } from '@angular/common/http';
//import { provideHttpClient } from '@angular/common/http';//pour fetch
//import { withFetch } from '@angular/common/http';
import { Component, inject } from '@angular/core';
import { FormBuilder, ReactiveFormsModule, Validators } from '@angular/forms';
import { UserInterface } from '../user.interface';
import { Router } from '@angular/router';
@Component({
  selector: 'app-register',
  standalone: true,
  imports: [ReactiveFormsModule, HttpClientModule],
 templateUrl: './register.component.html',
  styleUrl: './register.component.css'
})
export class registerComponent {
   fb = inject(FormBuilder);
   http=inject(HttpClient)
   authService= inject(AuthService)
   router = inject(Router)
   form = this.fb.nonNullable.group({
    username :['',Validators.required],
    email:['',Validators.required],
    password: ['',Validators.required],
   });

   onSubmit():void {
      this.http.post<{user:UserInterface}>('https://api.realword.io/api/users',{
        user: this.form.getRawValue(),
      }).subscribe((response)=>{
        console.log('Response',response);
        localStorage.setItem('token', response.user.token);
        this.authService.currentUserSig.set(response.user);
        this.router.navigateByUrl('/');
      });
  }
}
