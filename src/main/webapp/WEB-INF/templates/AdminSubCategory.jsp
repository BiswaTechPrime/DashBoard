<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
  <!--   <link rel="shortcut icon" href="resources/themescp/assets/images/favicon.png" type="image/png"> -->
    <title>SubCategory</title>
     <link href="resources/testcategory/css/style.default.css" rel="stylesheet">
    <link href="resources/testcategory/css/jquery.datatables.css" rel="stylesheet"> 
    
  

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
 <!-- Preloader -->
    <div id="preloader">
        <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
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

<!--  <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">Sign in</a>
  <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">Help</a>
 <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">About us</a>
 -->
			
			<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
				<!-- <li><a href="  " target="_blank">Recently Ads</a></li> -->
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="<c:url value="adminpassword"/>">Change Password</a></li>
							<li class=""><a href="<c:url value="adminphone"/>">Change Phone Number</a></li>
							<li class="divider"></li>
							<li><a href="/admin/logout">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
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
		  <br><br><br><br>
        <a class="navbar-brand" href="<c:url value="contact"/>" style="font-size: 40px ; color: green">BECH <span style="white"> DO!!!! </span> </a>
     
	
        <br>
     	 
     
        <br>
	
	
       <div class="container" style="padding-left: 900px" >
       
    
	 <a href="<c:url value="index"/>" class="btn btn-primary btn-default pull-right" style="width: 80% ; background: orange" >Go to Bech Do Site</a>
	
	
		
		
		
	
	</div>
	
	</div>
 </div>
</header>
<br>

    <section>

   

                    <div class="contentpanel" >

                        <div class="row">

                            <div class="col-md-12">
                            
								<form:form action="/cw/subcategory/add" commandName="subcategory" id="form1" modelAttribute="subcategory">
                                
                                <div class="panel panel-default">
                                
                                    <div class="panel-heading">
                                        <div class="panel-btns">
                                            
                                        </div>

                                    </div>
                                    
                                    <div class="panel-body">
                                    	<c:if test="${!empty subcategory.itemname}">
	                                        <div class="form-group">
	                                            <label class="col-sm-3 control-label">
	                                            <form:label path="id"><spring:message text="ID" /></form:label>
	                                            <span class="asterisk">*</span>
	                                            </label>
	                                            <div class="col-sm-9">
	                                                <form:input path="id" readonly="true" size="8" disabled="true" /> 
													<form:hidden path="id" />			                                               
	                                            </div>
	                                        </div>
	                                    </c:if>                                   															    
						                
						                <div class="form-group">
                                            <label class="col-sm-3 control-label">
                                            <form:label path="category"><spring:message text="Category" /></form:label> 
                                            <span class="asterisk">*</span>
                                            </label>
                                            <div class="col-sm-9">
                                            <spring:bind path="category.id">
												<form:select path="category.id" class="select2" style="width:100%;">
													<form:option value="0">Select </form:option>
													<form:options items="${listCategory}" itemValue="id" itemLabel="name" />
												</form:select>
											</spring:bind>    
						                                                 
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">
                                            <form:label path="itemname"><spring:message text="Sub-Category Name" /></form:label>
                                             <span class="asterisk">*</span></label>
                                            <div class="col-sm-9">   
                                            	<form:input path="itemname" class="form-control" placeholder="Enter your Sub-category name..." />                                       
                                            </div>
                                        </div>														

                                    </div><!-- panel-body -->
                                    
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <c:if test="${!empty subcategory.itemname}">
													<input type="submit" value="<spring:message text="Update"/>" class="btn  btn-info" />
												</c:if>
												
												<c:if test="${empty subcategory.itemname}">																	
													<button class="btn btn-success" type="submit"><i class="fa fa-save"></i>Save</button>
												</c:if>
					
												<button class="btn btn-primary" type="reset"><i class=" fa fa-refresh"></i>Reset</button>
                                            </div>
                                        </div>
                                    </div>
								
                                </div><!-- panel -->
                                
								</form:form>
                            </div><!-- col-md-12 -->

                        </div><!--row -->
            
                        <div class="row text-center">
                            <div class="col-md-12">
                               <!-- Advanced Tables -->
								<div class="panel panel-default">
									<div class="panel-heading">SubCategory List</div>
									<div class="panel-body">
										<div class="table-responsive">
											<c:if test="${!empty listSubcategory}">
												<table class="table table-striped table-bordered table-hover" id="table2">
													<thead>
														<tr class="info">
														   
															<th width="80">ID</th>
															<th width="80">Category</th>
															<th width="120">SubCategory</th>
															<th width="60">Edit</th>
															<th width="60">Delete</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${listSubcategory}" var="subcategory">
															<tr class="active">
															
																<td>${subcategory.id}</td>
																<td>${subcategory.category.name}</td>
																<td>${subcategory.itemname}</td>
																<td class="center"><a href="<c:url value='subcategory?id=${subcategory.id}' />"><i class="fa fa-edit "></i></a></td>
																<td class="center">
																<a href="<c:url value='/subcategory/delete/${subcategory.id}' />"><i class="fa fa-trash-o"></i></a></td>
															</tr>
														</c:forEach>
		
													</tbody>
												</table>
												
											</c:if>
										</div>
		
									</div>
								</div>
								<!--End Advanced Tables -->
                            </div>
                        </div>

                    </div><!-- contentpanel -->

                 
        </div><!-- mainpanel -->   

    </section>

  <script src="resources/testcategory/js/jquery-1.11.1.min.js"></script>
    <script src="resources/testcategory/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/testcategory/js/bootstrap.min.js"></script>
    <script src="resources/testcategory/js/modernizr.min.js"></script>
    <script src="resources/testcategory/js/jquery.sparkline.min.js"></script>
    <script src="resources/testcategory/js/toggles.min.js"></script>
    <script src="resources/testcategory/js/retina.min.js"></script>
    <script src="resources/testcategory/js/jquery.cookies.js"></script>

    <script src="resources/testcategory/js/select2.min.js"></script>
    <script src="resources/testcategory/js/jquery.validate.min.js"></script>
    <script src="resources/testcategory/js/custom.js"></script>
    <script src="resources/testcategory/js/jquery.datatables.min.js"></script> 

	 <script>
	     jQuery(document).ready(function(){
	
	         "use strict";
	
	         // Select2
	       jQuery(".select2").select2({
	         width: '100%',
	         minimumResultsForSearch: -1
	       });              
	
	     });
	 </script>
	 
	 <script>
  jQuery(document).ready(function() {
    
    "use strict";
    
    jQuery('#table1').dataTable();
    
    jQuery('#table2').dataTable({
      "sPaginationType": "full_numbers"
    });
    
    // Select2
    jQuery('select').select2({
        minimumResultsForSearch: -1
    });
    
    jQuery('select').removeClass('form-control');
    
    // Delete row in a table
    jQuery('.delete-row').click(function(){
      var c = confirm("Continue delete?");
      if(c)
        jQuery(this).closest('tr').fadeOut(function(){
          jQuery(this).remove();
        });
        
        return false;
    });
    
    // Show aciton upon row hover
    jQuery('.table-hidaction tbody tr').hover(function(){
      jQuery(this).find('.table-action-hide a').animate({opacity: 1});
    },function(){
      jQuery(this).find('.table-action-hide a').animate({opacity: 0});
    }); 
  
  
  });
</script>

</body>
</html>