<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EBooks</title>
    <link rel="stylesheet" href="your-css-file.css">
</head>
<body>
    <div class="container-fluid" style="height: 100px;"> <!-- Set a specific height -->
        <div class="container-fluid p-3">
            <div class="row">
                <div class="col-md-3 text-success">
                    <i class="fas fa-book"></i>
                    <h3>EBooks</h3>
                </div>
                <div class="col-md-6">
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
                <div class="col-md-3">
                    <c:if test="${not empty userobj}">
                        <a  class="btn btn-success text-white">
                            <i class="fas fa-user"></i>${userobj.name}
                        </a>
                        
                        <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white >
                           <i class="fas fa-sign-in-alt"></i> Register
                        </a>
                    </c:if>
                    <c:if test="${empty userobj}">
                        <a href="../Login.jsp" class="btn btn-success">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </a>
                        <a href="../register.jsp" class="btn btn-primary text-white">
                            <i class="fas fa-user-plus"></i> Register
                        </a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- Start logout modal -->
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Logout</h5> <!-- Add a title for the modal -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="text-center">
                        <h4>Do you want to logout?</h4>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <a href="../Logout" type="button" class="btn btn-primary text-white">Logout</a>
                    </div>
                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    <!-- End logout modal -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-custom">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp">
                        <i class="fas fa-home"></i> Home
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</body>
</html>
