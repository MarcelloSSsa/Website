package com.util;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.mysql.jdbc.Connection;

public class ConnectionFactory {
	
//	public Connection getConnection() throws ClassNotFoundException {
//	     try {
//	    	 Class.forName("com.mysql.jdbc.Driver");
//	         return (Connection) DriverManager.getConnection(
//				 "jdbc:mysql://10.202.23.177/afsca?autoReconnect=true&useSSL=false", //database address
//				 "brenno", //database login
//        		 "CPqD");  //database password
//	     } catch (SQLException e) {
//	         throw new RuntimeException(e);
//	     }
//	 }
	
	public Connection getConnection() throws ClassNotFoundException {
		String address=null, login=null, password=null;
		
		Properties prop = null;

		try {
	    	 
	    	 prop = Util.getProp();
	 		 //select specific property
	 		 address = prop.getProperty("database.address");
	 		 login = prop.getProperty("database.login");
	 		 password = prop.getProperty("database.password");
	 		 
	    	 Class.forName("com.mysql.jdbc.Driver");
	         return (Connection) DriverManager.getConnection(
	        		 address, //database address
	        		 login, //database login
	        		 password);  //database password
	     } catch (SQLException | IOException e) {
	         throw new RuntimeException(e);
	     }
	 }

}
