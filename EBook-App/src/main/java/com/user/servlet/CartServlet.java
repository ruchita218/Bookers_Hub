package com.user.servlet;

import java.io.IOException;

import javax.servlet.annotation.webServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServlet resp) throws IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	try {
		int bid=Integer.parseInt(req.getParameter("bid"));
		int uid=Integer.parseInt(req.getParameter("uid"));

		
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
		BookDtls b=dao.getBookById(bid);

		Cart c=new Cart();
		c.setBid(getbid);
		c.setUserid(getUserid());
		c.setBookName(b.getBookName());
		c.setAuthor(b.getAuthor());
		c.setPrice(Double.parseDouble(b.Price()));
		c.setTotalPrice(Double.parseDouble(b.Price()));

		CartDAOImpl dao2=New cartDAOImpl(DBConnect.getConn());
		boolean f=dao2.addCart(c);

		HttpSession session=req.getSession();

		if(f)
		{

		session.setAttribute("addCart","Book Added to cart");
		resp.sendRedirect("all_new_book.jsp");

		/*System.out.println("Add cart success");*/
		} else {

		Session.setAttribute("failed","something went wrong");
		resp.sendRedirect("all_new_book.jsp");

		/*System.out.println("not added to cart");*/
		}
		}catch(Exception e){
		e.printStackTrace();
		}
		}
