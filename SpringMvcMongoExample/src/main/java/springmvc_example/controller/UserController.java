package springmvc_example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import springmvc_example.model.User;
import springmvc_example.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("user/list");
		model.addObject("list",userService.listAllUsers());
		return model;
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView model = new ModelAndView("user/form");
		User user = new User();
		model.addObject("userForm",user);
		return model;
	}
	

	@RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") String id) {
		
		ModelAndView model = new ModelAndView("user/form");
		model.addObject("userForm",userService.findUserById(id));
		return model;
	}

	@RequestMapping(value = "/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("userForm") User user) {
		
		if(user.getId() == null && !user.getId().trim().equals("")) {
			userService.update(user);
		}
		else {
			userService.add(user);
		}
		return new ModelAndView("redirect:/user/list");
		
	}
	
	
	@RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") String id) {
		User user = userService.findUserById(id);
		userService.delete(user);
		return new ModelAndView("redirect:/user/list");
	}
	

}
