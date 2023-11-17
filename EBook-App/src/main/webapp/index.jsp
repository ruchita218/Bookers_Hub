<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ebook index</title>
    <%@ include file="all_component/allCss.jsp" %>

    <style type="text/css">
        .back-img {
            background: url("img/b.jpg");
            height: 50vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body style="background-color: #f7f7f7;">

<%User u=(User)session.getAttribute("userobj"); %>

    <%@ include file="all_component/navbar.jsp" %>
    <div class="container-fluid back-img">
        <h2 class="text-center text-danger">Ebook Management System</h2>
    </div>
    

    <!-- Start Recent Books -->
    <div class="container">
        <h3 class="text-center">Recent Books</h3>
        
        <div class="row">
        <%BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2=dao2.getRecentBooks();
        for(BookDtls b:list2)
        {%>
         <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoname() %>" >
                        <p><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %> </p>
                        <p> <%if(b.getCategory().equals("Old"))
                        { %>
                        Categories:<%=b.getBookCategory() %></p>
                         <div class="row">
                         
                         
                         <%
                         if(u==null) {
                         %>
                        <a href="cart?bid=<%=b.getNookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                         <%
                         } else {
                            %>
                         <a href="cartServlet" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                            <%
                             }
                            %>
                         
                         
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
                            <i class="fa-solid fa-indian-rupee-sign"></i></a>
                        </div>
                        <%}
                        else{
                        	%>
                        	 Categories:<%=b.getBookCategory() %></p>
                             <div class="row">
                             
                               <%
                         if(u==null) {
                         %>
                        <a href="cart?bid=<%=b.getNookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                         <%
                         } else {
                            %>
                         <a href="cartServlet" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                            <%
                             }
                            %>
                             
                                 
                                 <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-danger btn-sm ml-1">View Details</a>
                                 <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
                             </div>
                        	<%} %>
                      
                    </div>
                </div>
            </div>
            
            
        	<%
        	}
        	%>
     
        </div>
        <div class="text-center mt-1">
            <a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
        </div>
    </div>
    <!-- End Recent Books -->
    <hr>

    <!-- Start New Books -->
    <div class="container">
        <h3 class="text-center">Recent Books</h3>
        <div class="row">
            
            <% BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls>=dao.getNewBook();
            for(BookDtls b:list){
            %>
            <div class="col-md-3">
            <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 50px; height: 50px"
                            class="img-thumbnail">
                        <p><%=b.getbookname() %></p>
                        <p><%=b.getAuthor() %></p>
                        <p>Categories:<%=b.getBookcategory() %></p>
                        <div class="row">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add to Cart</a>
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-danger btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
                        </div>
                    </div>
                </div>
            <%
            }
            %>
                
            </div>
  
       </div>
        <div class="text-center mt-1">
            <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
        </div>
    </div>
    <!-- End New Books -->
    
   
     <hr>

    <!-- Start Old Books -->
    <div class="container">
        <h3 class="text-center">OldBooks </h3>
        <div class="row">
           
        <%BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list3=dao2.getOldBooks();
        for(BookDtls b:list3)
        {%>
         <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoname() %>" >
                        <p><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %> </p>
                        <p><%=b.getBookCategory() %></p>
                        <div class="row">
                          
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
                        </div>
                      
                        
                       
                    </div>
                </div>
            </div>
            
            
        	<%
        	}
        	%>
             
       
        </div>
        <div class="text-center mt-1">
            <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
        </div>
    </div>
    <!-- End Old Books -->
</body>
</html>
    
</body>
</html>
