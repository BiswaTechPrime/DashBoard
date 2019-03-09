<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form:form action="/admin/Login" commandName="adminregistration" method="post" modelAttribute="adminregistration">

Hi! user!
It is your profile
<%-- <a href="<c:url value='/cw/logout' />">Logout</a> --%>
<br>
<br>

<div>
<c:forEach items="${listuser}" var="user">

${user.id}
<br>
<br>
${user.name}
<br>
<br>
${user.email}
<br>
<br>
${user.number}
<br>
<br>
${user.address}

</c:forEach>

</div>

</form:form>
<br>
<br>
<a href="/admin/logout">logout</a>
</body>
</html>