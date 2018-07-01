package org.monk.dao;

import org.monk.model.Customer;

public interface CustomerDao {

	public void registerCustomer(Customer customer);
	
	public boolean isEmailUnique(String email);
}
