package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BuyProductDAO {
	public int buyProduct(String pcode, String reqty) 
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update estore_product set pqty=pqty-? where pcode=?");
			pstmt.setString(1, reqty);
			pstmt.setString(2, pcode);
			rowCount=pstmt.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
