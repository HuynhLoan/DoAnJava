package vku.loanhuynh.senda.webmvc.service;

import vku.loanhuynh.senda.webmvc.model.Catalog;

import java.util.List;
public interface CategoryService {
	void insert(Catalog category);

	void edit(Catalog category);

	Catalog get(int id);
	
	Catalog get(String name);

	List<Catalog> getAll();

	void delete(String id);
	
	List<Catalog> getCateByProduct(int id);

}

