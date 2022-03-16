package vku.loanhuynh.senda.webmvc.dao; 
 
import java.util.List;

import vku.loanhuynh.senda.webmvc.model.Admin; 
 
public interface AdminDao { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 
	
	void delete(String id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 
	
} 
