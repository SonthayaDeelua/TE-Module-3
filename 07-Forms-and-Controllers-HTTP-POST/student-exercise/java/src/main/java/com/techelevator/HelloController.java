package com.techelevator;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Review;
import com.techelevator.model.ReviewDao;



@Controller
public class HelloController {
	
	
	@Autowired
	private ReviewDao reviewDao;

	@RequestMapping(path= "/reviewBook", method=RequestMethod.GET)
	public String displayGreeting(HttpSession session, ModelMap map) {
		List<Review> reviewList = reviewDao.getAllReviews();
		map.put("reviews", reviewList);
		
		return "reviewBook";
		//this one will pull on information from SQL file to show on reviewBook
	}
	
	@RequestMapping(path="/greeting", method = RequestMethod.GET)
	public String reviewDisplay() {
		return "greeting";	//bring link from reviewBook into greeting file for new post
}
	@RequestMapping(path="/reviewBook", method = RequestMethod.POST)
	public String processReview(@RequestParam String username,
								@RequestParam int rating,
								@RequestParam String title,
								@RequestParam String text) {
		
		Review review = new Review();
		review.setUsername(username);
		review.setRating(rating);
		review.setTitle(title);
		review.setText(text);
		review.setDateSubmitted(LocalDateTime.now());
		reviewDao.save(review);
		
		//this one will show new review into reviewBook file
		return "redirect:/reviewBook";
	}
	
}

