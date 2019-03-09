<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="form-group">
Select City:
<%-- <form:select path="city" class="form-control" style="width: 200px ; margin-left: 1.0em">
                          <form:option value="none">select city </form:option>
                          <form:options items="${citylist}" itemValue="id" itemLabel="name"/>
                           </form:select> --%>
      <select name="city1" class="form-control" style="width: 200px ; margin-left: 1.0em">
     <option value="0">select city</option>
     <c:forEach items="${citylist}" var="ob">
     <option value="${ob.id}">${ob.name}</option>
     </c:forEach>
     
     </select>  
                      
</div>

</body>
</html>