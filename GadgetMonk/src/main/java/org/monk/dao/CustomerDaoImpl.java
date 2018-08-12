package org.monk.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.monk.model.Authorities;
import org.monk.model.Customer;
import org.monk.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private SessionFactory sessionFactory;
	
		public void registerCustomer(Customer customer) {
			Session session=sessionFactory.getCurrentSession();
			
			customer.getUser().setEnabled(true);//user.enabled=true
			
			Authorities authorities=new Authorities();
		    authorities.setRole("ROLE_USER");
		    authorities.setUser(customer.getUser());//authorities-> user   authorities.user=customer.user
			
		    customer.getUser().setAuthorities(authorities);//user->authorities user.authorities=authorities
		    
			session.save(customer);
			//customer refers to user,billingaddress,shippingaddress

		}
		public boolean isEmailUnique(String email) {
			Session session=sessionFactory.getCurrentSession();
	        User user=(User)session.get(User.class, email);
	        if(user==null)
	        	return true;//unique
	        else
	        	return false;//duplicate email id
		}
	
}
