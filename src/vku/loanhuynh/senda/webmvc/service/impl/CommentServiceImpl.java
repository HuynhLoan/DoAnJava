package vku.loanhuynh.senda.webmvc.service.impl;

import java.util.List;

import vku.loanhuynh.senda.webmvc.dao.CommentDao;
import vku.loanhuynh.senda.webmvc.dao.impl.CommentDaoImpl;
import vku.loanhuynh.senda.webmvc.model.Comment;
import vku.loanhuynh.senda.webmvc.service.CommentService;

public class CommentServiceImpl implements CommentService{
	CommentDao commentDao = new CommentDaoImpl();
	
	@Override
	public void insert(Comment comment) {
		commentDao.insert(comment);
	}
	
	@Override
	public void delete(int id) {
		commentDao.delete(id);
	}
	
	@Override
	public List<Comment> getAll(){
		return commentDao.getAll();
	}
	
	@Override
	public List<Comment> getCommentById(int id){
		return commentDao.getCommentById(id);
	}
}
