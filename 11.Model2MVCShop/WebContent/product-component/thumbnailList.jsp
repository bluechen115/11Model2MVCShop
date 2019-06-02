<%@page import="com.model2.mvc.service.domain.Discount"%>
<%@page import="com.model2.mvc.service.domain.ProductBoard"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% Map<String,Object> map = (Map<String,Object>)request.getAttribute("map");
	Discount discount = (Discount)map.get("discount");
	List<ProductBoard> list = (List<ProductBoard>)map.get("list");%>

    
  
      <%for(int i=0;i<list.size();i++){%>
      	<div class="col-sm-5 col-md-3 thumbnailDiv">
                  <div class="thumbnail">
                    <img class="img-circle" src="/images/uploadFiles/<%=list.get(i).getFileName()%>" alt="..." onError="this.src='http://sign.kedui.net/rtimages/n_sub/no_detail_img.gif'">
                    <div class="caption">
                 	 <h3><%=list.get(i).getTitle()%>
                 	 	<%if(list.get(i).getBoardNo() == discount.getDiscountBoard()){ %>                        
                          <img src="https://static1.squarespace.com/static/513f57ebe4b0970eaf232dec/t/5654b2eae4b05e28e38285cd/1448391403995/"
                                        style="height:20px;width:20px;">
                        <%}%>
                     </h3>
                  <p><%=list.get(i).getBoardDetail()%></p>
                  <p><a href="/product/getProduct?boardNo=<%=list.get(i).getBoardNo()%>&menu=search" class="btn btn-primary" role="button">Button</a> 
                  		<a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
                </div>
      <%}%>

