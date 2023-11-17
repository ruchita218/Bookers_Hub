package com.admin.servlet;

import com.user.servlet.HttpServletrequest;

@WebServlet("/editbooks")
public class EditBooksServlet extends HttpServlet{
	protected void dopost(HttpServletrequest req, HttpServletResponce resp) throws ServletException, IOException{
	try {int id=Integer.parseInt(req.getParameter("id"));
		String bookName = req.getParameter("bname");
        String author = req.getParameter("author");
        String price = req.getParameter("price");
        String status = req.getParameter("status");
        BookDlts b= new BookDlts();
        b.setBookId(id);
        b.setBookName(bookname);
        b.setauthor(author);
        b.setStatus(status);
        BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
        boolean f = dao.updateEditBooks(b);
        HttpSession session = req= getSession();
        
        if(f) {
        	session.setAttribute("succMsg","Book update Successfully..");
        	resp.sendRedirect("admin/all_books.jsp");
        	
        }else {
        	session.setAttribute()"failedMsg","Something wrong in the server");
         	resp.sendRedirect("admin/all_books.jsp");
        }
        
	}catch(Exception e) {
	e.printStackTrace();
	}
	
	
}


