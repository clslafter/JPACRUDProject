package com.skilldistillery.libertarianbusinesses.controllers;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.libertarianbusinesses.data.LibertarianBusinessesDAO;
import com.skilldistillery.libertarianbusinesses.entities.Business;

@Controller
public class LibertarianBusinessesController {
	
	@Autowired
	private LibertarianBusinessesDAO lbDao;
	
	@RequestMapping(path = {"/", "index.do"})
	public String index(Model model) {
		model.addAttribute("bizList", lbDao.findAll());
		return "index";
	}
	
	@RequestMapping(path="getBiz.do")
	public String showBiz(Integer bizId, Model model) {
		Business biz = lbDao.findById(bizId);
		model.addAttribute("biz", biz);
		return "biz/show";
	}
	
	@RequestMapping(path="addBizForm.do")
	public String addBizForm(Model model, Business biz) {
		return "biz/addBiz";
	}
	
	@RequestMapping(path = "modOrDelForm.do", method = RequestMethod.GET)
	public String modify(int bizId, Model model){
		Business biz = new Business();
		biz = lbDao.findById(bizId);
		model.addAttribute("biz", biz);
		return "biz/modOrDel";
	}
	
	@RequestMapping(path = "addBiz.do", method = RequestMethod.POST)
	public String addBiz (Business biz, Model model, RedirectAttributes redir) {
		
		redir.addFlashAttribute("biz", lbDao.create(biz));
		return "redirect:bizAdded.do";
	}
	
	@RequestMapping(path = "bizAdded.do", method = RequestMethod.GET)
	public String redirectAdd(Business biz) {
		return "biz/bizAddConf";
	}
	
	@RequestMapping(path = "modBiz.do", method = RequestMethod.POST)
	public String modifyBiz(Business biz, Model model, RedirectAttributes redir){
		redir.addFlashAttribute("biz", lbDao.update(biz.getId(), biz));
		return "redirect:bizModConf.do";
	}
	
	@RequestMapping(path = "bizModConf.do", method = RequestMethod.GET)
	public String redirectMod(Business biz) {
		return "biz/bizModConf";
	}
	
	@RequestMapping(path = "deleteBiz.do", method = RequestMethod.POST)
	public String deleteBiz(int id, RedirectAttributes redir, Model model){
		boolean deleteTest = lbDao.deleteById(id);
		redir.addFlashAttribute("deleteTest", deleteTest);
		return "redirect:bizDelConf.do";
	}
	
	@RequestMapping(path = "bizDelConf.do", method = RequestMethod.GET)
	public String redirectDel(Business biz) {
		return "biz/bizDelConf";
	}
	

}
