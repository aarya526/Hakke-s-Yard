package org.monk.controller;

import java.util.List;

import org.monk.dao.ProductDao;
import org.monk.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = "/loginPage")
	public ModelAndView login(@RequestParam(value = "error",required = false) String error) {
		ModelAndView model = new ModelAndView("customer/login");
		if(error != null) {
			model.addObject("error","Invalid Credentials");
		}
		return model;
	}
	

	@RequestMapping(value = "/404")
	public ModelAndView accessDeniedPage() {
		ModelAndView model = new ModelAndView("webpages/404");
		return model;
	}
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value = "/gallery")
	public ModelAndView gallery() {
		ModelAndView model = new ModelAndView("webpages/Gallery");
		List <Product> list = productDao.listAllProducts();
		model.addObject("list",list);
		return model;
		
		}
	
	
	@RequestMapping(value = "/viewSingleProduct/{productId}")
	public ModelAndView viewSingleProduct(@PathVariable("productId") int productId) {
		
		ModelAndView model = new ModelAndView("webpages/ViewSingleProduct");
		
		Product product = productDao.findProductById(productId);
		model.addObject("product",product);
		return model;
		
	}
	

	@RequestMapping(value = "/home")
	public ModelAndView home() {
		ModelAndView model = new ModelAndView("webpages/index");
		return model;
	}
	
	@RequestMapping(value = "/ps4")
	public ModelAndView ps4() {
		ModelAndView model = new ModelAndView("webpages/PS4");
		return model;
	}
	
	@RequestMapping(value = "/ps4pro")
	public ModelAndView ps4pro() {
		ModelAndView model = new ModelAndView("webpages/PS4Pro");
		return model;
	}
	
	@RequestMapping(value = "/psvr")
	public ModelAndView psvr() {
		ModelAndView model = new ModelAndView("webpages/PSVR");
		return model;
	}
}
