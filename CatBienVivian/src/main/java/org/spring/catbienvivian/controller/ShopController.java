package org.spring.catbienvivian.controller;

import java.util.List;

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
@RequestMapping("/shop")
public class ShopController {
	@Autowired(required = true)
	@Qualifier("clothesService")
	private ClothesService clothesService;

	@RequestMapping(value = "/femaleSwimsuit", method = RequestMethod.GET)
	public ModelAndView femaleSwimsuitPage() {
		ModelAndView model = new ModelAndView();
		List<Clothes> listFemaleSwimSuit = clothesService.getFemaleSwimSuit();
		model.addObject("femaleSwimSuits", listFemaleSwimSuit);
		model.addObject("countSwimSuits", listFemaleSwimSuit.size());
		model.setViewName("femaleSwimSuit");
		return model;

	}

	@RequestMapping(value = "/maleSwimsuit", method = RequestMethod.GET)
	public ModelAndView maleSwimsuitPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;

	}

	@RequestMapping(value = "/childrenSwimsuit", method = RequestMethod.GET)
	public ModelAndView childrenSwimsuitPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;

	}

	@RequestMapping(value = "/aerobic", method = RequestMethod.GET)
	public ModelAndView aerobicPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;

	}

	@RequestMapping(value = "/cheerlead", method = RequestMethod.GET)
	public ModelAndView cheerleaderPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;

	}
	
	@GetMapping("/detail/{clothesID}")
	public ModelAndView getEditDecorationForm(@PathVariable("clothesID") String clothesID) {
		ModelAndView model = new ModelAndView("detailClothes");
		Clothes clothes = clothesService.getClothesById(clothesID);
		model.addObject("clothes", clothes);
		model.addObject("images", clothes.getClothesImages());
		System.out.println("asd");
		return model;
	}
}
