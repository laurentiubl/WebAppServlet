package myModel;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionDB {

	static String URL = "jdbc:oracle:thin:@localhost:1521:xe";	
	static String USERNAME = "John";
	static String PASSWORD = "admin";
	
	
public static Connection getConnection(){
	
	Connection con = null;
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = (Connection) DriverManager.getConnection(URL,  USERNAME, PASSWORD);
	}catch (Exception e){
		System.out.println(e);
		e.printStackTrace();
		
	}
	return con;
	
	
}
}
