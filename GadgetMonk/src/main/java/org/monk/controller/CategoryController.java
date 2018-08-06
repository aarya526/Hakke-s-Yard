package org.monk.controller;

import java.util.List;

import org.monk.dao.CategoryDao;
import org.monk.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao categoryDao; 
	
	
	@RequestMapping(value = "/admin/category/list",method = RequestMethod.GET)
	public ModelAndView listCategory() {
		
		ModelAndView model = new ModelAndView("category/categoryList");
		List <Category> category = categoryDao.listAllCategories();
		model.addObject("list",category);
		return model;
	}
	
	@RequestMapping(value = "/admin/category/delete/{cid}",method = RequestMethod.GET)
	public ModelAndView deleteCategory(@PathVariable("cid") int id) {
		
		categoryDao.deleteCategory(id);
		return new ModelAndView("redirect:/admin/category/list");
		
	}
	
	@RequestMapping(value = "/admin/category/add",method = RequestMethod.GET)
	public ModelAndView addCategory() {
		
		ModelAndView model = new ModelAndView("category/categoryForm");
		Category category = new Category();
		model.addObject("categoryForm",category);
		return model;
	}
	
	@RequestMapping(value = "/admin/category/save",method = RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute("categoryForm") Category category) {
		
		categoryDao.saveOrUpdate(category);
		return new ModelAndView("redirect:/admin/category/list");
	}
	
}
