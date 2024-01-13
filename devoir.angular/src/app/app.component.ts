import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, RouterOutlet } from '@angular/router';
import { AddTacheComponent } from "./add-tache/add-tache.component";
import { EditTacheComponent } from "./edit-tache/edit-tache.component";
import { ListeTacheComponent } from "./liste-tache/liste-tache.component";
import { DeleteTacheComponent } from "./delete-tache/delete-tache.component";

@Component({
    selector: 'app-root',
    standalone: true,
    templateUrl: './app.component.html',
    styleUrl: './app.component.css',
    imports: [CommonModule, RouterOutlet, AddTacheComponent, EditTacheComponent, ListeTacheComponent, DeleteTacheComponent,RouterModule]
})
export class AppComponent {
  title = 'devoir.angular';
}
