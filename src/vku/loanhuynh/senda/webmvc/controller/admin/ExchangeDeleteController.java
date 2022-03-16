package vku.loanhuynh.senda.webmvc.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vku.loanhuynh.senda.webmvc.service.ExchangeService;
import vku.loanhuynh.senda.webmvc.service.impl.ExchangeServiceImpl;

public class ExchangeDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    ExchangeService exchangeService = new ExchangeServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		exchangeService.delete(Integer.parseInt(id));
		resp.sendRedirect(req.getContextPath() + "/admin/exchange/list");
		
		
	}


}
