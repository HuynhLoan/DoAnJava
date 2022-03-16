package vku.loanhuynh.senda.webmvc.dao;

import java.util.List;

import vku.loanhuynh.senda.webmvc.model.Ordered;

public interface OrderedDao {
	void insert(Ordered ordered); 
	 
	void edit(Ordered ordered); 
	
	void delete(String id); 
 
	Ordered get(int id); 
	 
	Ordered get(String name); 
 
	List<Ordered> getAll();
}
