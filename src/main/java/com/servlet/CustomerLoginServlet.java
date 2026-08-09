package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CustomerBean;
import com.dao.CustomerLoginDAO;

@WebServlet("/custLogin")
public class CustomerLoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		CustomerBean cb=new CustomerLoginDAO().checkLogin(req.getParameter("uname"),req.getParameter("upass"));
		if(cb==null)
		{
			req.setAttribute("msg","Customer not found Please Register first !!!");
			req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
		}
		else {
			HttpSession session=req.getSession();
			session.setAttribute("customerBean", cb);
			req.getRequestDispatcher("CustomerLogin.jsp").forward(req, res);
		}
	}
}
