package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ProductBean;
import com.dao.BuyProductDAO;

@WebServlet("/BuyProduct")
public class BuyProductUpdateServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			System.out.println("Session Expired !!!");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);;
		}
		else {
			ProductBean pb=new ProductBean();
			pb.setPcode(req.getParameter("pcode"));
			pb.setPname(req.getParameter("pname"));
			pb.setPcompany(req.getParameter("pcompany"));
			pb.setPprice(req.getParameter("pprice"));
			pb.setPqty(req.getParameter("pqty"));
		
			String reqty=req.getParameter("reqty");
			int rowCount=new BuyProductDAO().buyProduct(pb.getPcode(), reqty);
			if(rowCount>0)
			{
				double totalBill=Double.parseDouble(pb.getPprice())*Integer.parseInt(reqty);
				req.setAttribute("totalBill", totalBill);
				req.getRequestDispatcher("BuyProductSuccess.jsp").forward(req, res);
			}
		}
	}
}
