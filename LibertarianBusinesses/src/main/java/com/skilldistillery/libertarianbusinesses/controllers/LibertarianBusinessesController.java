package com.skilldistillery.libertarianbusinesses.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.libertarianbusinesses.data.LibertarianBusinessesDAO;

@Controller
public class LibertarianBusinessesController {
	
	@Autowired
	private LibertarianBusinessesDAO lbDao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("bizList", lbDao.findAll());
		return "index";
	}

}
