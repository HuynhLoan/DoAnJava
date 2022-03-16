package vku.loanhuynh.senda.webmvc.service.impl;


import java.util.List;

import vku.loanhuynh.senda.webmvc.dao.UserDao;
import vku.loanhuynh.senda.webmvc.dao.impl.UserDaoImpl;
import vku.loanhuynh.senda.webmvc.model.User;
import vku.loanhuynh.senda.webmvc.service.UserService;

public class UserServicesImpl implements UserService {
	UserDao userDao = new UserDaoImpl();
	
	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void edit(User newUser) {
		User oldUSer = userDao.get(newUser.getId());
		oldUSer.setName(newUser.getName());
		oldUSer.setEmail(newUser.getEmail());
		oldUSer.setPhone(newUser.getPhone());
		oldUSer.setUsername(newUser.getUsername());
		oldUSer.setPassword(newUser.getPassword());
		oldUSer.setCreated(newUser.getCreated());
		userDao.edit(oldUSer);

	}

	@Override
	public List<User> getAll() {
		return userDao.getAll();
	}

	@Override
	public void delete(int id) {
		userDao.delete(id);
		
	}

	@Override
	public User get(int id) {
		return userDao.get(id);
	}

	@Override
	public User get(String name) {
		// TODO Auto-generated method stub
		return null;
	}


}