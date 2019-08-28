package com.cg.springbootdemoapplication.myspringbootapp.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SpringController {

	@RequestMapping("/")
	public String home() {
		return "My springboot application is using devtools in my project";
	}
}
