package com.skilldistillery.jpacrud.contollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.HikeDAO;
import com.skilldistillery.jpacrud.entities.Hike;


@Controller
public class HikeController {
	
	@Autowired
	private HikeDAO hikeDAO;
	
	@RequestMapping(path="/")
	public String index(Model model) {
//	List<Hike> hikeList =
		return "index";
	}
	
	@RequestMapping(path="getHike.do")
	public String getHike(Integer id, Model model) {
		Hike hike = hikeDAO.findById(id);
		model.addAttribute("hike", hike);
		return "hike/show";
	}

}
