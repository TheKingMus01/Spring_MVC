package com.king2.Service;

import java.util.List;

import com.king2.model.Eleve;

public interface Iservice {
	public void ajoute(Eleve eleve);
	public List<Eleve> lister();
	public Eleve getElevebyid(int id);
	public void update(Eleve eleve);
	public void suprimer(int id);
}
