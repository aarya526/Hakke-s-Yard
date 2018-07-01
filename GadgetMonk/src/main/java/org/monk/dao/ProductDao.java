package org.monk.dao;
import java.util.List;

import org.monk.model.Product;

public interface ProductDao {

	public List<Product> listAllProducts();
	
	public void saveOrUpdate(Product product);
	
	public void delete(int id);
	
	public Product findProductById(int productId);
	
}
