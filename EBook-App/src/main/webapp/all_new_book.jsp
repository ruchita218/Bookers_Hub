<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Recent Books</title>
    <%@ include file="all_component/allCss.jsp" %>
    <style type="text/css">
        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>

<%User u=(User)session.getAttribute("userobj"); %>

<c:if test="${not empty addCart}">
<div id="toast"> ${addCart} </div>
<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
     <c:remove var="addCart" scope="session"/>
</c:if>

    <%@ include file="all_component/navbar.jsp" %>
    <div class="container-fluid">
        <div class="row p-3">
            <% BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls>=dao.getNewBook();
            for(BookDtls b:list){
            %>
            <div class="col-md-3">
            <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 50px; height: 150px"
                            class="img-thumbnail">
                        <p><%=b.getbookname() %></p>
                        <p><%=b.getAuthor() %></p>
                        <p>Categories:<%=b.getBookcategory() %></p>
                        <div class="row">
                            <a href="" class="btn btn-danger btn-sm ml-2">Add to Cart</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
                        </div>
                    </div>
                </div>
            <%
            }
            %>
           
           
        </div>
    </div>
</body>
</html>
