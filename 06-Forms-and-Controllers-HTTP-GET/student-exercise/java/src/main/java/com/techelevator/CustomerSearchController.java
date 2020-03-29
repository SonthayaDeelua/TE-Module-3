package com.techelevator;

import com.techelevator.dao.CustomerDao;
import com.techelevator.dao.model.Customer;
import com.techelevator.dao.model.Film;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CustomerSearchController {

	@Autowired
	private CustomerDao customerDao;

	@RequestMapping("/customerSearch")
	public String showCustomerSearchForm() {
		return "customerList";
	}

	@RequestMapping("/processCustomerFormResults")
	public String searchFilms(@RequestParam String name, @RequestParam String sort, ModelMap map) {

		List<Customer> matchingCustomers = customerDao.searchAndSortCustomers(name, sort);
		System.out.println(matchingCustomers);

		map.put("customers", matchingCustomers);

		return "customerList";
	}
}