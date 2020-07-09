<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="myModel.Ordine"%>
<%@ page import="myModel.Utente"%>
  <%
  	Utente user = (Utente) session.getAttribute("user");
     if (user==null){
  %>
<jsp:forward page="/login.jsp" />
<%
	return;}
%>
<jsp:useBean id="ordine" class="myModel.Ordine" scope="request" />
<html>
<head>
<title>Ordini</title>
</head>
<body>
<h2>Visualizza Ordine</h2>
<table>
<tr><td>Progressivo:</td><td><jsp:getProperty name="ordine" property="progressivo" /></td></tr>
<tr><td>Descrizione:</td><td><jsp:getProperty name="ordine" property="descrizione" /></td></tr>
</table>
<a href="ServletControllo?op=modifica&progressivo=<jsp:getProperty name="ordine" property="progressivo"/>">Modifica questo ordine</a>
</body>
</html>