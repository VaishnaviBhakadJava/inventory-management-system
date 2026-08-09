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
import com.dao.UpdateProductDAO;

@WebServlet("/Update")
public class UpdateProductServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			System.out.println("Session Expired !!!");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else {
			
			ArrayList<ProductBean> list=(ArrayList<ProductBean>)session.getAttribute("plist");
			ProductBean pb=null;
			String pcode=req.getParameter("pcode");
			Iterator<ProductBean> itr=list.iterator();
			while(itr.hasNext())
			{
				pb=itr.next();
				if(pcode.equals(pb.getPcode()))
				{
					break;
				}
			}
			
			pb.setPprice(req.getParameter("pprice"));
			pb.setPqty(req.getParameter("pqty"));
			int rowCount=new UpdateProductDAO().updateProduct(pb);
			if(rowCount>0)
			{
				req.setAttribute("msg","Product updated successfully !!");
				req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
			}
			else {
				req.setAttribute("msg","Product NOT updated !!");
				req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
			}
		}
		
	}
}
