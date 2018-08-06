package org.monk.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.monk.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory.getCurrentSession().getSessionFactory();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Category> listAllCategories() {
		
		Query query = sessionFactory.getCurrentSession().createQuery("from Category");
		return query.list();
	}

	public void deleteCategory(int id) {
		
		sessionFactory.getCurrentSession().createQuery("delete from Category as a where a.cid = :cid ").setInteger("cid", id).executeUpdate();
	}

	public Category findCategoryById(int id) {
	
	    Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, id);
		return category;
	}

	public void saveOrUpdate(Category category) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	
}
