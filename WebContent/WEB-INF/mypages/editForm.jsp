<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="mango" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/resources/mycss.css"/>
</head>
<body>
	<mango:form action = "../saveUpdate" method="post">
		ID : <mango:input path="eid" readonly = "true"/>
		Name : <mango:input path="ename" readonly = "true"/>
		City : <mango:input path="ecity" />
		Salary : <mango:input path="esalary" />
		<input type="submit" value="S A V E - U P D A T E"/>
	</mango:form>
	
	
</body>
</html>