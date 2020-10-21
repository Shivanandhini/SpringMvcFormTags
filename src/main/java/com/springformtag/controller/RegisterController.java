package com.springformtag.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springformtag.model.UserRegisterFormDTO;

@Controller
public class RegisterController {

	@RequestMapping("/")
	public String showHomePage(@ModelAttribute("userregisterdto") UserRegisterFormDTO userregisterdto) {
		return "Home_Page";
	}

	@RequestMapping("/Process_form")
	public String processFormPage(@ModelAttribute("userregisterdto") UserRegisterFormDTO userregisterdto) {
		return "Result_Page";

	}
}
