import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { response } from 'express';


@Component({
  selector: 'app-add-tache',
  standalone: true,
  imports: [FormsModule,HttpClientModule],
  templateUrl: './add-tache.component.html',
  styleUrl: './add-tache.component.css'
})
export class AddTacheComponent {
 tache:{titre:string, contenu:string, realise:string}={
  titre :"",
  contenu :"",
  realise :""}

titre:string=""
contenu:string=""
realise:boolean=true

constructor (private http:HttpClient){

}
valider (){
  console.log("tache =", this.tache)
  this.http.get("http:/localhost/uahb/add.php?titre"+this.tache.titre+"&contenu"+this.contenu+"&realise"+this.tache.realise)
  .subscribe((response:any)=>{
    console.log("response= ",response)
  })
}
}

