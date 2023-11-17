<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>EBooks</title>
    <link rel="stylesheet" href="your-css-file.css">
</head>
<body>
<div class="container-fluid" style="height">
  <div class="container-fluid p-3">
    <div class="row">
    
      <div class="col-md-3 text-success">
        <i class="fas fa-book"></i><h3>EBooks</h3>
      </div>
      <div class="col-md-6">
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
      
      <c:if test"${not empty userobj}">
      
      <div class="col-md-3" 
        <a href="cart.jsp"><i class="fas fa-cart-plus" fa-2x></i></a>>
        <a href="login.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> ${userobj.name}</a>
        <a href="logout" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Logout</a>
      </div>
      
      </c:if>
      
      <c:if test"${empty userobj}">
            <div class="col-md-3">
        <a href="#" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Login</a>
        <a href="register.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Register</a>
      </div>
      </c:if>
      
    </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i> Home</a>
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="all_recent_book.jsp">Recent Book</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="all_new_book.jsp"><i class="fas fa-book-open"></i> New Book</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link disabled" href="all_old_book.jsp"><i class="fas fa-book-open">Old Book</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-cog"></i> Setting</button>
      <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fas fa-envelope"></i> Contact us</button>
    </form>
  </div>
</nav>
