package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotifyController {
	
	@RequestMapping("/refresh")
	public String notifyStart(){
		return "event/event";
	}
}
