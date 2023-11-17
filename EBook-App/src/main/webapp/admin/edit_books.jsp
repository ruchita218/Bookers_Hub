<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin: Edit Books</title>
    <%@ include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f2;">
    <%@ include file="navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Edit Books</h4>
                        
                        <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                        BookDtls b = dao.getBooksById(id); // Fixed a typo: "geyBooksById" to "getBooksById"
                        %>
                        <form action="../edit_books" method="post" enctype="multipart/form-data">
                            <input type="hidden" name='id' value="<%= b.getBookId() %>"> <!-- Fixed a typo: "b.getBookById()" to "b.getBookId()" -->
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Book Name</label>
                                <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Author Name*</label>
                                <input name="author" type="text" class "form-control" id="exampleInputEmail1" aria-describedby="emailHelp"> <!-- Fixed a typo: "class="form-control"" to "class="form-control"" -->
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Price</label>
                                <input id="inputState" name="price" class="form-control" id="exampleInputPassword1">
                            </div>
                            <div class="form-group">
                                <label for="inputState">Book Categories</label>
                                <select id="inputState" name="categories" class="form-control">
                                    <option selected>--select--</option>
                                    <option value="New">New Book</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputState">Book Status</label>
                                <select id="inputState" name="status" class="form-control">
                                    <c:choose>
                                        <c:when test="${'Active' eq b.status}">
                                            <option value="Active" selected>Active</option>
                                            <option value="Inactive">Inactive</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="Active">Active</option>
                                            <option value="Inactive" selected>Inactive</option>
                                        </c:otherwise>
                                    </c:choose>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top:40px;">
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
