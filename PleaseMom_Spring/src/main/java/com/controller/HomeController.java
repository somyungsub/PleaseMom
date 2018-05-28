package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(){
		return "home";
	}
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home2(){
		return "home";
	}
}
