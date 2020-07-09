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
<title>Ordini</title>
</head>
<body>

&nbsp;&nbsp;
<h2>Inserimento Ordine</h2>
<form action="ServletControllo" method="POST" name="dati">
<input type=hidden name="op" value="inserimento">
<table>
<tr><td>Progressivo:</td><td><input name="progressivo" type="text"></td></tr>
<tr><td>Descrizione:</td><td><input name="descrizione" type="text"></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="OK"></td></tr>
</table>
</form>
</body>
</html>