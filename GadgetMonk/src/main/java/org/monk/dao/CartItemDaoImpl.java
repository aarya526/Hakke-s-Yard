package org.monk.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.monk.model.CartItem;
import org.monk.model.CustomerOrder;
import org.monk.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao
{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	
	public User getUser(String email) {
	
		User user = (User) getSession().get(User.class, email);
		return user;
	}

	
	public void saveOrUpdateCartItem(CartItem cartItem) {
		
		getSession().saveOrUpdate(cartItem);
		
	}


	@SuppressWarnings("unchecked")
	public List<CartItem> getCartItems(String email) {
		Query query = getSession().createQuery("from CartItem where user.email = ?");
		query.setString(0, email);
		List <CartItem> cartItems = query.list();
		return cartItems;
	}


	public void removeCartItem(int itemId) {

		CartItem cartItem = (CartItem) getSession().get(CartItem.class, itemId);
		getSession().delete(cartItem);
	}


	public CustomerOrder createCustomerOrder(CustomerOrder customerOrder) {
	
		 getSession().save(customerOrder);
		 return customerOrder;
	}




}
