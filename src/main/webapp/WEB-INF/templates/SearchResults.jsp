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
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <link href="resources/NewFile1/css/NewFile1.css" rel="stylesheet">
            <link href="resources/tabs/Vehicles/css/tabs.css" rel="stylesheet">
                        <link href="resources/tabs/Vehicles/css/tabs1.css" rel="stylesheet">
            
       
                                 <link href="resources/tabs/Vehicles/css/NewTab.css" rel="stylesheet">
         
            
       
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


 <script src="resources/NewFile1/js/NewFile1.js"></script>
		 		 <script src="resources/gallery/gallery.js"></script>
		 	<!-- <script src="resources/slider/slider.js"></script> -->
		 	
    
   


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />

 
<!-- <script>
$(document).ready(function() {
 alert("asdsa") ; 
	$("#subcategory").autocomplete({
		 
		source: '${pageContext.request.contextPath}/search11'
	});
	alert("aaa") ; 
});
	</script>	



        
      
    
   

 <script src="/CRUDSpring/js/jquery.js"></script>
 
        <script type="text/javascript">
        
        function showCity(id){
        
        	alert(id);
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
        xhttp.open("GET","addsubcategory?stateid="+id, true);
        xhttp.send();
      }
        
        
        function search(){
        	
        
        	alert("serchingggggg");
        	var subcategory=document.getElementById("subcategory").value;
        	var state=document.getElementById("state").value;
        	var city=document.getElementById("city").value;
        	
        	
       location.href="bb?subcategory="+subcategory+"&state="+state+"&city="+city;
      /*  location.href="aa?subcategory="+subcategory+"&stateId="+s+"&cityId="+c; */
      }
      
   
         <!--   <script type="text/javascript">
  
        
        function showCity(id){
        
        	alert(id);
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
        
        
        function Serch(){
        
        	alert("serchingggggg");
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
        xhttp.open("GET","serch?stateid="+id, true);
        xhttp.send();
      }

        </script>  -->
        
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

@import url(http://fonts.googleapis.com/css?family=Oswald);

body {
background:#ffffff;
}
.holder {
position:relative;
width:30px;
height:30px;
display: block;
}

#layer-1 {
-webkit-animation-name: spin;
-webkit-animation-duration: 4000ms;
-webkit-animation-iteration-count: infinite;
-webkit-animation-timing-function: linear;
-moz-animation-name: spin;
-moz-animation-duration: 4000ms;
-moz-animation-iteration-count: infinite;
-moz-animation-timing-function: linear;
-ms-animation-name: spin;
-ms-animation-duration: 4000ms;
-ms-animation-iteration-count: infinite;
-ms-animation-timing-function: linear;

animation-name: spin;
animation-duration: 4000ms;
animation-iteration-count: infinite;
animation-timing-function: linear;
}
@-ms-keyframes spin {
    from { -ms-transform: rotate(0deg); }
    to { -ms-transform: rotate(360deg); }
}
@-moz-keyframes spin {
    from { -moz-transform: rotate(0deg); }
    to { -moz-transform: rotate(360deg); }
}
@-webkit-keyframes spin {
    from { -webkit-transform: rotate(0deg); }
    to { -webkit-transform: rotate(360deg); }
}
@keyframes spin {
    from {
        transform:rotate(0deg);
    }
    to {
        transform:rotate(360deg);
    }
}

.shape-4, .shape-5, .shape-6 {

}
.shape-1, .shape-4 {
opacity: 0.2;
}
.shape-2, .shape-5 {
opacity: 0.5;
}
.shape-3, .shape-6 {
opacity: 0.5;
}
h1 {
font-family: 'Oswald', sans-serif;
font-weight: 300;
font-size: 25px;
letter-spacing: -3.5px;
color: #f6f3f3;
position: absolute;
top:60%;
left:45%;
}
h1 span {
color: #f6095d;
}
</style>

</head>

<body>
<!-- <div class="top">
	<div class="top_content">
    
    </div>
</div> -->
  <div id="top">
            
                 <div class="holder">
  
<svg version="1.1" id="layer-1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="100px" height="100px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
	
	<defs>
        <linearGradient id="grad1" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="50%" stop-color="#f94214"/>
            <stop offset="100%" stop-color="#f94214" stop-opacity="0" />
        </linearGradient>
        <linearGradient id="grad2" x1="100%" y1="0%" x2="0%" y2="100%">
            <stop offset="50%" stop-color="#c9f914"/>
            <stop offset="100%" stop-color="#c9f914" stop-opacity="0" />
        </linearGradient>
        <linearGradient id="grad3" x1="100%" y1="100%" x2="0%" y2="0%">
            <stop offset="50%" stop-color="#00FF00"/>
            <stop offset="100%" stop-color="#00FF00" stop-opacity="0" />
        </linearGradient>
    </defs>

<path class="shape-1" fill="url(#grad1)" d="M237.773,56.673c-98.48,0-178.314,79.834-178.314,178.315c0,98.48,79.834,178.314,178.314,178.314
	c98.481,0,178.314-79.834,178.314-178.314C416.088,136.507,336.255,56.673,237.773,56.673z M237.774,384.817
	c-82.749,0-149.829-67.079-149.829-149.829c0-82.75,67.081-149.831,149.829-149.831c82.751,0,149.828,67.082,149.828,149.831
	C387.603,317.738,320.525,384.817,237.774,384.817z"/>
<path class="shape-2" fill="url(#grad2)" d="M247.303,76.867c-98.481,0-178.315,79.834-178.315,178.317
	c0,98.479,79.834,178.314,178.315,178.314c98.481,0,178.314-79.836,178.314-178.314C425.617,156.701,345.784,76.867,247.303,76.867z
	 M247.304,405.013c-82.749,0-149.83-67.08-149.83-149.829c0-82.751,67.081-149.833,149.83-149.833s149.828,67.081,149.828,149.833
	C397.132,337.933,330.053,405.013,247.304,405.013z"/>
<path class="shape-3" fill="url(#grad3)" d="M262.227,56.672c-98.48,0-178.314,79.834-178.314,178.315
	c0,98.48,79.834,178.315,178.314,178.315c98.481,0,178.314-79.835,178.314-178.315C440.541,136.506,360.708,56.672,262.227,56.672z
	 M262.227,384.817c-82.748,0-149.829-67.079-149.829-149.83c0-82.75,67.081-149.831,149.829-149.831
	c82.752,0,149.829,67.082,149.829,149.831C412.056,317.738,344.979,384.817,262.227,384.817z"/>
<path class="shape-4" fill="url(#grad1)" d="M264.227,438.497c98.48,0,178.314-79.834,178.314-178.315c0-98.48-79.834-178.314-178.314-178.314
	c-98.481,0-178.314,79.834-178.314,178.314C85.912,358.663,165.745,438.497,264.227,438.497z M264.226,110.353
	c82.749,0,149.829,67.079,149.829,149.829s-67.08,149.831-149.829,149.831c-82.751,0-149.828-67.082-149.828-149.831
	C114.397,177.432,181.475,110.353,264.226,110.353z"/>
<path class="shape-5" fill="url(#grad2)" d="M252.697,421.303c98.48,0,178.314-79.834,178.315-178.316
	c0-98.479-79.834-178.314-178.315-178.314S74.383,144.508,74.383,242.986C74.383,341.469,154.216,421.303,252.697,421.303z
	 M252.696,93.157c82.749,0,149.83,67.08,149.83,149.829c0,82.752-67.081,149.832-149.83,149.832s-149.828-67.081-149.828-149.832
	C102.868,160.237,169.947,93.157,252.696,93.157z"/>
<path class="shape-6" fill="url(#grad3)" d="M232.773,438.498c98.48,0,178.314-79.834,178.314-178.315
	c0-98.48-79.834-178.315-178.314-178.315c-98.481,0-178.314,79.835-178.314,178.315C54.459,358.664,134.292,438.498,232.773,438.498
	z M232.773,110.353c82.748,0,149.829,67.079,149.829,149.83c-0.001,82.749-67.081,149.831-149.829,149.831
	c-82.752,0-149.829-67.082-149.829-149.831C82.944,177.432,150.021,110.353,232.773,110.353z"/>
</svg>

<h1><span>Bech</span>Do!!</h1>

</div>

 <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">Sign in</a>
  <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">Help</a>
 <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">About us</a>

       
        </div>
<br>
       
<header role="banner"  >
      <div class="container">
      
        
      
        <div class="navbar-header">
          <button data-toggle="collapse-side" data-target=".side-collapse" data-target-2=".side-collapse-container" type="button" class="navbar-toggle pull-left">
    	  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  </button>
		  <br>
        <a class="navbar-brand" href="#" style="font-size: 40px ; color: green">BECH <span style="white"> DO!!!! </span> </a>
     
	
        <br>
     	 
     
        <br>
	
	
       <div class="container" style="padding-left: 900px" >
       
    
	 <a href="<c:url value="post"/>" class="btn btn-primary btn-default pull-right" style="width: 80% ; background: orange" >Post an ad</a>
	
	
		
		
		
	
	</div>
	
	</div>
 </div>
</header>
<br>
<br>
<br>

<%--  <div class="container">
		  
	<div class="row">
	
		     <div class="col-md-2">  
			
                           <form:select class="form-control" path="state" onchange="showCity(this.value)">
                              <option selected>select state</option>
                             <form:options items="${statelist}" itemValue="id" itemLabel="name" />
                        
                           </form:select> 
    
                </div>
                           
                         
                    
		<div class="col-md-2" id="demo" >
		
		  
      <select class="form-control">
      <option value="none">select city</option>
      </select>
				
		
		</div>
		 
		<div class="col-md-8">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-md" placeholder="Search    eg:cars,bikes...." id="subcategory" name="subcategory" />
                    <span class="input-group-btn">
                        <button class="btn btn-md btn-info " type="button"  onclick="Serch()">
                            Search
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
	</div>
 --%>
<%--   <div class="container">
		  
	<div class="row">
	
		     <div class="col-md-2">  
		     
			      
                           <form:select class="form-control" path="state" id="state" onchange="showCity(this.value)">
                              <option selected>select state</option>
                             <form:options items="${statelist}" itemValue="id" itemLabel="name" />
                        
                           </form:select> 
                           
                             <select name="state" class="form-control" >
                               <option value="0">select</option>
                             <c:forEach items="${statelist}" var="ob">
                                  <option value="${ob.id}">${ob.name}</option>
                            </c:forEach>
                           </select>
                </div>
                           
                         
                    
		<div class="col-md-2" id="demo" >
		
		  
      <select class="form-control">
      <option value="none">select city</option>
      </select>
				
		
		</div>
		 
		<div class="col-md-8">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-md" placeholder="Search    eg:cars,bikes...." id="subcategory" name="subcategory" />
                    <span class="input-group-btn">
                        <button class="btn btn-md btn-info " type="button" onclick="search()">
                            Search
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
	</div>

 --%>

				
	<br>
			

<hr>
 <center> <h2 class="page header" style="color:blue; padding-left: 100px">
            Vehicles
          </h2></center>

<div class="container-fluid">
      
      <div class="row row-offcanvas row-offcanvas-left">
        
          <div class="col-md-2 sidebar" style=" border: 1px black">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<!-- Menu -->
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul class="nav navbar-nav">
					 <li><a href="<c:url value="Vehicles"/>">Vehicles</a></li>
              <li><a href="<c:url value="electronics"/>"> Electronics</a></li>
              <li><a href="<c:url value="furnitures"/>" >Furniture</a></li>
              <li><a href="<c:url value="fashion"/>" >Fashion</a></li>
               <li><a href="<c:url value="fashion"/>" >Others</a></li>

				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>

	</div>
</div>  		</div>          <!--toggle sidebar button-->
        
		
          

          
          	<div class="col-md-10 content" >
	  <div class="container text-center">
	<div class="row"> <h1 class="page-header">
            Cars
          </h1>
	
	<div class="col-md-10 content">
		<div class="container" style="width: 90%">
		
		<!--loop-->
            <!-- <div class="panel panel-default">
               <a href=""> <div class="panel-body">
                   <div class="col-md-3 content">
                   	<img alt="" src="http://pngimg.com/upload/small/man_PNG6534.png" style="height: 100px;">
                   </div>
                   <div class="col-md-9 content">
                   	<h4>NAME</h4>
                   	<h4>Address</h4>
                   </div>
                 
                </div>
                </a>
                
            </div>
			 -->
			<!--loop-->
			
			<!-- 2nd loop -->
			
			<!--  <div class="panel panel-default">
               <a href=""> <div class="panel-body">
                   <div class="col-md-3 content">
                   	<img alt="" src="http://pngimg.com/upload/small/man_PNG6534.png" style="height: 100px;">
                   </div>
                   <div class="col-md-9 content">
                   	<h4>NAME</h4>
                   	<h4>Address</h4>
                   </div>
                 
                </div>
                </a>
                
            </div> -->
			
			<!-- 2nd loop -->
			
			<!-- 2nd loop -->
			   <c:if test="${empty upload}">
		  
		    	 <div class="panel panel-default">
                 <div class="panel-body">
             
                     <div style="color:red"> <h2>Sorry!!! There are no items Available </h2> </div>
                  
                 
                </div>
               
                
               </div>
		  
		     </c:if>
			
			
			 <c:if test="${!empty upload}">
		  
			  <c:forEach items="${upload}" var="item">
			 <div class="panel panel-default">
                <div class="panel-body">
             
                   <div class="col-md-3 content">
                   	<img alt="" src="<%=application.getContextPath()%>/resources/images/${item.name}" style="height: 100px;">
                   </div>
                   <div class="col-md-9 content">
                   	<h4>${item.product.title}</h4>
                   	<h4>${item.product.price}</h4>
                   </div>
                  
                 
                </div>
                </a>
                
            </div>
			 </c:forEach>
			 </c:if>
			<!-- 2nd loop -->
			
			<!-- 2nd loop -->
			
			<!--  <div class="panel panel-default">
               <a href=""> <div class="panel-body">
                   <div class="col-md-3 content">
                   	<img alt="" src="http://pngimg.com/upload/small/man_PNG6534.png" style="height: 100px;">
                   </div>
                   <div class="col-md-9 content">
                   	<h4>NAME</h4>
                   	<h4>Address</h4>
                   </div>
                 
                </div>
                </a>
                
            </div> -->
			
			<!-- 2nd loop -->
			
			<!-- 2nd loop -->
			
			<!--  <div class="panel panel-default">
               <a href=""> <div class="panel-body">
                   <div class="col-md-3 content">
                   	<img alt="" src="http://pngimg.com/upload/small/man_PNG6534.png" style="height: 100px;">
                   </div>
                   <div class="col-md-9 content">
                   	<h4>NAME</h4>
                   	<h4>Address</h4>
                   	<h3>More Details</h5>
                   </div>
                 
                </div>
                </a>
                
            </div> -->
			
			<!-- 2nd loop -->
            </div>
		</div>
	
	
	

                    
                            </div>
                        </div>
			<!--loop-->
            </div>
		</div>
          
          <hr>

          
      </div><!--/row-->
	
	
 
  
				
	
	
	
	
	
	
	
	
	
	
	

		<!-- footer start -->
 <footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
         
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3> About us </h3>
                    <ul>
                        <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3> Contact us </h3>
                    <ul>
                         <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3>Careers </h3>
                    <ul>
                      <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3> others </h3>
                    <ul>
                        <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
               <!--  <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> social </h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> SUBSCRIBE <i class="fa fa-long-arrow-right"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                      
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div> -->
            </div>
            <br>
            <br>
            
          <a class="button" href="#">Call Us-1800-123-1234</a>
          
          <div align=center><a href='http://www.counter12.com'><img src='http://www.counter12.com/img-zz22wA63-56.gif' border='0' alt='counter'></a><script type='text/javascript' src='http://www.counter12.com/ad.js?id=zz22wA63'></script></div>
      
        </div>
       
    </div>
   
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © BECHDO!!! 2016. All right reserved. </p>
            <div class="pull-right">
            </div>
        </div>
    </div>
  
</footer>
		
		 		 <script src="resources/NewFile1/js/NewFile1.js"></script>
		 		 		 		 <script src="resources/tabs/Vehicles/js/tabs.js"></script>
		 		 		 		<script src="resources/tabs/Vehicles/js/tabs1.js"></script>
		 		 		 		 
		 		 
		 		
		 		 
		 
		
</body>
</html>