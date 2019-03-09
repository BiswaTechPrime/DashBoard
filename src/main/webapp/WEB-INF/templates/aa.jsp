<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<div class="col-sm-2" >

                        
                        <c:forEach items="${list}" var="n">
                     
                <img src="<%=application.getContextPath()%>/resources/images/${n.name}" width="100" height="100"/>
                <div>
                   ${n.description}
                </div>
                        </c:forEach>
                     </div>
                     
                     
                     
                     <%-- 
                      <div class="col-sm-2">
                      <c:forEach items="${list}" var="n">
                      <img src="<%=application.getContextPath()%>/resources/images/${n.name}" class="img-responsive" alt="a"/>
                            <div class="col-item">
                              
                              
                                <div class="photo">
                                  
                              
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>
                                              ${n.title}</h5>
                                            <h5 class="price-text-color">
                                               price</h5>
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
                                 </c:forEach>
                            </div> --%>
     <%--                        
                             <div class="container">
        <div class="row">
            <div class="span12">
                <div class="well">
                    <div id="myCarousel" class="carousel fdi-Carousel slide">
                     <!-- Carousel items -->
                        <div class="carousel fdi-Carousel slide" id="eventCarousel" data-interval="0">
                            <div class="carousel-inner onebyone-carosel">
                                <div class="item active">
                                    <div class="col-md-4"  id="car">
                              
                                       <c:forEach items="${list}" var="n">
                                     <a href="#"><img src="<%=application.getContextPath()%>/resources/images/${n.name}" width="100" height="100" class="img-responsive center-block"></a>
                                      
                                        <div class="text-center">1</div> 
                                        </c:forEach>
                                     
                                    </div>
                                </div>
                           
                                </div>
                            </div>
                            <a class="left carousel-control" href="#eventCarousel" data-slide="prev"></a>
                            <a class="right carousel-control" href="#eventCarousel" data-slide="next"></a>
                        </div>
                        <!--/carousel-inner-->
                    </div><!--/myCarousel-->
                </div><!--/well-->
            </div>
        </div>
    </div> --%>
</body>
</html>