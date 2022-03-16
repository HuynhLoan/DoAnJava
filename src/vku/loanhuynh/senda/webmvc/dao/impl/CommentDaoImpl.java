package vku.loanhuynh.senda.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vku.loanhuynh.senda.webmvc.dao.CommentDao;
import vku.loanhuynh.senda.webmvc.jdbc.connectDB;
import vku.loanhuynh.senda.webmvc.model.Comment;

public class CommentDaoImpl extends connectDB implements CommentDao {
	
	@Override
	public void insert(Comment comment) {
		String sql = "INSERT INTO comment(exchange_id, name, email, content, created) VALUES (?,?,?,?,?)";
		new connectDB();
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, comment.getExchange_id());
			ps.setString(2, comment.getName());
			ps.setString(3, comment.getEmail());
			ps.setString(4, comment.getContent());
			ps.setString(5, comment.getCreated());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void delete(int id) {
		String sql = "DELETE FROM comment WHERE id = ?";
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
	public List<Comment> getAll(){
		List<Comment> comments = new ArrayList<Comment>();
		String sql = "SELECT * FROM comment";
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);	
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Comment comment = new Comment();
				
				comment.setId(rs.getString("id"));
				comment.setName(rs.getString("name"));
				comment.setEmail(rs.getString("email"));
				comment.setExchange_id(rs.getString("exchange_id"));
				comment.setContent(rs.getString("content"));
				comment.setCreated(rs.getString("created"));
				
				comments.add(comment);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return comments;
	}
	
	@Override
	public List<Comment> getCommentById(int id){
		List<Comment> comments = new ArrayList<Comment>();
		
		String sql = "SELECT * FROM comment WHERE exchange_id=?";
		Connection con = connectDB.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Comment comment = new Comment();
				
				comment.setId(rs.getString("id"));
				comment.setExchange_id(rs.getString("exchange_id"));
				comment.setName(rs.getString("name"));
				comment.setEmail(rs.getString("email"));
				comment.setContent(rs.getString("content"));
				comment.setCreated(rs.getString("created"));
				
				comments.add(comment);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return comments;
	}

}
