package org.spring.catbienvivian.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.spring.catbienvivian.entity.Clothes;
import org.spring.catbienvivian.services.ClothesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired(required = true)
	@Qualifier("clothesService")
	private ClothesService clothesService;

	@GetMapping("/")
	public ModelAndView welcomePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("admin");
		return model;
	}

	@RequestMapping(value = { "/swimsuits" }, method = RequestMethod.GET)
	public ModelAndView listSwimSuits() {
		ModelAndView model = new ModelAndView("adminSwimSuit");
		List<Clothes> list = clothesService.getSwimSuits();
		model.addObject("swimsuits", list);
		return model;

	}

	@GetMapping("/deleteClothes/{clothesID}")
	public String deleteSwimSuit(@PathVariable("clothesID") String clothesID) {
		boolean result = clothesService.deleteClothes(clothesID);
		return "redirect:/admin/swimsuits";

	}

	@GetMapping("/addSwimSuit")
	public ModelAndView addSwimSuitView() {
		ModelAndView model = new ModelAndView();
		model.setViewName("adminAddSwimSuit");
		return model;
	}

	@RequestMapping(value = { "/addSwimSuit" }, method = RequestMethod.POST)
	public ModelAndView addSwimSuit(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView("adminSwimSuit");
		List<Clothes> list = clothesService.getSwimSuits();
		model.addObject("swimsuits", list);
		return model;

	}
}
