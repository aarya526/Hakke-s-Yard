package org.monk.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.monk.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory.getCurrentSession().getSessionFactory();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	@SuppressWarnings("unchecked")
	public List<Product> listAllProducts() {
		
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public void saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}

	public void delete(int productId) {
		sessionFactory.getCurrentSession().createQuery("delete from Product as a where a.productId = :id").setInteger("id", productId).executeUpdate();
		
	}

	public Product findProductById(int productId) {
		Product product = (Product) sessionFactory.getCurrentSession().get(Product.class, productId);
		return product;
				
	}

	
	
	
}
