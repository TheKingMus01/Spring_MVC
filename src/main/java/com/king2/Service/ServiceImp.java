package com.king2.Service;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.king2.DAO.IDAO;
import com.king2.model.Eleve;

@Service
public class ServiceImp implements Iservice {
	@Autowired
	private IDAO dAOImp;
	@Transactional
	public void ajoute(Eleve eleve) {
		dAOImp.addEleve(eleve);
		
	}

	public List<Eleve> lister() {
		return dAOImp.getAllEleve();
	}
	@Transactional
	public Eleve getElevebyid(int id) {
		return dAOImp.getEleveById(id);
	}
	@Transactional
	public void update(Eleve eleve) {
		dAOImp.updateEleve(eleve);
	}
	@Transactional
	public void suprimer(int id) {
		dAOImp.deleteEleve(id);
		
	}

}
