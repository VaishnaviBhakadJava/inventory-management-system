package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO {
	public int deleteProduct(String pcode)
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("delete from estore_product where pcode=?");
			pstmt.setString(1, pcode);
			rowCount=pstmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
