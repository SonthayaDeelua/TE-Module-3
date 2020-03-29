package com.techelevator.fbn.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.fbn.model.CheckingAccountApplication;

@Controller
@RequestMapping("/checkingApplication")
public class CheckingApplicationController {

	@RequestMapping(path = { "/", "/personalInformationInput" }, method = RequestMethod.GET)
	public String displayPersonalInformationInput() {
		return "checkingApplication/personalInformationInput";
	}

	@RequestMapping(path = "/thankYou", method = RequestMethod.GET)
	public String displayThankYou() {
		return "checkingApplication/thankYou";
	}
	
	@RequestMapping("/test")
	public String test(HttpSession session) {
		session.invalidate();
		return "checkingApplication/test";
	}
	

	
}
