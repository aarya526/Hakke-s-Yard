package org.monk.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.monk.dao.ProductDao;
import org.monk.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value = "/admin/product/list",method = RequestMethod.GET)
	public ModelAndView listProduct() {
		ModelAndView model = new ModelAndView("product/ProductList");
		List <Product> list = productDao.listAllProducts();
		model.addObject("list",list);
		return model;
	}
	
	@RequestMapping(value = "/admin/product/update/{productId}",method = RequestMethod.GET)
	public ModelAndView updateProduct(@PathVariable("productId") int id) {
		
		ModelAndView model = new ModelAndView("product/ProductForm");
		Product product = productDao.findProductById(id);
		model.addObject("productForm",product);
		return model;
		
	}
	
	@RequestMapping(value = "/admin/product/delete/{productId}",method = RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable("productId") int id) {
		productDao.delete(id);
		return new ModelAndView("redirect:/admin/product/list");
	}
	
	
	
	@RequestMapping(value = "/admin/product/add",method = RequestMethod.GET)
	public ModelAndView addProduct() {
		ModelAndView model = new ModelAndView("product/ProductForm");
		Product product = new Product();
		model.addObject("productForm",product);
		return model;
	}
	
	
	@RequestMapping(value = "/admin/product/save", method=RequestMethod.POST)
	public ModelAndView saveProduct( @Valid @ModelAttribute("productForm") Product product,BindingResult br, HttpSession session) throws IOException{
		
		/*MultipartFile multipartFile = product.get File();*/
		if(br.hasErrors()) {
			ModelAndView model=new ModelAndView("product/ProductForm");
			model.addObject("productForm",product);
			return model;
		}
		

		productDao.saveOrUpdate(product);
		
		ServletContext context=session.getServletContext();
		String path = context.getRealPath("/");
		
		System.out.println("Path:" + path);
		
		File file = new File(path +"/WEB-INF/resources/images/"+product.getProductId()+".jpg");
		try {
			byte arr[]=  product.getFile().getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(file));
			bout.write(arr);
			bout.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		//bout.close();
		product.setImageUrl("images/"+product.getProductId()+".jpg");
		System.out.println("Path  = "+path);
		System.out.println("File = "+file);
		System.out.println("URL = "+product.getImageUrl());
		
		productDao.saveOrUpdate(product);
		
		
		 return new ModelAndView("redirect:/admin/product/list");
	}

}
