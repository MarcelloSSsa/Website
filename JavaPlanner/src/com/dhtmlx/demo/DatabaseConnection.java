package com.dhtmlx.demo;

import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.SQLException;

public class DatabaseConnection {

	public static java.sql.Connection getConnection() {
		java.sql.Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/odonto";
			String user = "root";
			String password = "OdontoSystem";
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("Conectado");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			System.out.println("Exception1");
		} catch (SQLException e1) {
			e1.printStackTrace();
			System.out.println("Exception2");
		}
		System.out.println("conexão bem sucedida");
		return conn;
	}

}