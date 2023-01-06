package com.king2.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Eleve {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name,prenom;
	public Eleve() {
		super();
	}
	public Eleve(int id, String name, String prenom) {
		super();
		this.id = id;
		this.name = name;
		this.prenom = prenom;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	@Override
	public String toString() {
		return "Eleve [id=" + id + ", name=" + name + ", prenom=" + prenom + "]";
	}
	
}
