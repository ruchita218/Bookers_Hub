package com.user.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Webservlet("/logout")
public class LogoutServlet {
	@Override
	protected void doget(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		try {
			HttpSession session = req.getSession();
			session.removeAttribute("userobj");
			HttpSession session = req.getSession();
			session.setAttribute("succMsg","Logout Successfully");
			resp.sendRedirect("login.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
