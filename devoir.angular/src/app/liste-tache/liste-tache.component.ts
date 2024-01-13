import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
@Component({
  selector: 'app-liste-tache',
  standalone: true,
  imports: [RouterModule],
  templateUrl: './liste-tache.component.html',
  styleUrl: './liste-tache.component.css'
})
export class ListeTacheComponent {

  les_taches : any =[]

 constructor(){
  
 }
 

}
