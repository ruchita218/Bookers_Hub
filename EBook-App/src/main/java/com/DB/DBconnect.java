package com.DB;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private Connection conn;
	public Connection getconn()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","password");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
		}
	}


