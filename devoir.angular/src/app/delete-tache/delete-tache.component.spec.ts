import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DeleteTacheComponent } from './delete-tache.component';

describe('DeleteTacheComponent', () => {
  let component: DeleteTacheComponent;
  let fixture: ComponentFixture<DeleteTacheComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [DeleteTacheComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(DeleteTacheComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
