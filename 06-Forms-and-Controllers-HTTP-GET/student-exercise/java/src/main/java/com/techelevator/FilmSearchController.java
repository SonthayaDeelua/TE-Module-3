package com.techelevator;

import com.techelevator.dao.FilmDao;
import com.techelevator.dao.model.Film;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 
 * FilmSearchController
 */
@Controller
public class FilmSearchController {

	@Autowired
	FilmDao filmDao;

	@RequestMapping("/filmSearch")
	public String showFilmSearchForm() {
		return "filmList";
	}

	@RequestMapping("/processFilmFormResults")
	public String searchFilms(@RequestParam String genre,
			@RequestParam(required = false, defaultValue = "0") int minLength,
			@RequestParam(required = false, defaultValue = "300") int maxLength, ModelMap map) {

		List<Film> matchingFilms = filmDao.getFilmsBetween(genre, minLength, maxLength);

		map.put("films", matchingFilms);

		return "filmList";
	}
}