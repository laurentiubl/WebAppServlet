<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="myModel.Utente" %>

<% String user = (String) session.getAttribute("user");
   if (user==null){%>
<jsp:forward page="/login.jsp" /> 
<%return;}%>
<%@include file="/WEB-INF/template/header.jsp"%>
<html>
<head>
<title>Home page</title>
</head>
<body>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="resources/img/london.jpg" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1></h1>
                    <p> </p>
                   
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="resources/img/venice.jpg" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Mihai2</h1>
                    <p>Carousel2.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="resources/img/milan.jpg" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Mihai3</h1>
                    <p>Text</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
  <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
    <div class="my-3 py-3">
      <h2 class="display-5">Another headline</h2>
      <p class="lead">And an even wittier subheading.</p>
    </div>
    <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
  </div>
  <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
    <div class="my-3 p-3">
      <h2 class="display-5">Another headline</h2>
      <p class="lead">And an even wittier subheading.</p>
    </div>
    <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
  </div>
</div>





<div>
    <!-- FOOTER -->
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; Blaga 2020 !! &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>
  
          <script src="resources/js/jquery-1.11.3.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
  		
</div><!-- /.container -->


</body>
</html>