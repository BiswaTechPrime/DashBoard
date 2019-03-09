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

                           
                           
<%-- <form:select path="item.id" class="form-control">
                          <form:option value="none">select item</form:option>
                          <form:options items="${itemlist}" itemValue="id" itemLabel="name"/>
                           </form:select>  --%>
                    <div class="form-group"> 
               
        Select Item:                 
  <select name="item1" class="form-control" style="width: 230px ; margin-left: 1.0em">
     <option value="0">select</option>
     <c:forEach items="${itemlist}" var="ob">
     <option value="${ob.id}">${ob.name}</option>
     </c:forEach>
     
     </select>                
         </div>           
</body>
</html>