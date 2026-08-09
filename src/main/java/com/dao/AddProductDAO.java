package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ProductBean;

public class AddProductDAO {
	public int insertProduct(ProductBean pb) throws Exception
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into estore_product values(?,?,?,?,?)");
			pstmt.setString(1, pb.getPcode());
			pstmt.setString(2, pb.getPname());
			pstmt.setString(3, pb.getPcompany());
			pstmt.setString(4, pb.getPprice());
			pstmt.setString(5, pb.getPqty());
			rowCount=pstmt.executeUpdate();
		}catch(Exception e)
		{
			throw e;
		}
		return rowCount;
	}
}
