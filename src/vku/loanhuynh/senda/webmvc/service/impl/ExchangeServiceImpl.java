package vku.loanhuynh.senda.webmvc.service.impl;

import java.util.List;

import vku.loanhuynh.senda.webmvc.dao.ExchangeDao;
import vku.loanhuynh.senda.webmvc.dao.impl.ExchangeDaoImpl;
import vku.loanhuynh.senda.webmvc.model.Exchange;
import vku.loanhuynh.senda.webmvc.service.ExchangeService;

public class ExchangeServiceImpl implements ExchangeService {
	ExchangeDao exchangeDao = new ExchangeDaoImpl();
	
	@Override
	public void insert(Exchange exchange) {
		exchangeDao.insert(exchange);
	}
	
	@Override
	public void delete(int id) {
		exchangeDao.delete(id);
	}
	
	@Override
	public List<Exchange> getAll(){
		return exchangeDao.getAll();
	}
	
	@Override
	public Exchange getExchangeById(int id) {
		return exchangeDao.getExchangeById(id);
	}

}
