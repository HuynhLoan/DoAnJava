package vku.loanhuynh.senda.webmvc.service.impl;

import java.util.List;

import vku.loanhuynh.senda.webmvc.dao.ReviewDao;
import vku.loanhuynh.senda.webmvc.dao.impl.ReviewDaoImpl;
import vku.loanhuynh.senda.webmvc.model.Review;
import vku.loanhuynh.senda.webmvc.service.ReviewService;

public class ReviewServicesImpl implements ReviewService {
	ReviewDao reviewDao = new ReviewDaoImpl();
	@Override
	public void insert(Review review) {
		reviewDao.insert(review);
		
	}

	@Override
	public void edit(Review review) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		reviewDao.delete(id);
	}

	@Override
	public Review get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Review get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Review> getAll() {
		return reviewDao.getAll();
	}
	
	@Override
	public List<Review> getReviewById(int id) {
		return reviewDao.getReviewById(id);
	}

}
