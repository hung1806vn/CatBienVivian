package org.spring.catbienvivian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/swimsuit")
public class SwimSuitController {
	@RequestMapping(value = { "/female" }, method = RequestMethod.GET)
	public ModelAndView femaleSwimSuitPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("femaleSwimSuitList");
		return model;

	}
}
