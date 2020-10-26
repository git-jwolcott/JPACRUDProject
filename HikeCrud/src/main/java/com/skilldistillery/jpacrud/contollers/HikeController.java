package com.skilldistillery.jpacrud.contollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.HikeDAO;
import com.skilldistillery.jpacrud.entities.Hike;


@Controller
public class HikeController {
	
	@Autowired
	private HikeDAO hikeDAO;
	
	@RequestMapping(path="/")
	public String index(Model model) {
	List<Hike> hikeList = hikeDAO.findAll();
	model.addAttribute("hikes", hikeList);
		return "index";
	}
	
	@RequestMapping(path="getHike.do")
	public String getHike(Integer id, Model model) {
		Hike hike = hikeDAO.findById(id);
		model.addAttribute("hike", hike);
		return "hike/show";
	}
	@RequestMapping(path="showCreateForm.do")
	public String newHike() {
		return "hike/newhike";
	}
	
	@RequestMapping(path="createHike.do")
	public String createHike(Model model, Hike hike) {
		Hike newHike = hikeDAO.create(hike);
		model.addAttribute("hike", newHike);
		return "hike/show";
	}
	
	@RequestMapping(path="showEditHike.do")
	public String showEditForm(Model model, Integer id) {
		System.out.println("updateMethod");
		Hike h = hikeDAO.findById(id);
		model.addAttribute("hike", h);
		return "hike/update";
	}
	
	@RequestMapping(path="updateHike.do")
	public String updateHike(Model model, Hike hike, Integer id) {
		Hike hikeToUpdate = hikeDAO.update(id, hike);
		model.addAttribute("hike", hikeToUpdate);
		return "hike/show";
	}
	
	@RequestMapping(path="deleteHike.do")
	public ModelAndView deleteHike(Integer id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		Boolean hikeWasDeleted = hikeDAO.delete(id);
		if(hikeWasDeleted) {
		return mv;
	}
		else {
			mv.setViewName("hike/nodelete");
			return mv;
		}
	}
}
