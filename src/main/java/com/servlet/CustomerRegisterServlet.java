package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CustomerBean;
import com.dao.CustomerRegisterDAO;


@WebServlet("/Register")
public class CustomerRegisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		CustomerBean cb=new CustomerBean();
		cb.setuName(req.getParameter("uname"));
		cb.setPass(req.getParameter("upass"));
		cb.setfName(req.getParameter("fname"));
		cb.setlName(req.getParameter("lname"));
		cb.setAddress(req.getParameter("addr"));
		cb.setMail_id(req.getParameter("mail"));
		cb.setMob_no(req.getParameter("mobile"));
		
		int rowCount=new CustomerRegisterDAO().register(cb);
		if(rowCount>0)
		{
			req.setAttribute("msg","Customer Registration Successfull !!");
			req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg","Customer Registration Failed Try Again !!");
			req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
		}
	}
}
