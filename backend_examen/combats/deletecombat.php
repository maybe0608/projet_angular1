import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';

@Component({
  selector: 'app-add-combat',
  templateUrl: './add-combat.component.html',
  styleUrls: ['./add-combat.component.css']
})
export class AddCombatComponent {
  combat = {
    nomCombat: '',
    // Ajoutez d'autres champs nécessaires pour le combat
  };

  constructor(private http: HttpClient) {}

  valider() {
    // Utilisez l'objet 'combat' au lieu de variables séparées
    this.http.get<any>(`http://localhost/chemin_vers_votre_dossier/addcombat.php?nomCombat=${this.combat.nomCombat}`)
      .subscribe(response => {
        console.log('response = ', response);
      });
  }
}
