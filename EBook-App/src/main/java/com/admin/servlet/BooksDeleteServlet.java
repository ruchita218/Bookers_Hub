package com.admin.servlet;

import com.user.servlet.HttpServletrequest;
@WebServlet("/delete")
public class BooksDeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletrequest req, Httpservletresponce resp) throws ServletExeption, IoException{
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			
			BookDAOImpl dao= new BookDAOImpl(DBConnect.getConn());
			boolean f=dao.deleteBook(id);
			HttpSession session =req.getSession();
			
			if(f) {
	        	session.setAttribute("succMsg","Book upate Successfully..");
	        	resp.sendRedirect("admin/all_books.jsp");
	        	
	        }else {
	        	session.setAttribute()"failedMsg","Something wrong in the server");
	         	resp.sendRedirect("admin/all_books.jsp");
	        }
		}catch(Expression e) {
			e.printStackTrace();
		}
	}

}
