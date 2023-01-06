package com.king2.DAO;

import java.util.List;

import com.king2.model.Eleve;

public interface IDAO {
	public void addEleve(Eleve eleve);
	public List<Eleve> getAllEleve();
	public Eleve getEleveById(int id);
	public void deleteEleve(int id);
	public void updateEleve(Eleve eleve);
}
