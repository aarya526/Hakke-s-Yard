package org.monk.dao;

import java.util.List;

import org.monk.model.CartItem;
import org.monk.model.CustomerOrder;
import org.monk.model.User;

import org.monk.model.CartItem;
public interface CartItemDao {

	public User getUser(String email);
	
	public void saveOrUpdateCartItem(CartItem cartItem);
	
	public List<CartItem> getCartItems(String email);
	
	public void removeCartItem(int itemId);
	
	public CustomerOrder createCustomerOrder(CustomerOrder customerOrder);
}
