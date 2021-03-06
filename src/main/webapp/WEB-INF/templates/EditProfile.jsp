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
   <link href="resources/AdminPage/css/AdminPage.css" rel="stylesheet">
      <link href="resources/NewFile1/css/NewFile1.css" rel="stylesheet">
   
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
        <a class="navbar-brand" href="#" style="font-size: 40px ; color: green">BECH <span style="white"> DO!!!! </span> </a>
     
	
        <br>
     	 
     
        <br>
	
	
       <div class="container" style="padding-left: 900px" >
       
    
	 <a href="/cw/post" class="btn btn-primary btn-default pull-right" style="width: 80% ; background: orange" >Post an ad</a>
	
	
		
		
		
	
	</div>
	
	</div>
 </div>
</header>


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
			<a class="navbar-brand" href="">
				Welcome to Bech DO!
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			
			<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
				<li><a href=" /cw/post " target="_blank">Post An Ad</a></li>
				<li><a href=" /cw/edit " target="_blank">Edit Profile</a></li>
				<!-- <li><a href="  " target="_blank">Recently Ads</a></li> -->
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="/cw/password">Change Password</a></li>
							<li class=""><a href="/cw/phone">Change Phone Number</a></li>
							<li class="divider"></li>
							<li><a href="/admin/logout">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>  
	<center><h1>Change Edit Profile</h1></center>

<div class="container">

<div class="form-group" style="padding-left: 400px;font-size: 20px">
         Enter Name
         <br>
    		<input id="name" name="name" type="text" class="form-control" style="width: 50%" placeholder="Enter name" required>
		</div>
		 <div class="form-group" style="padding-left: 400px;font-size: 20px">
		 Enter Address
		 <br>
    		<input id="address" name="address" type="text" class="form-control"  style="width: 50%" placeholder="Enter New address" required>
		</div>
	 <div class="form-group" style="padding-left: 400px">
         
                <input type="submit" class="btn btn-primary" style="color: black;" value="Edit"/> 
</div>
</div>












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
                        <li> <a href="#"> <i class=" fa fa-facebook"> � </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter"> � </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus"> � </i> </a> </li>
                      
                        <li> <a href="#"> <i class="fa fa-youtube"> � </i> </a> </li>
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
            <p class="pull-left"> Copyright � BECHDO!!! 2016. All right reserved. </p>
            <div class="pull-right">
            </div>
        </div>
    </div>
  
</footer>
		 <script src="resources/AdminPage/js/AdminPage.js"></script>
		 		 <script src="resources/NewFile1/js/NewFile1.js"></script>
		 
		
</body>
</html>