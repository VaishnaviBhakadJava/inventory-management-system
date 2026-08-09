package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ProductBean;

public class UpdateProductDAO {
	public int updateProduct(ProductBean pb)
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("update estore_product set price=?, pqty=? where pcode=?");
			pstmt.setString(1, pb.getPprice());
			pstmt.setString(2, pb.getPqty());
			pstmt.setString(3, pb.getPcode());
			rowCount=pstmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
