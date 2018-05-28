package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindInfoController {

	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/FindPasswdFormServlet")
	public String findPasswdForm(){
		return "findPasswdForm";
	}
	
	@RequestMapping("/FindPasswdSuccessFormServlet")
	public String findPasswdSuccessForm(){
		return "findPasswdSuccessForm";
	}
}
