package vku.loanhuynh.senda.webmvc.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vku.loanhuynh.senda.webmvc.model.Comment;
import vku.loanhuynh.senda.webmvc.service.CommentService;
import vku.loanhuynh.senda.webmvc.service.impl.CommentServiceImpl;

/**
 * Servlet implementation class CommentClientController
 */
public class CommentClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommentService commentService = new CommentServiceImpl();
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher(req.getContextPath() + "/view/client/exchange/list_detail?id=" +req.getParameter("id"));
		dispatcher.forward(req, resp);
		
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String id = req.getParameter("id");
		System.out.println("test: "+ id);
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String content = req.getParameter("content");
		
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String today = df.format(date);
		
		Comment comment = new Comment();
		comment.setExchange_id(id);
		comment.setName(name);
		comment.setEmail(email);
		comment.setContent(content);
		comment.setCreated(today);
		System.out.println("test tostring " + comment);
		
		commentService.insert(comment);
		resp.sendRedirect(req.getContextPath() + "/view/client/exchange/list_detail?id=" + id);
		
	}

}
