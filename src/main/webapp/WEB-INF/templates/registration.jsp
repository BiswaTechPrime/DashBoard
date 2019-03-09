<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>


     <script type="text/javascript">
  
        
        function cc(){
        
        	alert("ccccccccc");
        var xhttp;
        if (window.XMLHttpRequest) {
          // code for modern browsers
          xhttp = new XMLHttpRequest();
          } else {
          // code for IE6, IE5
          xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhttp.onreadystatechange = function() {
          if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("demo").innerHTML = xhttp.responseText;
          }
        };
        xhttp.open("GET","addcity?stateid="+id, true);
        xhttp.send();
      }
        </script>

<!-- <style type="text/css">

@import url(http://fonts.googleapis.com/css?family=Roboto:400);
.error{
color: "red"
}


</style> -->

<!-- <script type="text/javascript">


function validatePassword(){
	var password = document.getElementById("password")
	  , Confirmpassword = document.getElementById("Confirmpassword");
  if(password.value != Confirmpassword.value) {
    Confirmpassword.setCustomValidity("Passwords Don't Match");
  } else {
    Confirmpassword.setCustomValidity('');
  }
}

password.onchange = validatePassword;
Confirmpassword.onkeyup = validatePassword;
   
</script> -->

<style type="text/css">
#top {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 999;
  width: 100%;
  height: 80px;
  background-color: blue;
}


</style>

</head>

<body onload="cc()">
<!-- <div class="top">
	<div class="top_content">
    
    </div>
</div> -->
  <div id="top">
            
 <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%">Sign in</a>
  <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%">About us</a>
   <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%">Help</a>
       
        </div>

<div class="container">
<div style= color:red>
   ${message} 
    </div>
	
<%-- 
         <c:url var="addAction" value="/cw/add"></c:url>
<form:form action="${addAction}" commandName="user" id="form1" modelAttribute="user">
  --%>
 
        <form action="/cw/add" commandName="user" method="post" modelAttribute="user">
    
 
	             <div>
                  Name
                  <input type="name" name="name" required/>
<%--                   <form:errors path="name" cssClass="error"/>
 --%>				</div>
				<br>
		
		

	           <div>       
                Email
                 <input type="email" name="email" required/>
                  <%--  <form:errors path="email" cssClass="error"/> --%>
				</div>
				 <br>
			
			    <div>
                 Password
                 <input type="password" align="center"  name="password" required/>
                 
				</div>
				<br>
				
				  <div>
                 Confirm Password
                 <input type="password"   name="password" required/>
                 
				</div>
				<br>
				
					
			  <div>
        
                  Address
                    <textarea name="address" required></textarea>
				</div>
				<br>




	<%-- <spring:bind path="sex">
		  <div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Sex</label>
			<div class="col-sm-10">
				<label class="radio-inline"> 
                                  <form:radiobutton path="sex" value="M" /> Male
				</label> 
                                <label class="radio-inline"> 
                                  <form:radiobutton path="sex" value="F" /> Female
				</label> <br />
				<form:errors path="sex" class="error" />
			</div>
		  </div>
		</spring:bind>
		<br>
 	
		 <input type="password" name="password" placeholder="Password" id="password" required>
        <input type="password" name="Confirmpassword" placeholder="Confirm Password" id="Confirmpassword" required>

        <button type="submit" onsubmit="validatePassword();" class="pure-button pure-button-primary">Confirm</button>
 --%>
	
		<div>
		<input type="submit" value="save" />
	
	
		
	
	
		<input  type="reset" value="reset" />
		
		</div>
		

		

	
	
	</form>

</div>



</body>
</html>