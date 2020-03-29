package com.techelevator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.model.Survey;
import com.techelevator.model.SurveyDAO;

@Controller
public class SurveyController {

	@Autowired
	private SurveyDAO surveyDao;
	
	
	@RequestMapping(path = "/surveyInput", method = RequestMethod.GET)
	public String showSurveyInput() {
		return "surveyInput";
	}

	@RequestMapping(path = "/surveyInput", method = RequestMethod.POST)
	public String processSurveyInput (Survey survey) {
		
		surveyDao.save(survey);
		
		return "redirect:/surveyResult";
	}
	
	//This one need to create database first and put data that receive from user 
	//and save it to database. and because of POST controller above then create the GET below and not allow data
	//to repeat the same data into the database 
	@RequestMapping(path ="/surveyResult" , method  = RequestMethod.GET)
	public String showSurveyResult(ModelMap map) {
		Survey survey = surveyDao.getSurvey();
		map.addAttribute("survey", survey); // 
		return "surveyResult";
	}
}
