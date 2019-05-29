<%@page import="com.model2.mvc.service.domain.Comments"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% List<Comments> commentsList = (List<Comments>)request.getAttribute("commentsList"); %>

	<%for(int i=0;i<commentsList.size();i++){ %>

	<div class="card">
	    <div class="card-body">
	        <div class="row">
        	    <div class="col-md-12">
        	        <p>
        	            <a class="float-left" href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong><%=commentsList.get(i).getUserId()%></strong></a>
        	            <%for(int j=0;j<Integer.parseInt(commentsList.get(i).getStarRating());j++){ %>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                       	<%}%>

        	       </p>
        	       <div class="clearfix"></div>
        	        <p><%=commentsList.get(i).getComments()%></p>
        	        
        	    </div>
	        </div>
	        	
	    </div>
	</div>
	<br/>
	
	<%}%>