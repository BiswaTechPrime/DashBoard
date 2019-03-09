<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bech do.com</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
 
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);
 @import url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css);
 @import url('http://fonts.googleapis.com/css?family=Raleway:400,200');
@import url('http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css');

   
      pre {
          tab-size: 40;
      }
body {
  font-family: 'Open Sans', 'sans-serif';
  font-size:100%;
     padding-top: 50px;
          position: relative;
         
}
header{
height: 50px;
width: 100%}
.navbar-inverse .navbar-fixed-top{
height: 10px;
width: 50px}


.post-ad-btn{

color: blue;

}


.carousel-control {
  width: 30px;
  height: 30px;
  top: -35px;

}
.left.carousel-control {
  right: 30px;
  left: inherit;
}
.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right {
  font-size: 12px;
  background-color: #fff;
  line-height: 30px;
  text-shadow: none;
  color: #fffff;
  border: 1px solid #ddd;
}

   
      @media screen and (max-width: 768px) {
          .side-collapse-container{
              width:100%;
              position:relative;
              left:0;
              transition:left .4s;
          }
          .side-collapse-container.out{
              left:200px;
          }
          .side-collapse {
              top:50px;
              bottom:0;
              left:0;
              width:200px;
              position:fixed;
              overflow:hidden;
              transition:width .4s;
          }
          .side-collapse.in {
              width:0;
          }
    	  .fn-1 ul li a{
		  color:#fff!important;
		  }
		  .side-collapse {
 
  overflow-y: scroll;
  
}
      }
        .carousel-indicators{
	   position:absolute;
       right:20px;
	    top:20px;
	    
	   }
	   .glyphicon-chevron-down:BEFORE{
	   margin-left: 20px}
	   body {
    padding-top: 30px;
}
.dropdown.dropdown-lg .dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
}
.btn-group .form-horizontal .btn[type="submit"] {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.form-horizontal .form-group {
    margin-left: 40;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}

@media screen and (min-width: 768px) {
    #adv-search {
        width: 100px;
        margin: 0 auto;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 50px;
    }
}

body {
    padding-top: 50px;
}
.dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}
.btn-group .form-horizontal .btn[type="submit"] {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.form-horizontal .form-group {
    margin-left: 0;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}


  
    .col-item
{
    border: 1px solid #E1E1E1;
    border-radius: 5px;
    background: #FFF;
    
}
.col-item .photo img
{
    margin: 0 auto;
    width: 100%;
}

.col-item .info
{
    padding: 10px;
    border-radius: 0 0 5px 5px;
    margin-top: 1px;
}

.col-item:hover .info {
    background-color: #F5F5DC;
}
.col-item .price
{
    /*width: 50%;*/
    float: left;
    margin-top: 5px;
}

.col-item .price h5
{
    line-height: 20px;
    margin: 0;
}

.price-text-color
{
    color: #219FD1;
}

.col-item .info .rating
{
    color: #777;
}

.col-item .rating
{
    /*width: 50%;*/
    float: left;
    font-size: 17px;
    text-align: right;
    line-height: 52px;
    margin-bottom: 10px;
    height: 52px;
}

.col-item .separator
{
    border-top: 1px solid #E1E1E1;
}

.clear-left
{
    clear: left;
}

.col-item .separator p
{
    line-height: 20px;
    margin-bottom: 0;
    margin-top: 10px;
    text-align: center;
}

.col-item .separator p i
{
    margin-right: 5px;
}
.col-item .btn-add
{
    width: 30%;
    float: left;
}

.col-item .btn-add
{
    border-right: 1px solid #E1E1E1;
}

.col-item .btn-details
{
    width: 30%;
    float: left;
    padding-left: 10px;
}
.controls
{
    margin-top: 20px;
}
[data-slide="prev"]
{
    margin-right: 20px;
}
.full {
    width: 100%;	
}
.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}
.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}


