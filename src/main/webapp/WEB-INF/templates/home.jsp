<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello sstl!  
</h1>
<P>  The time on the server is ${serverTime}. </P>

<div>

		<c:forEach items="${productdetails}" var="details">
		${details.title}
			${details.description}
		
		</c:forEach>

</div>


</body>
</html>
