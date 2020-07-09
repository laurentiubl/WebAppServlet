

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    
      
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/css/carousel.css" rel="stylesheet">

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home.jsp">MihaiPro</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="ServletControllo?op=moduloInserimento">Insert ordini</a></li>
                        <li><a href="ServletControllo?op=visualizza">Visualizza Ordini</a></li>
                        <li><a href="ServletControllo?op=chat">Chat</a>
						
                         
                    </ul>
                    
                     <ul class="nav navbar-nav pull-right">
                        <li><a href="ServletControllo?op=logout">logout</a>
                          </ul>
                </div>
            </div>
        </nav>

    </div>
</div>