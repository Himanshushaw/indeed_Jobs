package com.job.helper.db.connect;
import java.sql.*;
public class ConnectionProvide {
		
			private static Connection con;
			public static Connection getConnection() {
				try {
					if(con==null) {
						//load driver
						Class.forName("com.mysql.jdbc.Driver");
						//create connection
						con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobs","root","root");
					}
				} 
				catch (Exception e) {
					e.printStackTrace();
				}
				
				return con;
			}
}
