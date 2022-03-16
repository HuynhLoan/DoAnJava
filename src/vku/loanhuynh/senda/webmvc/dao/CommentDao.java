package vku.loanhuynh.senda.webmvc.dao;

import java.util.List;

import vku.loanhuynh.senda.webmvc.model.Comment;

public interface CommentDao {
	
	void insert(Comment comment);
	
	void delete(int id);
	
	List<Comment> getAll();
	
	List<Comment> getCommentById(int id);

}
