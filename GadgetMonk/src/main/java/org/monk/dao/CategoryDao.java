package org.monk.dao;

import java.util.List;

import org.monk.model.Category;

public interface CategoryDao {

	public List<Category> listAllCategories();
	
	public void deleteCategory(int id);
	
	public Category findCategoryById(int id);
	
	public void saveOrUpdate(Category category);
	
}
