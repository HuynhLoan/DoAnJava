package vku.loanhuynh.senda.webmvc.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class ExchangeListClientController
 */
public class ExchangeListClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ExchangeService exchangeService = new ExchangeServiceImpl();
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Exchange> exchanges = exchangeService.getAll();
		req.setAttribute("exchanges", exchanges);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/exchange-list.jsp");
		dispatcher.forward(req, resp);
	}

}
