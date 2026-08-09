package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.CustomerBean;

public class CustomerRegisterDAO {
	public int register(CustomerBean cb)
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into estore_customer values (?,?,?,?,?,?,?)");
			pstmt.setString(1,cb.getuName());
			pstmt.setString(2, cb.getPass());
			pstmt.setString(3, cb.getfName());
			pstmt.setString(4,cb.getlName());
			pstmt.setString(5, cb.getAddress());
			pstmt.setString(6,cb.getMail_id());
			pstmt.setString(7, cb.getMob_no());
			rowCount=pstmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
