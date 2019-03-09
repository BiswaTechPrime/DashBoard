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
 <script src="JS/jquery.autocomplete.js"></script>
<script>
jQuery(function(){
$("#subcategory").autocomplete("search");
});
</script>
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<script  type="text/javascript"></script>
<script type = "text/javascript" src ="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <link href="resources/NewFile1/css/NewFile1.css" rel="stylesheet">


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

        </script>
        
        

</head>

<body>

<header role="banner"  >
      <div class="container">
      
      
        <div class="navbar-header">
          <button data-toggle="collapse-side" data-target=".side-collapse" data-target-2=".side-collapse-container" type="button" class="navbar-toggle pull-left">
    	  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  </button>
        <a class="navbar-brand" href="#" style="font-size: 40px">BECH DO!!!!</a>
        
        <br>
        <br>
	
	
       <div class="container" style="padding-left: 900px" >
       
    
	 <a href="<c:url value="post"/>" class="btn btn-primary btn-default pull-right" style="width: 80% ; background: orange" >Post an ad</a>
	 <a href="/cw/ll" class="btn btn-primary btn-default pull-right">Signin</a>
	
	
		
		
	
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
 <a href="<c:url value="car"/>"> <img src="https://wallpaperscraft.com/image/porsche_cars_city_sunset_83884_1920x1080.jpg" class="img-responsive">CARS </a>
   </div>
  
   <div class="col-md-4 box">
    <a href="<c:url value="bike"/>"> <img src="http://greenywallpapers.com/resizes/1/210821-bikes-heavy-wallpapers-1920x1080.jpg" class="img-responsive">BIKES </a>
   </div>
   
   <div class="col-md-4 box">
  <a href="<c:url value="furniture"/>">   <img src="https://wallpaperscraft.com/image/living_room_sofa_furniture_style_75503_1920x1080.jpg" class="img-responsive">FURNITURE </a>
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

		<!-- car started -->
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

							<c:forEach items="${listCar}" var="product">
								<div class="col-sm-2">
									<div class="col-item">
										<div class="photo">
											<img
												src="<%=application.getContextPath()%>/resources/images/${product.name}" class="img-responsive" alt="a" />
												
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>${product.title}</h5>
													<h5 class="price-text-color">200000</h5>
												</div>

											</div>
											<div class="separator clear-left">

												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="<c:url value='/moredetails?id=${product.id}'   />" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>

							</c:forEach>
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
                                            <i class="fa fa-list"></i><a href="<c:url value="/moredetails"/>" class="hidden-sm">More details</a></p>
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
		<!-- car end -->
		
		
		<!-- bike start -->
		<div class="container">
		<div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>
                   recently added bike</h3>
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

							<c:forEach items="${listBike}" var="bike">
								<div class="col-sm-2">
									<div class="col-item">
										<div class="photo">
											<img
												src="<%=application.getContextPath()%>/resources/images/${bike.name}" class="img-responsive" alt="a" />
												
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>${bike.title}</h5>
													<h5 class="price-text-color">200000</h5>
												</div>

											</div>
											<div class="separator clear-left">

												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="<c:url value="/moredetails"/>"class="hidden-sm">More
														details</a>
													<%-- 	<a href="<c:url value="/jsp/index.htm"/>">TEST</a> --%>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>

							</c:forEach>
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
                                            <i class="fa fa-list"></i><a href="<c:url value="/moredetails"/>" class="hidden-sm">More details</a></p>
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
<!-- bike end -->
	</div>
	
	<!-- footer start -->
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

</body>
</html>