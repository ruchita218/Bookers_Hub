<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Book</title>
<%@ include file="all_component/allCss.jsp" %>
 <style type="text/css">
       

        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>
 <%@ include file="all_component/navbar.jsp" %>
 <div class="container-fluid">
 <div class="row p-3">
 

 
 
 
        <%BookImplImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2=dao2.getAllRecentBook();
        for(BookDtls b:list2)
        {%>
         <div class="col-md-3">
                <div class="card crd-ho mt-2">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoname() %>"  style="width:100px; height:200px" class="img-thumblin">
                        <p><%=b.getBookName() %></p>
                        <p><%=b.getAuthor() %> </p>
                        
                        <p> 
                        <%if(b.getCategory().equals("Old"))
                        {%>
                        Categories:<%=b.getBookCategory() %></p>
                         <div class="row">
                         	 
                            
                            <a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
                        </div>
                        <%}
                        else
                        {%>
                        	 Categories:<%=b.getBookCategory() %></p>
                             <div class="row">
                                 <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add to Cart</a>
                                 <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                                 <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
                             </div>
                        	<%
                        } 
                        	%>
 
 </div>
 </div>
 </div>
</body>
</html>