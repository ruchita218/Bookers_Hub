<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin: Add Books</title>
    <%@ include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f2;">
    <%@ include file="navbar.jsp" %>
    <c:if test="${empty userobj }">
    <c:redirect url="../login.jsp"/>
    </c:if>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Add Books</h4>
                        <c:if test="${not empty succMsg}"> <p class="test-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope ="session"/>
                        </c:if>
                        <c:if test="${not empty failedMsg}"> <p class="test-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope ="session"/>
                        </c:if>
                        <form action="../add_boooks" method="post" enctype="multipart/form-data">//here we are using it as during e time of entring bookdetails we are uploading a file so to store that binary data we are using encypt as multipart
                            <div class="form-group">
                                <label for="exampleInputEmail1">Book Name</label>
                                <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Author Name*</label>
                                <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
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
                                    <option selected>--select--</option>
                                    <option value="Active">Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlFile1">Upload Photo</label>
                                <input name="bimg" type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>
                            <button type="submit" class="btn btn-primary">Add</button>
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