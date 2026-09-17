package com.pg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StartController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView root() {
		return new ModelAndView("pages/template/index");
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("pages/template/index");
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView about() {
		return new ModelAndView("pages/template/about");
	}
	
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public ModelAndView service() {
		return new ModelAndView("pages/template/service");
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		return new ModelAndView("pages/template/contact");
	}
	
}
