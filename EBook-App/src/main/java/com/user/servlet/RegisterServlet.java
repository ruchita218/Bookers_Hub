package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.entity.User;
import com.util.DBConnect;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phnno = req.getParameter("phnno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");
            
            // Create a User object
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhnno(phnno);
            us.setPassword(password);

            HttpSession session = req.getSession();
            
            if ("on".equals(check)) {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                boolean f = dao.userRegister(us);
                if (f) {
                    session.setAttribute("succmessage", "Registration success");
                    resp.sendRedirect("register.jsp");
                } else {
                    session.setAttribute("failedMsg", "Registration failed");
                    resp.sendRedirect("register.jsp");
                }
            } else {
                session.setAttribute("failedMsg", "Please check and agree to the terms and conditions");
                resp.sendRedirect("register.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
