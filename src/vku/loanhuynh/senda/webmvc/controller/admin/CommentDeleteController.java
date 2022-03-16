package vku.loanhuynh.senda.webmvc.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vku.loanhuynh.senda.webmvc.service.CommentService;
import vku.loanhuynh.senda.webmvc.service.impl.CommentServiceImpl;

public class CommentDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	CommentService commentService = new CommentServiceImpl();
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		commentService.delete(Integer.parseInt(id));
		
		resp.sendRedirect(req.getContextPath() + "/admin/comment/list");
	
	}

}
