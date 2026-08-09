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
import com.dao.ViewCustomerProductDAO;

@WebServlet("/ViewCustProduct")
public class ViewCustomerProductServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			System.out.println("Session Expired !!!");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		}
		else {
			ArrayList<ProductBean> plist=new ViewCustomerProductDAO().viewProducts();
			session.setAttribute("plist", plist);
			req.getRequestDispatcher("ViewCustomerProduct.jsp").forward(req, res);
		}
	}
}
