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
import com.dao.DeleteProductDAO;

@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			System.out.println("Session Expired !!!");
			req.getRequestDispatcher("AdminLogin.html");
		}
		else {
			int rowCount=new DeleteProductDAO().deleteProduct(req.getParameter("pcode"));
			if(rowCount>0)
			{
				req.setAttribute("data","Product Deleted Successfully !!");
				req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
			}
			else {
				req.setAttribute("data","Product Deletion Failed !!");
				req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
			}
		}
	}
}
