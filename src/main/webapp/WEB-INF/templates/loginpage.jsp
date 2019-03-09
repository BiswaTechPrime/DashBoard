<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

<!-- <style type="text/css">

@import url(http://fonts.googleapis.com/css?family=Roboto:400);
.error{
color: "red"
}


</style> -->

   

</head>
<body  background= http://www.knowlogic.center/certificates/images/courseimages/certified-business-analysis-professional.jpg
>
<div style= color:green>
   ${a} 
    </div>
    
 <div>${msg}</div>
 
<div class="container">

	
<%-- 
         <c:url var="addAction" value="/cw/add"></c:url>
<form:form action="${addAction}" commandName="user" id="form1" modelAttribute="user">
  --%>
 
        <form:form action="/cw/Login" commandName="Login" method="post" modelAttribute="Login">
 
	             <div>
                  email
                  <input type="email" align="center" name="email" required/>
                </div>
				<br>
		
		

				
			    <div>
                 password
                 <input type="password" align="center"  name="password" required/>
                 
				</div>
				<br>

	
		<div>
		<input type="submit" value="Login" />
		<a href="/cw/User">Register</a>
	
	
		
	
	
		</div>
		

		

	
	
	</form:form>

</div>

<!-- Logout messege show -->

<div style= color:green>${msg1}</div>


</body>
</html>