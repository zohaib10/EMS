<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="mango" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<mango:form action = "saveEmployee" method="post">
		ID : <mango:input path="eid" />
		Name : <mango:input path="ename" />
		City : <mango:input path="ecity" />
		Salary : <mango:input path="esalary" />
		<input type="submit" value="S A V E"/>
	</mango:form>
	
	
</body>
</html>