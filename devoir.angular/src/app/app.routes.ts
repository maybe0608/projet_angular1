import { Routes } from '@angular/router';
import { AddTacheComponent } from './add-tache/add-tache.component';
import { EditTacheComponent } from './edit-tache/edit-tache.component';
import { ListeTacheComponent } from './liste-tache/liste-tache.component';
import { DeleteTacheComponent } from './delete-tache/delete-tache.component';


export const routes: Routes = [
    { path :"",pathMatch:"full",redirectTo:"tache"},
    { path :"tache/ajouter",component:AddTacheComponent},
    { path :"tache/modifier",component:EditTacheComponent},
    { path :"tache",component:ListeTacheComponent},
    { path :"tache/supprimer",component:DeleteTacheComponent}

];
