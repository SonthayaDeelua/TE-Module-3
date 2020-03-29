package com.techelevator.fbn.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.fbn.model.MortgageLoanEstimate;

/* The @Controller annotation will make the Spring container aware
 * of this controller as a managed bean. Controllers in Spring Web
 * MVC are just plain old Java objects that are annotated to indicate
 * that they are an MVC controller
 *
 * The @Controller annotation indicates to the Spring framework
 * that this class should be treated as a controller
 *
 * The <component-scan> element in springmvc-servlet.xml causes
 * Spring to look at all of the classes in the package specified
 * and look for classes with this annotation. This controller will
 * be found during the Spring component scan during application
 * startup.
 *
 * Controllers (and pretty much everything else in Spring) can also be
 * configured using XML.  However, annotations have become the
 * suggested way of wiring together a Spring application. */
@Controller
public class PaymentCalculatorController {
	
	@RequestMapping("/mortgageCalculatorInput")
	
	public String showMortgageForm () {
		
		return "mortgageCalculatorInput";
	}
	
	@RequestMapping("/mortgageCalculatorResult")
	public String showResults(@RequestParam int loanTerm,
			                  @RequestParam BigDecimal rate, 
			                  @RequestParam BigDecimal loanAmount,
			                  ModelMap map) {
		
		System.out.println(loanTerm); //print out for test purpose only
		System.out.println(rate);
		System.out.println(loanAmount);
		
		
		MortgageLoanEstimate estimate = new MortgageLoanEstimate(loanAmount, loanTerm, rate);
		
		map.put("estimate", estimate);
		
		
		return "mortgageCalculatorResult";
		
	
	}	

}
