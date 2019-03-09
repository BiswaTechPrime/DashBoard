<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  
  
 

 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


 <script src="resources/NewFile1/js/NewFile1.js"></script>
		 		 <script src="resources/gallery/gallery.js"></script>
		 	<!-- <script src="resources/slider/slider.js"></script> -->
		 	
    
    <style type="text/css">
    .topspace{
    margin:100px auto;max-width:805px;
    }
    </style>


 
<script>
$(document).ready(function() {
 alert("asdsa") ; 
	$("#subcategory").autocomplete({
		 
		source: '${pageContext.request.contextPath}/search11'
	});
	alert("aaa") ; 
});
	</script>	

   <link href="resources/gallery/gallery.css" rel="stylesheet">


   <link href="resources/NewFile1/css/NewFile1.css" rel="stylesheet">
   
    <!--   <link href="resources/slider/slider.css" rel="stylesheet"> -->
    <!-- <link href="resources/slider/slider.css" rel="stylesheet"> -->
   
<!-- 

 <script src="/CRUDSpring/js/jquery.js"></script> -->
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
        
        
        function search(){
        	
        
        	alert("serchingggggg");
        	var subcategory=document.getElementById("subcategory").value;
       location.href="aa?subcategory="+subcategory;
      /*  location.href="aa?subcategory="+subcategory+"&stateId="+s+"&cityId="+c; */
      }

     
        </script>
        
        		 		
        

       
     
<!-- autoconplete plugins -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<!-- autoconplete plugins -->

</head>
<!--  New Style -->
<!--  
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
<div class="top">
	<div class="top_content">
    
    </div>
</div>
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
<br> -->

<!-- new style -->
      <body>
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
			
                           <form:select class="form-control" path="state" id="state" onchange="showCity(this.value)">
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
                        <button class="btn btn-md btn-info " type="button" onclick="search()">
                            Search
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
	</div>
<br><br><br>

<!-- slider starts -->



    <!-- slider ends -->
   
      
     
       <!--  <div class="container-fluid" style="padding-top: 80px;padding-left: 40px">
    		<div class="row" >
				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						Indicators
						
	<ol class="carousel-indicators" style="padding-top: 350px;">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							<li data-target="#carousel-example-generic" data-slide-to="4"></li>
						</ol>

						Wrapper for slides
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
								 Left and right controls
  <a class=" carousel-control left" style="color: white" href="#carousel-example-generic" role="button" data-slide="prev" >
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
				</div> -->
				<br>
				<br>
		<!-- start tabs -->
		
     <div class="container">
   <div class="col-md-4 box">
     <a href="<c:url value="cars"/>"> <img src="https://wallpaperscraft.com/image/porsche_cars_city_sunset_83884_1920x1080.jpg" class="img-responsive"></a>CARS
   </div>
  
   <div class="col-md-4 box">
     <a href="<c:url value="bike"/>">  <img src="http://greenywallpapers.com/resizes/1/210821-bikes-heavy-wallpapers-1920x1080.jpg" class="img-responsive"></a>BIKES
   </div>
   
   <div class="col-md-4 box">
      <a href="<c:url value="cycle"/>"> <img src="https://wallpaperscraft.com/image/living_room_sofa_furniture_style_75503_1920x1080.jpg" class="img-responsive"></a>FURNITURE
   </div>
   
   <div class="clearfix"></div><br>
   
   
    <div class="col-md-4 box">
     <a href="<c:url value="cycle"/>"> <img src="https://www.talentsquare.com/wp-content/uploads/2013/12/Find_Jobs.jpg" class="img-responsive"></a>JOBS
   </div>
   
  <!--  <div class="col-md-4 box">
    <img src="https://wallpaperscraft.com/image/sony_mobile_xperia_zr_colour_phones_92306_1920x1080.jpg" class="img-responsive">MOBILES
   </div>
   
   <div class="col-md-4 box">
    <img src="https://i.ytimg.com/vi/CWM33BgKzvM/maxresdefault.jpg" class="img-responsive">LAPTOPS
   </div> -->
   
</div>
<br>
<br>
<br>
	
	
	
	<!-- gallery -->
	
	 <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>Recently Added Cars</h3>
            </div>
            <div class="col-md-3">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            
                   <!-- Start of: 1st Four items -->
                   
                <div class="item active">
                    <div class="row">
                    	 
                    	<c:forEach items="${listCar}" var="product">
                        <div class="col-sm-3">
                         
                             <div class="col-item">
                             
                             
                                <div class="info">
                                    <div class="row">
                                  
                                        <div class="price col-md-6">
                                            <h5>Product A</h5>
                                            <h5 class="price-text-color">${product.price}</h5>
                                        </div>
                                        
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="<%=application.getContextPath()%>/resources/images/${product.name}" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="<c:url value='/moredetails?id=${product.id}'  />" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                
                         
                           </div>
                            
                        </div>
						</c:forEach>
                       
                       
                    </div>
                    
              
                </div>
                
                
                   <!-- End of:  1st Four items -->
                
                
                
                <div class="item">
                    <div class="row">
                    
                       <c:forEach items="${listCar2}" var="car2">
                    
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Product</h5>
                                            <h5 class="price-text-color">${car2.price}</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="<%=application.getContextPath()%>/resources/images/${car2.name}" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="<c:url value='/moredetails?id=${car2.id}'  />" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        </c:forEach>

                        <!-- <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Product</h5>
                                            <h5 class="price-text-color">$19.99</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="http://www.prepbootstrap.com/Content/images/template/productslider/product_002.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div> -->
                       <!--  <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Product</h5>
                                            <h5 class="price-text-color">$1.99</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="http://www.prepbootstrap.com/Content/images/template/productslider/product_003.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>Product</h5>
                                            <h5 class="price-text-color">$1.09</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="http://www.prepbootstrap.com/Content/images/template/productslider/product_001.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
	 
	<!--  ===============================================B-I-K-E======================================================= -->
	 
	  <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>Recently Added Bikes</h3>
            </div>
            <div class="col-md-3">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row">
                    	 
                    	<c:forEach items="${listBike}" var="bike1">
                        <div class="col-sm-3">
                         
                             <div class="col-item">
                             
                             
                                <div class="info">
                                    <div class="row">
                                  
                                        <div class="price col-md-6">
                                            <h5>${bike1.title}</h5>
                                            <h5 class="price-text-color">${bike1.price}</h5>
                                        </div>
                                        
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="<%=application.getContextPath()%>/resources/images/${bike1.name}" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="<c:url value='/moredetails?id=${bike1.id}'  />" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                                
                         
                           </div>
                            
                        </div>
						</c:forEach>
                       
                       
                    </div>
                    
              
                </div>
                
                
                
                
                <div class="item">
                    <div class="row">
                    
                       <c:forEach items="${listBike2}" var="bike2">
                    
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>${bike2.title}</h5>
                                            <h5 class="price-text-color">${bike2.price}</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="<%=application.getContextPath()%>/resources/images/${bike2.name}" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="<c:url value='/moredetails?id=${bike2.id}'  />" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        </c:forEach>

                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
	
	<!-- end gallery -->
	
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
      
        </div>
       
    </div>
   
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © SEHRISH SOFTECH 2016. All right reserved. </p>
            <div class="pull-right">
            </div>
        </div>
    </div>
  
</footer>
		 
		 		 
		 

</body>

</html>