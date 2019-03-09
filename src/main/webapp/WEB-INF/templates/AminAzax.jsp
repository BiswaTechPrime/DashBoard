<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.*"
import="edu.apcp.domain.*"
%>

<%-- 
                                           <select class="form-control" id="subCategory" name="subCategory.id">
													<option selected="selected" value="">Select
														Select SubCategory</option>
													<%List<SubCategory> ob= (List<SubCategory>)request.getAttribute("subcategorylist");
										
										if(ob!=null){
											for(SubCategory a:ob){
												%>
													<option  value="<%=a.getId()%>"><%=a.getItemname()%></option>
			
													<%
											}
										}
										 --%>
										%>
												</select>                                           

