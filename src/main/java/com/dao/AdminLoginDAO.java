package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.AdminBean;

public class AdminLoginDAO {
	
	public AdminBean checkLogin(String uname, String pass)
	{
		AdminBean ab=null;
		try {
			Connection con=DBConnect.getCon();
			
			PreparedStatement pstmt= con.prepareStatement("select * from estore_admin where uname=? and upass=?");
			pstmt.setString(1, uname.trim());
			pstmt.setString(2, pass.trim());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				ab=new AdminBean();
				ab.setUname(rs.getString(1));
				ab.setUpass(rs.getString(2));
				ab.setUfname(rs.getString(3));
				ab.setUlname(rs.getString(4));
				ab.setAddr(rs.getString(5));
				ab.setMail_id(rs.getString(6));
				ab.setPhone(rs.getString(7));
			}

		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
	}
}
