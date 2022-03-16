package vku.loanhuynh.senda.webmvc.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vku.loanhuynh.senda.webmvc.model.Comment;
import vku.loanhuynh.senda.webmvc.model.Exchange;
import vku.loanhuynh.senda.webmvc.service.CommentService;
import vku.loanhuynh.senda.webmvc.service.ExchangeService;
import vku.loanhuynh.senda.webmvc.service.impl.CommentServiceImpl;
import vku.loanhuynh.senda.webmvc.service.impl.ExchangeServiceImpl;


public class ExchangeListClientDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ExchangeService exchangeService = new ExchangeServiceImpl();
	CommentService commentService = new CommentServiceImpl();
	DecimalFormat df = new DecimalFormat("#.000");

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");	
		Exchange exchange = exchangeService.getExchangeById(Integer.parseInt(id));
		req.setAttribute("exchange", exchange);
		
		List<Comment> commentById = commentService.getCommentById(Integer.parseInt(id));
		req.setAttribute("commentbyid", commentById);
		
		List<Exchange> exchanges = exchangeService.getAll();
		req.setAttribute("exchanges", exchanges);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/exchange-single.jsp");
		dispatcher.forward(req, resp);
		
		
	}

}