.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}
.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}
.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}
.social li a {
	color: #EDEFF1;
}
.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}
.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}
.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;	
}
.box :hover{
    border:1px #036 solid;
	padding:10px 10px 10px;
	box-shadow:2px 2px 10px;
    background:blue;
}
.button {
  background-color: #004A7F;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  border: none;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Arial;
  font-size: 20px;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
}
@-webkit-keyframes glowing {
  0% { background-color: #722d0f; -webkit-box-shadow: 0 0 3px #722d0f; }
  50% { background-color: #FF0000; -webkit-box-shadow: 0 0 40px #FF0000; }
  100% { background-color:#722d0f; -webkit-box-shadow: 0 0 3px #722d0f; }
}

@-moz-keyframes glowing {
  0% { background-color: #722d0f; -moz-box-shadow: 0 0 3px #722d0f; }
  50% { background-color: #FF0000; -moz-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #722d0f; -moz-box-shadow: 0 0 3px #722d0f; }
}

@-o-keyframes glowing {
  0% { background-color:#722d0f; box-shadow: 0 0 3px #722d0f; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #722d0f; box-shadow: 0 0 3px #722d0f; }
}

@keyframes glowing {
  0% { background-color: #722d0f; box-shadow: 0 0 3px #722d0f; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #722d0f; box-shadow: 0 0 3px #722d0f; }
}

.button {
  -webkit-animation: glowing 1500ms infinite;
  -moz-animation: glowing 1500ms infinite;
  -o-animation: glowing 1500ms infinite;
  animation: glowing 1500ms infinite;
}
</style>

<script  type="text/javascript"></script>
<script type = "text/javascript" src ="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


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
        xhttp.open("GET","addcity?stateid="+id, true);
        xhttp.send();
      }
        

        
      /*    function showBike(){
            
        	alert("bikeeeeeeee");
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
            document.getElementById("bike").innerHTML = xhttp.responseText;
          }
        };
        xhttp.open("GET","findBike", true);
        xhttp.send();
      } 
         */
        
function showCar(){
            var v="car";
        	alert("carrrrrrrrr"+v);
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
            document.getElementById("car").innerHTML = xhttp.responseText;
          }
        };
        xhttp.open("GET","findBike?car="+v, true);
        xhttp.send();
      }
  
        </script>
        
        
        
<script type="text/javascript">
$(document).ready(function() {   
    var sideslider = $('[data-toggle=collapse-side]');
    var sel = sideslider.attr('data-target');
    var sel2 = sideslider.attr('data-target-2');
    sideslider.click(function(event){
        $(sel).toggleClass('in');
        $(sel2).toggleClass('out');
    });
});


$(document).ready(function(){    
$(".dropdown").hover(            
function() {
    $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
    $(this).toggleClass('open');        
},
function() {
    $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
    $(this).toggleClass('open');       
}
);
$('#about_us_dropdown').slideDown();
$('#about_us_dropdown').toggleClass('open');
});</script>
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

<body onload="showCar()">
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
       
    
	 <a href="<c:url value="post"/>" class="btn btn-primary btn-default pull-right" style="width: 80% ; background: orange" >Post an ad</a>
	
	
		
		
		
	
	</div>
	
	</div>
 </div>
</header>
 
	

       <br>   
  <!--  <div class="container">
    <div class="input-group">
    <div class="input-group-btn search-panel ">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"   >
		<span id="search_concept">LOCATION</span> <span class="caret"></span>
		</button>
		
			 <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by</label>
                                    <select class="form-control">
                                        <option value="0">west bengal</option>
                                        <option value="1">maharastra</option>
                                        <option value="2">delhi</option>
                                        <option value="3">madhya pradesh</option>
                                        <option value="4">uttar pradesh</option>
                                    </select>
                                  </div>
                                  </form>
                                  <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by</label>
                                    <select class="form-control">
                                        <option value="0">west bengal</option>
                                        <option value="1">maharastra</option>
                                        <option value="2">delhi</option>
                                        <option value="3">madhya pradesh</option>
                                        <option value="4">uttar pradesh</option>
                                    </select>
                                  </div>
                                 
                                  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                </form>
                           </div>
                     

		
	<input type="hidden" name="search_param" value="name" id="search_param">		 
	<input type="text" class="form-control " name="q" placeholder="Search.............eg: cars,bikes...." id="search_key" value="">
	 <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by</label>
                                    <select class="form-control">
                                        <option value="0" selected>All </option>
                                        <option value="1">cars</option>
                                        <option value="2">bikes</option>
                                        <option value="3">furniture</option>
                                        <option value="4">jobs</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">tab1</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Contains the words</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                </form>
                            </div>
                        </div>
                        <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                        
                    </div>
                </div>
           
	</div>
	</div>
	</div>

        -->
   
     
   
               
         <%--  <form:form action="" modelAttribute="state"> --%>
          
                 <%--           
                    <select class="form-control" path="state">
                    <option value="" class="active">SelectState</option>
                   <options items="${statelist}" itemValue="id" itemLabel="name"/>
                    
                    
				 <option value="">Select city</option>
					<option value="">Midnapur</option>
					<option value="">North Kolkata</option>
					<option value="">South Kolkata</option>
					<option value="">Salt Lake</option>
					<option value="">Bidhannagar</option> 
				</select> --%>
                           
	
		<%-- </form:form> --%>
		
		  <div class="container">
		  
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
                    <input type="text" class="form-control input-md" placeholder="Search    eg:cars,bikes...." />
                    <span class="input-group-btn">
                        <button class="btn btn-md btn-info " type="button" >
                            Search
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
	</div>


		
  
   
      
     
        <div class="container" style="padding-top: 80px">
    		<div class="row" >
				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						
	<ol class="carousel-indicators" style="padding-top: 350px;">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							<li data-target="#carousel-example-generic" data-slide-to="4"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
							<img src="https://couponslite.com/wp-content/uploads/2016/04/slide-3.jpg" alt="slide-3"  style="width:1200px;height:400px" />
								</div>
							<div class="item">
							<img src="http://www.galco.com/images/homepage/home-banner-slider1-md.jpg" alt="slider-1"  style="width:1200px;height:400px" />
								</div>	
							<div class="item">
							<img src="http://paragontechweb.com/wp-content/uploads/2016/05/Slide1.png" alt="slide1"  style="width:1200px;height:400px" />
								
							</div>
							<div class="item">
							<img src="http://www.free-classifieds-ads.co.uk/wp-content/uploads/2016/05/free-classifieds-ads-uk-post-free-ads-community-pets-puppies-dogs-cats-cars-vans-business-property-rent-buy-services-jobs-online-advertising-site-free-classifieds-ads-uk-.jpg" alt="classifieds ads"  style="width:1200px;height:400px" />
								
							</div>
							<div class="item">
							<img src="http://route66thailand.com/wp-content/uploads/2015/03/Slide-11.jpg" alt="slide-11"  style="width:1200px;height:400px" />
							</div>
								 <!-- Left and right controls -->
  <a class=" carousel-control left" href="#carousel-example-generic" role="button" data-slide="prev" >
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class=" carousel-control right" href="#carousel-example-generic" role="button" data-slide="next" >
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  							
							</div>
						
						</div>
						
					</div>
				</div>
				</div>
				<br>
				<br>
		<!-- start tabs -->
		
	<div class="container">
   <div class="col-md-4 box">
   <img src="https://wallpaperscraft.com/image/porsche_cars_city_sunset_83884_1920x1080.jpg" class="img-responsive">CARS
   </div>
  
   <div class="col-md-4 box">
    <img src="http://greenywallpapers.com/resizes/1/210821-bikes-heavy-wallpapers-1920x1080.jpg" class="img-responsive">BIKES
   </div>
   
   <div class="col-md-4 box">
    <img src="https://wallpaperscraft.com/image/living_room_sofa_furniture_style_75503_1920x1080.jpg" class="img-responsive">FURNITURE
   </div>
   
   <div class="clearfix"></div><br>
   
   
    <div class="col-md-4 box">
   <img src="https://www.talentsquare.com/wp-content/uploads/2013/12/Find_Jobs.jpg" class="img-responsive">JOBS
   </div>
   
   <div class="col-md-4 box">
    <img src="https://wallpaperscraft.com/image/sony_mobile_xperia_zr_colour_phones_92306_1920x1080.jpg" class="img-responsive">MOBILES
   </div>
   
   <div class="col-md-4 box">
    <img src="https://i.ytimg.com/vi/CWM33BgKzvM/maxresdefault.jpg" class="img-responsive">LAPTOPS
   </div>
   
</div>
<br>
<br>
<br>
	
		
		<!-- end tabs -->
	  <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>
                   recently added cars</h3>
            </div>
            <div class="col-md-2">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row">
                        <div class="col-sm-1">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://carpics21.com/wp-content/uploads/2015/08/2012-Camaro-Street-Car-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                              bmw</h5>
                                            <h5 class="price-text-color">
                                               200000</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-1" id="car">
                        
                        
                        </div>
                        
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://carinsurance-auto.net/wp-content/uploads/2016/01/tips-Car-Insurance-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               audi</h5>
                                            <h5 class="price-text-color">
                                              5000000</h5>
                                        </div>
                                      
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://freshwallpapers.net/imagecache/thumbnails/4294/250x150.png" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               maruthi</h5>
                                            <h5 class="price-text-color">
                                                600000</h5>
                                        </div>
                                      
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://www.autophotonews.com/wp-content/uploads/2015/10/2016-mahindra-thar-car-brochures-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               gjhhhdgu</h5>
                                            <h5 class="price-text-color">
                                               654341</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                     
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://carpics21.com/wp-content/uploads/2015/04/Maserati-hot-car-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               gjhhhdgu</h5>
                                            <h5 class="price-text-color">
                                               654341</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://www.hockmywheels.com.au/wp-content/uploads/2014/12/car-parts-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                                aaaaa</h5>
                                            <h5 class="price-text-color">
                                               100000</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                      
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://r.hswstatic.com/w_250/h_150/gif/reptilian-brain-car-manufacturing-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               eeeee</h5>
                                            <h5 class="price-text-color">
                                               456787</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                     
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://www.autophotonews.com/wp-content/uploads/2016/05/2018-audi-a5-model-yearfirst-spy-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               ggggggg</h5>
                                            <h5 class="price-text-color">
                                               54654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://raredelights.com/wp-content/uploads/2011/05/Jaguar-C-X75-Hybrid-Concept-Car-3-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               gjhhhdgu</h5>
                                            <h5 class="price-text-color">
                                               654341</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://s.hswstatic.com/gif/hybrid-car-pictures-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               gjhhhdgu</h5>
                                            <h5 class="price-text-color">
                                               654341</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://s.hswstatic.com/gif/exotic-car-pictures-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               gjhhhdgu</h5>
                                            <h5 class="price-text-color">
                                               654341</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://raredelights.com/wp-content/uploads/2011/03/Imperia-GP-the-first-Hybrid-Car-2-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               ryhyrh</h5>
                                            <h5 class="price-text-color">
                                               56985</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>
                   recently added bikes</h3>
            </div>
            <div class="col-md-2">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn-primary" href="#carousel-example-generic"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-primary" href="#carousel-example-generic"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://raredelights.com/wp-content/uploads/2013/03/Custom-Gravedigger-Honda-CB750-by-It-Rocks-Bikes-3-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fghfghb</h5>
                                            <h5 class="price-text-color">
                                               34567</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://desktopwallpapers.co/wp-content/uploads/2014/03/Ducati-Bikes-5-250x150.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                        
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://2.imimg.com/data2/JC/UD/IMFCP-3449810/images-pulsar-250x250.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/03/31/thumbnails/193133601in468166.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://2.imimg.com/data2/NG/NK/IMFCP-2364915/electra-5sjpg-250x250.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://freshwallpapers.net/imagecache/thumbnails/329/250x150.png" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fhjtyhb</h5>
                                            <h5 class="price-text-color">
                                                56547</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/04/19/thumbnails/212360801in422827.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                                ghjhgnj</h5>
                                            <h5 class="price-text-color">
                                               456456</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                      
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/04/24/thumbnails/219362241in379729.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/04/24/thumbnails/219284339in162080.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                      
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/05/19/thumbnails/240742621in237006.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               fgjhuj</h5>
                                            <h5 class="price-text-color">
                                                34654</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                        
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/05/06/thumbnails/228529039in119097.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                              rtyhrt</h5>
                                            <h5 class="price-text-color">
                                                546456</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                       
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="http://in.tixuz.com/adsimg/1/2016/06/01/thumbnails/250711437in300479.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                               ghjfthj</h5>
                                            <h5 class="price-text-color">
                                                56435</h5>
                                        </div>
                                       
                                    </div>
                                    <div class="separator clear-left">
                                     
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<!-- footer start -->
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
         
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> About us </h3>
                    <ul>
                        <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Contact us </h3>
                    <ul>
                         <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>Careers </h3>
                    <ul>
                      <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> others </h3>
                    <ul>
                        <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
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
                </div>
            </div>
          <a class="button" href="#">Call Us-1800-123-1234</a>
          
          <div align=center><a href='http://www.counter12.com'><img src='http://www.counter12.com/img-zz22wA63-56.gif' border='0' alt='counter'></a><script type='text/javascript' src='http://www.counter12.com/ad.js?id=zz22wA63'></script></div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © SEHRISH SOFTECH 2016. All right reserved. </p>
            <div class="pull-right">
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
</body>
</html>