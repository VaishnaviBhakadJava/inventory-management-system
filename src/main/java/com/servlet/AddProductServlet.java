package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ProductBean;
import com.dao.AddProductDAO;

@WebServlet("/AddProdServ")
public class AddProductServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		try {
			HttpSession session=req.getSession(false);
			if(session==null)
			{
				System.out.println("Session Expired");
				req.getRequestDispatcher("AdminLogin.html").forward(req, res);
			}
			else {
				ProductBean pb=new ProductBean();
				pb.setPcode(req.getParameter("pcode"));
				pb.setPname(req.getParameter("pname"));
				pb.setPcompany(req.getParameter("pcom"));
				pb.setPprice(req.getParameter("pprice"));
				pb.setPqty(req.getParameter("pqty"));
				
				int rowCount=new AddProductDAO().insertProduct(pb);
				if(rowCount>0)
				{
					req.setAttribute("msg","Product Added Successfully !!");
					req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
				}
				else {
					req.setAttribute("msg","Product Not Added !!");
					req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
				
				}
			}
		}catch(Exception e)
		{
			req.setAttribute("msg", "Duplicate product ID's are not allowed !!");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
}
