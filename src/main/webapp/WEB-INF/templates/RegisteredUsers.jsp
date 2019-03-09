<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
 
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  
 <!--  css starts -->
 
      <link href="resources/AdminPage/css/AdminPage.css" rel="stylesheet">
 
  <!--  css ends -->
 
 <!-- <script>
$(document).ready(function(){
	
	 $("#btnDelete").click(function(){
		 alert("hello");
		  var val;
	         $(':checkbox:checked').each(function(i){
		           val = val+ "," +$(this).val();
		           alert(val);
		         });
	         $.ajax({
	        	    type : "POST",
	        	    url : "selectedDelete",
	        	    data : {
	        	        myArray: val 
	        	    }/* ,
	        	    success : function(response) {
	        	       // do something ... 
	        	    },
	        	    error : function(e) {
	        	       alert('Error: ' + e);
	        	    } */
	        	}); 

    });
});
</script> -->

<script>
function del()
{
	alert("asdasd");
	var s="";
	var v=document.getElementsByName("cc");
	var j=0;
	for(var i=0;i<v.length;i++)
		{
		if(v[i].checked)
			{
			if(j==0){
				s=v[i].value;
			}
			else{
			s=s+","+v[i].value;
			}
			j++;
			alert("v1 "+s);
			}
		}
	alert("s "+s);
	window.location.href="selectedDelete?s="+s;
}

function mail()
{
	alert("welcome in mail function");
	var s="";
	var v=document.getElementsByName("cc");
	var j=0;
	for(var i=0;i<v.length;i++)
		{
		if(v[i].checked)
			{
			if(j==0){
				s=v[i].value;
			}
			else{
			s=s+","+v[i].value;
			}
			j++;
			alert("v1 "+s);
			}
		}
	alert("s "+s);
	window.location.href="automail?s="+s;
}

 
 
 
</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
			MENU
			</button>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				Administrator
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="http://www.pingpong-labs.com" target="_blank">Visit Site</a></li>
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="/admin/logout">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>  	
	
	<div class="container-fluid main-container">
  		
	
	
	
	
								<%-- <c:url var="addAction" value="/CRUDSpring/add"></c:url>  --%>

								<form:form action="/CRUDSpring/add" commandName="registration1" id="form1" modelAttribute="registration1">

                           <table class="table table-striped table-bordered table-hover" id="table2">
													
														<tr class="info">
															<td><h1>Registration Form:</h1></td>															
														</tr>
												
										
											
												
					                     <tr>
					                     <c:if test="${!empty registration1 .username}">
					                     <td><form:label path="id"><spring:message text="ID" /></form:label></td>
										 <td><form:input path="id" readonly="true" size="8" disabled="true" />
											 <form:hidden path="id" /></td>
										 </c:if>	
							             </tr>					
												
											
										
													
											<tr>
											<td>username</td> 
											<td><form:input path="username" readonly="false" size="8" id="username"/></td></tr>
											<tr><td>password</td>
											<td><form:input path="password" readonly="false" size="8" id="password"/></td></tr>
											<tr>
											<td>Email</td> 
											<td><form:input path="email" readonly="false" size="8" id="email"/></td></tr>
											
											
											
											<tr><td>course</td>
											<%-- <td><c:out value="${registration1 .course}"></c:out></td> <td>--%>
											
											
											 <td>
											<%-- <c:if test="${!empty list}">
											<form:checkbox path="course" value="Java" 
											<c:forEach items="${list}" var="reg">
											<c:if test="${list.contains('C++')}">checked</c:if>
											</c:forEach>></form:checkbox>
											
											<form:checkbox path="course" value="C++" 
											<c:forEach items="${list}" var="reg">
											<c:if test="${list.contains('C++')}">checked</c:if>
											</c:forEach>></form:checkbox>
											
											<form:checkbox path="course" value=".Net" 
											<c:forEach items="${list}" var="reg">
											<c:if test="${list.contains('.Net')}">checked</c:if>
											</c:forEach>></form:checkbox>
                                          
											</c:if>
											
											<%List<String> l=(List<String>)request.getAttribute("list");
											l.clear();%>  --%>
											<%-- <c:if test="${!empty list}"> --%>
											
											<form:checkbox path="course" id="course" value="Java"></form:checkbox>Java
											<form:checkbox path="course" value="C++"></form:checkbox>C++
											<form:checkbox path="course" value=".Net"></form:checkbox>.Net											
											
											<%-- </c:if> --%>
											
											</td>
											</tr>
											
											<tr><td>gender</td>
											<td><form:radiobutton path="gender" id="gender" value="M"/>Male 
                                             <form:radiobutton path="gender" value="F"/>Female </td></tr>
											<tr><td>country</td>
											<td><form:select path="country" id="country">
                                             <form:option value="SELECT" label="--- Select ---"/>
                                             <form:option value="US"/>                                 
                                             <form:option value="CHINA"/>
                                             <form:option value="INDIA"/>
                                             
                                              </form:select></td></tr>
											
											<tr>
											 <tr><td>
											 <c:if test="${empty registration1 .username}">	
											  <button class="btn btn-success" type="submit"><i class="fa fa-save"></i>Save</button>														
													
												</c:if>
								                 <c:if test="${!empty registration1 .username}">
								                <input type="submit" value="<spring:message text="Update"/>" class="btn  btn-info" />
													<%-- <input type="submit" value="<spring:message text="Update"/>" class="btn  btn-info" /> --%>
												</c:if>
												
												
					                          </td>  
					                          <td>           
												<button class="btn btn-primary" type="reset"><i class=" fa fa-refresh"></i>Reset</button>			
											</td>
											</tr>
						</table>
 </form:form>



                                            
                      
                                        <%--  <c:if test="${!empty listReg}"> --%>
												<table class="table table-striped table-bordered table-hover" id="table2">
													<thead>
														<tr class="info">
															<th width="80">ID</th>
															<th width="60">UserName</th>
															<th width="60">Password</th>
															<th width="60">Email</th>
															<th width="60">Course</th>
															<th width="60">Gender</th>
															<th width="120">Country</th>
															<th width="120">Edit</th>
															<th width="120">Delete</th>
															
															
															
															
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${listReg}" var="reg">
															<tr class="active">
															
																<td> <input id="checkbox" name="cc" type="checkbox" value="${reg.id},${reg.email}" /></td>
																<td>${reg.id}</td>
																<td>${reg.username}</td>
																<td>${reg.password}</td>
																<td>${reg.email}</td>
																<td>${reg.course}</td>
																<td>${reg.gender}</td>
																<td>${reg.country}</td>
																<td class="center"><a href="<c:url value='edit?id=${reg.id}' />"><i class="fa fa-edit ">Edit</i></a></td>	
																<td class="center"><a href="<c:url value='/CRUDSpring/delete/${reg.id}' />"><i class="fa fa-trash-o">Delete</i></a></td>													
															</tr>
														</c:forEach>
		
													</tbody>
												</table>
												<input type="button" value="Delete" id="btnDelete" onclick="del()"  />
												<input type="button" value="Mail" id="btnMail" onclick="mail()"  />
											<%-- 	</c:if> --%>
										 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  		<footer class="pull-left footer">
  			<p class="col-md-12">
  				<hr class="divider">
  				Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a>
  			</p>
  			
  		</footer>
  	</div>
  	

<!-- javascript starts -->

     <script src="resources/AdminPage/js/AdminPage.js"></script>
      <script src="resources/AdminPage/RegisteredUsers/js/RegisteredUsers.js"></script>

<!-- javascript ends -->
</body>
</html>
