package vku.loanhuynh.senda.webmvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vku.loanhuynh.senda.webmvc.model.Exchange;
import vku.loanhuynh.senda.webmvc.service.ExchangeService;
import vku.loanhuynh.senda.webmvc.service.impl.ExchangeServiceImpl;
/**
 * Servlet implementation class ExchangeAddController
 */
public class ExchangeAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ExchangeService exchangeService = new ExchangeServiceImpl();
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/addExchange.jsp");
		dispatcher.forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String new_name = req.getParameter("name");
		String new_email = req.getParameter("email");
		String new_title = req.getParameter("title");
		String new_content = req.getParameter("content");
		String new_image_link = req.getParameter("image_link");
		String new_created = req.getParameter("created");
		
		Exchange exchange = new Exchange();
		
		exchange.setName(new_name);
		exchange.setEmail(new_email);
		exchange.setTitle(new_title);
		exchange.setContent(new_content);
		exchange.setImage_link(new_image_link);
		exchange.setCreated(new_created);
		
		exchangeService.insert(exchange);
		resp.sendRedirect(req.getContextPath() + "/view/client/exchange/list");
	}

}
