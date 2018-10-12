<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="mango" %>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/bootstrap.css"/>
	<link rel="stylesheet" href="resources/bootstrap.min.css"/>
</head>

<body>
	<nav class="navbar navbar-dark bg-dark">
	  <a href="/MyFirstSpringMVC"><img alt="#" src="resources/logo.png" style="width:70px"/></a>
	</nav>
	<br>
	<div class="container">
		<div class = "row">	
			<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalCenter">
			  Add New Employee
			</button>
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLongTitle">Add New Employee</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <mango:form action = "saveEmployee" method="post">
					  <div class="form-row">
					    <div class="form-group col-md-6">
					      <mango:input path="eid" type="number" class="form-control" placeholder="Employee ID"/>
					    </div>
					    <div class="form-group col-md-6">
					      <mango:input type="text" path ="ename" class="form-control" id="inputPassword4" placeholder="Employee Name"/>
					    </div>
					  </div>
					  
					  <div class="form-row">
					    <div class="form-group col-md-6">
					      <mango:input path="ecity" type="text" class="form-control" id="inputCity" placeholder="Employee City"/>
					    </div>
					    <div class="form-group col-md-6">
					    	<mango:input path="esalary" type="number" class="form-control" id="inputCity" placeholder="Employee Salary"/>
					    </div>
					  </div>
					  	<button type="submit" class="btn btn-warning">Submit</button>
					 	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					</mango:form>
			      </div>
			    
			    </div>
			  </div>
			</div>
		</div>
		<br>
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">ID#</th>
		      <th scope="col">Name</th>
		      <th scope="col">City</th>
		      <th scope="col">Salary</th>
		      <th scope="col">Edit</th>
		      <th scope="col">Delete</th>
		    </tr>
		  </thead>
		  <tbody>
			<c:forEach var= "emp" items="${allemp}">
				<tr>
					<td>${emp.eid}</td>
					<td>${emp.ename}</td>
					<td>${emp.ecity}</td>
					<td>${emp.esalary}</td>
					<td><button type="submit" class="btn btn-warning edit-employee" data-toggle="modal" id="edit" data-target="#exampleModalCenter1">Edit</button></td>
					<td><button type="submit" class="btn btn-danger deleteButton" data-toggle="modal" data-target="#deleteModal${emp.eid}">Delete</button>
						<div class="modal fade" id="deleteModal${emp.eid}" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Delete Employee</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <p>Are you sure you want to delete <b class="enameDelete">HI</b>, Employee Id: <b class="eidDelete">HI</b> ?</p>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button type="button" class="btn btn-warning" onclick="document.location.href='deleteEmployee/${emp.eid}'">Confirm</button>
						      </div>
						    </div>
						    </div>
						  </div>
					</td>
				
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	
	<div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">Edit Employee</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <mango:form action = "saveUpdate" method="post">
			  <div class="form-row">
			    <div class="form-group col-md-6">
			      <mango:input path="eid" type="number" class="form-control" id ="employeeId" placeholder="Employee ID" readonly = "true"/>
			    </div>
			    <div class="form-group col-md-6">
			      <mango:input path ="ename" type="text" class="form-control" id="ename" placeholder="Employee Name" readonly= "true"/>
			    </div>
			  </div>
			  
			  <div class="form-row">
			    <div class="form-group col-md-6">
			      <mango:input path="ecity" type="text" class="form-control" id="ecity" placeholder="Employee City"/>
			    </div>
			    <div class="form-group col-md-6">
			    	<mango:input path="esalary" type="number" class="form-control" id="esalary" placeholder="Employee Salary"/>
			    </div>
			  </div>
			  	<button type="submit" class="btn btn-warning submit-button">Submit</button>
			 	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</mango:form>
	      </div>
	    
	    </div>
	  </div>
	</div>
	<script src="resources/jquerylib.js"></script>
	<script src="resources/bootstrap.js"></script>
	<script src="resources/bootstrap.min.js"></script>
	<script>
	$(document).ready(function() {
		
		$(".edit-employee").click(function(){
			var parent = $(this).parent().parent()[0];
			$("#employeeId").val(parent.children[0].textContent);
			$("#ename").val(parent.children[1].textContent);
			$("#ecity").val(parent.children[2].textContent);
			$("#esalary").val(parent.children[3].textContent);
		});
		$(".deleteButton").click(function(){
			var parent = $(this).parent().parent()[0];
			$(".eidDelete").html(parent.children[0].textContent);
			$(".enameDelete").html(parent.children[1].textContent);
		});
	});
	</script>
</body>
</html>