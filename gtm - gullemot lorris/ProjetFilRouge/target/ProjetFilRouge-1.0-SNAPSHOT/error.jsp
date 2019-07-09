 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="css/style.css" %>
</style>
<meta charset="ISO-8859-1">
<title>Erreur</title>
</head>
<body>
	<p>Le compte n'existe pas</p>
	<div>
		<img border="0" src="images/erreur.jpg" width="304" height="228">
	</div>
     <div class="btn-redirection">
     	<input type="submit" class="redirection" onclick="window.location.href = 'index.jsp';" value="Retour au login"/>
     </div>
</body>
</html>