package vku.loanhuynh.senda.webmvc.service;

import java.util.List;

import vku.loanhuynh.senda.webmvc.model.Comment;

public interface CommentService {
	
	void insert(Comment comment);
	
	void delete(int id);
	
	List<Comment> getAll();
	
	List<Comment> getCommentById(int id);

}
