package vku.loanhuynh.senda.webmvc.dao;

import java.util.List;

import vku.loanhuynh.senda.webmvc.model.Exchange;

public interface ExchangeDao {

	void insert(Exchange exchange);
	
	void delete(int id);
	
	List<Exchange> getAll();
	
	Exchange getExchangeById(int id);
}
