package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnect {
	
	static Connection con=null;
	static {
		try {
			Class.forName(DBInfo.driver);
			con=DriverManager.getConnection(DBInfo.dbUrl,DBInfo.dbUname,DBInfo.dbPass);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static Connection getCon()
	{
		return con;
	}
}
