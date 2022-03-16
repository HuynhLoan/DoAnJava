package vku.loanhuynh.senda.webmvc.service;

import java.util.List;

import vku.loanhuynh.senda.webmvc.model.Exchange;

public interface ExchangeService {
	void insert(Exchange exchange);
	
	void delete(int id);
	
	List<Exchange> getAll();
	
	Exchange getExchangeById(int id);
}
