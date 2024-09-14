package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connectiondao {
	
	
	public Connectiondao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public Connection getConnection() throws SQLException{
		return  DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root", "Amar2003");
	}
	
	
	
}
