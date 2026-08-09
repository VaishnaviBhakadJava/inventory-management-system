package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ProductBean;
import com.dao.AddProductDAO;
import com.dao.ViewProductDAO;

@WebServlet("/ViewProduct")
public class ViewProductServlet1 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		System.out.println(session==null);
		if(session==null)
		{
			System.out.println("Session Expired");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else {
			ArrayList<ProductBean> plist=new ViewProductDAO().viewProducts();
				session.setAttribute("plist", plist);
				req.getRequestDispatcher("ViewProduct.jsp").forward(req, res);
		
		}
	}
}
