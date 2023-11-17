package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.entity.BookDtls;
import com.dao.BookDAOImpl; // Import the correct BookDAOImpl class
import com.util.DBConnect; // Import the DBConnect class if it's used for database connection

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String bookName = req.getParameter("bname");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String categories = req.getParameter("categories");
            String status = req.getParameter("status");
            Part part = req.getPart("bimg");
            String fileName = part.getSubmittedFileName();
            
            // Ensure you have a database connection before creating DAO and BookDtls
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            BookDtls b = new BookDtls(bookName, author, price, categories, status, fileName, "admin");

            boolean f = dao.addBooks(b);

            HttpSession session = req.getSession();
            if (f) {
                String path = getServletContext().getRealPath("/") + "book"; // Corrected the path
                File directory = new File(path);

                if (!directory.exists()) {
                    directory.mkdirs();
                }

                part.write(path + File.separator + fileName);
                session.setAttribute("succMsg", "Book Added Successfully");
                resp.sendRedirect("admin/add_book.jsp");
            } else {
                session.setAttribute("failedMsg", "Something went wrong on the server");
                resp.sendRedirect("admin/add_book.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
