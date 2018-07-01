package org.monk.controller;

import org.monk.dao.CustomerDao;
import org.monk.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {
	@Autowired
    private CustomerDao customerDao;
	@RequestMapping(value="/all/register")
	public ModelAndView getRegistrationForm(){
		return new ModelAndView("customer/registrationform","customer",new Customer());
	}
	@RequestMapping(value="/save")
	public String registerCustomer(@ModelAttribute(name="customer") Customer customer,Model model){
		if(!customerDao.isEmailUnique(customer.getUser().getEmail())){
			model.addAttribute("error","Email Id already Exists.. please enter different email address");
			return "customer/registrationform";
		}
	   	customerDao.registerCustomer(customer);
	   	return "customer/login";
	}
	
}