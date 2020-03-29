package com.techelevator.validation.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.validation.model.Login;
import com.techelevator.validation.model.Registration;

@Controller
public class UserController {
	// GET: /
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String getMainScreen() {
		return "homePage";
	}

	// Add the following Controller Actions

	// GET: /register
	// Return the empty registration view
	@RequestMapping (path ="/register", method=RequestMethod.GET)
	
	public String userInput(ModelMap model) {
	if(!model.containsAttribute("input")) {
		model.addAttribute("input" , new Registration());
		
	
	}
		return "newUserInput";
	}
	// POST: /register
	// Validate the model and redirect to confirmation (if successful) or return
	// the
	// registration view (if validation fails)
	
	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String processRegister(@Valid @ModelAttribute  Registration input, BindingResult result,
			RedirectAttributes flash) {

		flash.addFlashAttribute("register", input);

		if (result.hasErrors()) {
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "register", result);
			return "redirect:/register";
		}
		// This is where things happen for the register
	
		return "redirect:/registerSuccess";
	}
	
	
	
	

	// GET: /login
	// Return the empty login view
	
		@RequestMapping (path ="/login", method=RequestMethod.GET)		
		public String loginForm (ModelMap modelLogin) {
		if(!modelLogin.containsAttribute("newLogin")) {
			modelLogin.addAttribute("newLogin" , new Login());
	
	
		}
		
		return "inputLogin";
	
		}

	// POST: /login
	// Validate the model and redirect to a confirmation page if validation is
	// successful. Return the login view (if validation fails).
		
		@RequestMapping(path = "/login", method = RequestMethod.POST)
		public String processRegister(@Valid @ModelAttribute Login newLogin, BindingResult result,
				RedirectAttributes flash) {

			flash.addFlashAttribute("login", newLogin);

			if (result.hasErrors()) {
				flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "login", result);
				return "redirect:/login";
			}
			// This is where things happen for the register
		
			return "redirect:/loginSuccess";
		}
		
		
		
		
		

	// GET: /confirmation
	// Return the confirmation for registration view
		@RequestMapping(path = "/registerSuccess", method = RequestMethod.GET)
		public String showRegisterSuccess() {
			return "registerSuccess";
		}
		
		// Return the confirmation for login view
				@RequestMapping(path = "/loginSuccess", method = RequestMethod.GET)
				public String showloginSuccess() {
					return "loginSuccess";
				}
		
		
		

}
