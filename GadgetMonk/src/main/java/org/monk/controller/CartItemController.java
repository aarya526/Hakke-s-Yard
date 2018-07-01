package org.monk.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.monk.dao.CartItemDao;
import org.monk.dao.ProductDao;
import org.monk.model.CartItem;
import org.monk.model.Customer;
import org.monk.model.CustomerOrder;
import org.monk.model.Product;
import org.monk.model.ShippingAddress;
import org.monk.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CartItemController {

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CartItemDao cartItemDao;
	
	@RequestMapping(value = "/cart/addToCart/{productId}")
	public String addToCart(@PathVariable int productId,@RequestParam int requestedQuantity,@AuthenticationPrincipal Principal principal) {
		
		String email = principal.getName();// EMail id of the logged in user
		
		List<CartItem> cartItems = cartItemDao.getCartItems(email);
		
		Product product = productDao.findProductById(productId);
		
		for(CartItem cartItem : cartItems) {
			
			if(cartItem.getProduct().getProductId() == productId) {
				cartItem.setQuantity(requestedQuantity);
				cartItem.setTotalPrice(requestedQuantity * product.getPrice());
				
				cartItemDao.saveOrUpdateCartItem(cartItem);//update
				return "redirect:/cart/purchaseDetails";
			}
		}
		
		CartItem cartItem = new CartItem();
		
		User user = cartItemDao.getUser(email);
		
		cartItem.setProduct(product);
		cartItem.setQuantity(requestedQuantity);
		cartItem.setUser(user);
		cartItem.setTotalPrice(requestedQuantity*product.getPrice());
		cartItemDao.saveOrUpdateCartItem(cartItem);//insert
		return "redirect:/cart/purchaseDetails";
		
	}
	
	@RequestMapping(value = "/cart/purchaseDetails")
	public String getPurchaseDetails(@AuthenticationPrincipal Principal principal, Model model,HttpSession session) {
		
		String email = principal.getName();
		List <CartItem> cartItems = cartItemDao.getCartItems(email);
		model.addAttribute("cartItems",cartItems);
		session.setAttribute("cartSize", cartItems.size());
		return "cart/cart";
		
	}
	
	
	@RequestMapping(value = "/cart/deletecartitem/{itemId}")
	public String removeItem(@PathVariable("itemId") int itemId) {
		
		cartItemDao.removeCartItem(itemId);
		return "redirect:/cart/purchaseDetails";
	}
	
	@RequestMapping(value = "/cart/clearcart")
	public String clearCart(@AuthenticationPrincipal Principal principal) {
		
		String email = principal.getName();
		List<CartItem> cartItems = cartItemDao.getCartItems(email);
		for(CartItem cartItem : cartItems) {
			cartItemDao.removeCartItem(cartItem.getItemId());
		}
		return "redirect:/cart/purchaseDetails";
	}
	
	@RequestMapping(value = "/cart/shippingaddress")
	public String getShippingAddress(@AuthenticationPrincipal Principal principal,Model model) {
		String email = principal.getName();
		User user = cartItemDao.getUser(email);
		Customer customer = user.getCustomer();
		ShippingAddress shippingAddress=customer.getShippingaddress();
		model.addAttribute("shippingaddress",shippingAddress);
		return "cart/shippingaddress";
	}
	
	
	@RequestMapping(value = "/cart/createorder")
	public String createOrder(@ModelAttribute ShippingAddress shippingAddress,@AuthenticationPrincipal Principal principal,Model model,HttpSession session) {
		
		String email = principal.getName();
		User user = cartItemDao.getUser(email);
		Customer customer = user.getCustomer();
		customer.setShippingaddress(shippingAddress);
		user.setCustomer(customer);
		
		List<CartItem> cartItems = cartItemDao.getCartItems(email);
		
		for(CartItem cartItem : cartItems) {
			
			Product product = cartItem.getProduct();
			if((product.getQuantity()-cartItem.getQuantity())<0) {
				cartItemDao.removeCartItem(cartItem.getItemId());
				model.addAttribute("productNA",product);
				return "cart/productnotavailable";
			}
		}
		
		//Calculate grandTotal

		double grandTotal=0;
		for(CartItem cartItem:cartItems){//for(T o:collection)
		
			grandTotal=grandTotal+cartItem.getTotalPrice();
		
		}

		//create CustomerOrder object
		CustomerOrder customerOrder=new CustomerOrder();
		customerOrder.setPurchaseDate(new Date());
		customerOrder.setUser(user);//customerOrder -> user -> customer -> shippingaddress
		customerOrder.setGrandTotal(grandTotal);
		if(cartItems.size()>0)
		customerOrder=cartItemDao.createCustomerOrder(customerOrder);


		//Remove all cartitems from the cartItem table
		//decrement the quantity of the product
		//add customerorder and List<CartItem> to an model attributes and return "orderdetails"

		for(CartItem cartItem:cartItems){
			
		Product product=cartItem.getProduct();
		product.setQuantity(product.getQuantity() - cartItem.getQuantity());//decrement the product quantity
		productDao.saveOrUpdate(product);//update product set quantity=7 where id=38
		cartItemDao.removeCartItem(cartItem.getItemId());
		
		}
		model.addAttribute("customerorder",customerOrder);//order=[orderId,purchaseDate,grandTotal,User]
		model.addAttribute("cartItems",cartItems);
		session.setAttribute("cartSize", 0);
		return "cart/orderdetails";
		
	}
		

	
}
	






