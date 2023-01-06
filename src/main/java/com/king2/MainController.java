package com.king2;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.king2.DAO.DAOImp;
import com.king2.Service.Iservice;
import com.king2.model.Eleve;

@Controller
public class MainController {
	@Autowired
	Iservice serv;
	
	@RequestMapping("/index")
	public String Home() {
		return "index";
	}
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public String addEleve() {
			return "FormADD";
	}

	@PostMapping("/insert")
	public String insertschool(@ModelAttribute Eleve elve) {
		serv.ajoute(elve);
		return "redirect:/show";
	}
	
	@GetMapping("/show")
	public 	ModelAndView showsEleves() {
		ModelAndView m= new ModelAndView();
		List<Eleve> listS = serv.lister();
		for(Eleve s:listS)	
		System.out.println(s);
		m.addObject("eleves",serv.lister());
		m.setViewName("eleves");
		return m;
	}
	
	@GetMapping("/delete/{id}")
	public String deleteEleve(@PathVariable int id) {
		serv.suprimer(id);
		return "redirect:/show";
	}
	
	@GetMapping("edit/{id}")
	public ModelAndView editEleve(@PathVariable(value = "id" ) int id) {
		
		ModelAndView m= new ModelAndView();
		m.addObject("eleve",serv.getElevebyid(id));
		m.setViewName("FormEdit");
		return m;
		
	}
	
	@PostMapping("/edit/update")
	public String upgradeEleve(@ModelAttribute Eleve eleve) {
		serv.update(eleve);
		return "redirect:/show";
	}
	}
