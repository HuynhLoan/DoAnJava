package vku.loanhuynh.senda.webmvc.service;

import vku.loanhuynh.senda.webmvc.model.Product;
import java.util.List;
public interface ProductService {
	void insert(Product product);

	void edit(Product product);

	void delete(String id);

	Product get(int id);
	
	Product get(String name);

	List<Product> getAll();
	
	List<Product> getProductById(int id);

	List<Product> searchByName(String productName);

	List<Product> getProductByIdCate(int idCate);

}

