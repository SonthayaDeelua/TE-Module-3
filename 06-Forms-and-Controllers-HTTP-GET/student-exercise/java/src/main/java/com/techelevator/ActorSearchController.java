package com.techelevator;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.techelevator.dao.ActorDao;
import com.techelevator.dao.model.Actor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ActorSearchController {

	@Autowired
	private ActorDao actorDao;

	@RequestMapping("/actorSearch")
	public String showSearchActorForm() {
	    return "actorList";
	}


	@RequestMapping("/actorFormResults")
	public String searchActors(@RequestParam String search, ModelMap map) {
	    System.out.println(search);
	     List<Actor> matchingActors = actorDao.getMatchingActors(search);
	     map.put("actors", matchingActors);
	    return "actorList";
	}
 
}

