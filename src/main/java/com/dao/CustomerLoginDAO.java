package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.CustomerBean;

public class CustomerLoginDAO {
	public CustomerBean checkLogin(String uname, String pass)
	{
		CustomerBean cb=null;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from estore_customer where uname=? and upass=?");
			pstmt.setString(1, uname);
			pstmt.setString(2, pass);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				cb=new CustomerBean();
				cb.setuName(rs.getString(1));
				cb.setPass(rs.getString(2));
				cb.setfName(rs.getString(3));
				cb.setlName(rs.getString(4));
				cb.setAddress(rs.getString(5));
				cb.setMail_id(rs.getString(6));
				cb.setMob_no(rs.getString(7));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return cb;
	}
}
