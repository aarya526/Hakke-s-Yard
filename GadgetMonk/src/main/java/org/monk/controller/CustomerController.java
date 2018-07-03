package org.monk.controller;

import javax.validation.Valid;

import org.monk.dao.CustomerDao;
import org.monk.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
	public ModelAndView registerCustomer(@Valid @ModelAttribute(name="customer") Customer customer,BindingResult br){
		
		if(br.hasErrors()) {
			ModelAndView model = new ModelAndView("customer/registrationform");
			model.addObject("customer",customer);
			return model;
		}
		
		else if(!customerDao.isEmailUnique(customer.getUser().getEmail())){
			ModelAndView model = new ModelAndView("customer/registrationform");
			model.addObject("error","Email Id already Exists.. please enter different email address");
			return model;
		
		
		}
	   	customerDao.registerCustomer(customer);
	   	return new ModelAndView("redirect:/customer/login");
	}
	
}