package vku.loanhuynh.senda.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vku.loanhuynh.senda.webmvc.dao.ExchangeDao;
import vku.loanhuynh.senda.webmvc.jdbc.connectDB;
import vku.loanhuynh.senda.webmvc.model.Exchange;

public class ExchangeDaoImpl extends connectDB implements ExchangeDao {
	
	@Override
	public void insert(Exchange exchange) {
		String sql = "INSERT INTO exchange(name,email,title,content,image_link,created) VALUES (?,?,?,?,?,?)";
		new connectDB();
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, exchange.getName());
			ps.setString(2, exchange.getEmail());
			ps.setString(3, exchange.getTitle());
			ps.setString(4, exchange.getContent());
			ps.setString(5, exchange.getImage_link());
			ps.setString(6, exchange.getCreated());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void delete(int id) {
		String sql = "DELETE FROM exchange WHERE id=?";
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Exchange> getAll(){
		List<Exchange> exchanges = new ArrayList<Exchange>();
		String sql = "SELECT * FROM exchange;";
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Exchange exchange = new Exchange();
				exchange.setId(rs.getString("id"));
				exchange.setName(rs.getString("name"));
				exchange.setEmail(rs.getString("email"));
				exchange.setTitle(rs.getString("title"));
				exchange.setContent(rs.getString("content"));
				exchange.setImage_link(rs.getString("image_link"));
				exchange.setCreated(rs.getString("created"));
				exchanges.add(exchange);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return exchanges;
	}
	
	@Override
	public Exchange getExchangeById(int id){
		String sql = "SELECT * FROM exchange WHERE id = ? ";
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Exchange exchange = new Exchange();
				
				exchange.setId(rs.getString("id"));
				exchange.setName(rs.getString("name"));
				exchange.setEmail(rs.getString("email"));
				exchange.setTitle(rs.getString("title"));
				exchange.setContent(rs.getString("content"));
				exchange.setImage_link(rs.getString("image_link"));
				exchange.setCreated(rs.getString("created"));
				return exchange;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
