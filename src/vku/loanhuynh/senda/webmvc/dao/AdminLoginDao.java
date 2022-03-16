package vku.loanhuynh.senda.webmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vku.loanhuynh.senda.webmvc.jdbc.connectDB;
import vku.loanhuynh.senda.webmvc.model.Admin;



public class  AdminLoginDao {
	public static boolean checkAdminLogin (String username, String password) {
		boolean exist = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String sql = "select * from admin where username=? and password=?";
			Connection con = connectDB.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs;
			rs = st.executeQuery();
		    exist = rs.next();
		    Admin admin = new Admin();
		    String name = rs.getString("name");
		    admin.setName(name);
		    } catch (Exception e) {
			e.printStackTrace();
		}
		return exist;
	}

}
