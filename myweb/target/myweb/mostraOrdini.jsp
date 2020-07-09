<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="myModel.Ordine"%>
<%@ page import="myModel.Utente"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String user = (String) session.getAttribute("user");
   if (user==null ){%>
<jsp:forward page="/login.jsp" />
<% return;}%>
<% java.util.Iterator iterator = Ordine.loadd().iterator();
   Ordine ordine =null; %>
 <%@include file="/WEB-INF/template/header.jsp"%>


<html>
<head>
<title>Ordini</title>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Visualizza Ordini</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
             
                <th>Progressivo</th>
                <th>Category</th>
          
            </tr>
            </thead>
            <c:forEach items="${o}" var="product">
                <tr>
                    
                    <td>${product.progressivo}</td>
                    <td>${product.descrizione}</td>
                   
                </tr>
            </c:forEach>
        </table>

 <div class=" ult-main-seperator-inner">

 </div>



<div>
<h2>Visualizza Ordini</h2>
<table>
<tr><td>Progressivo</td><td>Descrizione</td></tr>
<% while(iterator.hasNext())
{

  ordine = (Ordine) iterator.next();%>
    <tr><td><a href="ServletControllo?op=mostra&progressivo=<%=""+ordine.getProgressivo()%>"><%=""+ordine.getProgressivo()%></a></td>
	<td><%=ordine.getDescrizione()%></td></tr>
<%}%>
</table>
<a href="ServletControllo?op=moduloInserimento">Inserisci ordine</a>

</div>


</body>
</html>