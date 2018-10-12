<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome Page</title>
	<link rel="stylesheet" href="resources/bootstrap.css"/>
	<link rel="stylesheet" href="resources/bootstrap.min.css"/>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
	  <a href="/MyFirstSpringMVC"><img alt="#" src="resources/logo.png" style="width:70px"/></a>
	</nav>
	<div class="text-center">
		<div class="jumbotron jumbotron-fluid">
	  		<div class="container" style="height: 300px">
	    		<h1 class="display-4">Welcome to EMS</h1>
	    		<img alt="#" src="resources/logo.png" style="width:300px"/>
	  		</div>
		</div>
		
		<button type="button" class="btn btn-warning" onclick="document.location.href='viewEmployee'">Show All Employee</button>
		
	</div>
	
	
<%-- 	<br>
	<a href="hello">Click for Hello Service</a>
	<a href="viewEmployee">Click to view All Employees</a>
	<br>--%>
	
<%--	<a href="newEmployee">Click to add the new Employee</a>
	<br>--%>
	
	<script src="resources/jquerylib.js"></script>
	<script src="resources/bootstrap.js"></script>
	<script src="resources/bootstrap.min.js"></script>
	
</body>
</html>