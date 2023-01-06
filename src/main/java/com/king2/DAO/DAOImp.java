package com.king2.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.king2.model.Eleve;
@Component
public class DAOImp implements IDAO {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addEleve(Eleve eleve) {
		hibernateTemplate.save(eleve);
		
	}

	public List<Eleve> getAllEleve() {
		return hibernateTemplate.loadAll(Eleve.class);
	}
	@Transactional
	public Eleve getEleveById(int id) {
		return hibernateTemplate.get(Eleve.class, id);

	}
	@Transactional
	public void deleteEleve(int id) {
		hibernateTemplate.delete(hibernateTemplate.get(Eleve.class, id));
		
	}
	@Transactional
	public void updateEleve(Eleve eleve) {
		hibernateTemplate.update(eleve);
		
	}

}
