package com.techelevator.fbn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // this called first annotation . import Spring work -1
public class HomeController {

	@RequestMapping({ "/home", "/" }) // 2nd put "/home" annotation -2 , 5 put {} make website automatic pop-up.
	public String displayHomePage() { // ---3 complaint cause request return
		return "homePage"; // 4 after put Sring in return everygthing OK. if run here. still need to put in
							// htttp
	}

}
