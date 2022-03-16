package vku.loanhuynh.senda.webmvc.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vku.loanhuynh.senda.webmvc.model.Comment;
import vku.loanhuynh.senda.webmvc.service.CommentService;
import vku.loanhuynh.senda.webmvc.service.impl.CommentServiceImpl;


public class CommentListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    CommentService commentService = new CommentServiceImpl();
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Comment> comments = commentService.getAll();
		req.setAttribute("comments", comments);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/show-comment.jsp");
		dispatcher.forward(req, resp);
	
	}

}
