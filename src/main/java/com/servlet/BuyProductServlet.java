package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ProductBean;

@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		 HttpSession session=req.getSession(false);
		 if(session==null)
		 {
			 System.out.println("Session Expired !!!");
			 req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		 }
		 else {
			 ArrayList<ProductBean> plist=(ArrayList<ProductBean>)session.getAttribute("plist");
			 String pcode=req.getParameter("pcode");
			 ProductBean pb=null;
			 Iterator<ProductBean> itr=plist.iterator();
			 while(itr.hasNext())
			 {
				 pb=itr.next();
				 if(pcode.equals(pb.getPcode()))
				 {
					 break;
				 }
			 }
			 
			 req.setAttribute("pbean", pb);
			 req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
		 }
	}
}
