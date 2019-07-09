<%@page import="java.util.ArrayList"%>
<%@page import="eu.ensup.formulaire.dao.ConseillerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="eu.ensup.formulaire.domaine.*"%>
<%

ConseillerDao conseillerDao = new ConseillerDao();
ArrayList<Personne> listePersonne = conseillerDao.listeDesClients();

%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="css/style.css" %>
  </style>
  
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Profil</title>
</head>
<body>
	<h1>Vous êtes sur votre page de profil</h1>
	<p>Connexion réussie!!!!</p>
	
	<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
       <th scope="col">Compte</th>
      <th scope="col">Modification</th>
      <th scope="col">Suppression</th>
     
    </tr>
  </thead>
  <tbody>
 >
 <c:forEach  items="${listePersonne}" var ="personne">
    <tr>
      <th scope="row"><%-- out.println(i); --%></th>
      <td>${personne.nom}</td>
      <td>${personne.prenom}</td>
      <td><a href="/CompteServlet?id=${personne.id}" name="id" id="id">Compte</a></td>
      <td><a href="/Modification?id=${personne.id}" name="id" id="id">Modification </a></td>
      <td><a href="/Supression?id=${personne.id}" name="id" id="id">Suppression </a></td>
    </tr>
   
  </c:forEach>
  </table>
	
	<%-- <%
		for ( int i=0; i<listePersonne.size(); i++ ) 
	         {out.println("<li>" 
					+ listePersonne.get(i).getNom()
	        		 +"</li>");};    
%> --%>
	
	
	<div class="btn-redirection">
     	<input type="submit" class="redirection" onclick="window.location.href = 'index.jsp';" value="Retour au login"/>
     </div>
</body>
</html>