<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <title></title>

    <meta charset="EUC-KR">

  	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
  	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

  	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
  	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

  	<!-- Bootstrap Dropdown Hover CSS -->
     <link href="/css/animate.min.css" rel="stylesheet">
     <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

      <!-- Bootstrap Dropdown Hover JS -->
     <script src="/javascript/bootstrap-dropdownhover.min.js"></script>

     <style>
     		body {
                padding-top : 50px;
            }
     </style>

  </head>
  <body>

    <jsp:include page="/layout/toolbar.jsp" />

    <div class="container">

      <div class="page-header">
        <h3 class="text-info">상품정보조회</h3>
        <h5 class="text-muted">배송정보를<strong class="text-danger">반드시 확인</strong>하세요.</h5>
      </div>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>게시글번호</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${productBoard.boardNo}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>글제목</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${productBoard.title}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>상품명</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${product.prodName}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>상세정보</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${productBoard.boardDetail}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>조회수</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${productBoard.viewCount}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>상품이미지</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          <img 	src= "/images/uploadFiles/${productBoard.fileName}" style="width:500px;height:500px;"/>
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>남은 수량</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${productBoard.quantity}&nbsp;개
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>제조일자</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${product.manuDate}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>가격</strong>
          <c:if test="${productBoard.boardNo == discount.discountBoard}">
			         <img src="https://static1.squarespace.com/static/513f57ebe4b0970eaf232dec/t/5654b2eae4b05e28e38285cd/1448391403995/"
											style="height:20px;width:20px;">
			    </c:if>
        </div>
        <div class="col-xs-8 col-md-4">
        	&#8361;
            <c:choose>
      				<c:when test="${productBoard.boardNo == discount.discountBoard}">
      						<td class="ct_write01"><strike>${product.price}</strike>
      						&nbsp;&nbsp;
      						${product.resultPrice}
      						</td>
      				</c:when>
      				<c:when test="${purchaseCount % 4 == 0 && user.userId != 'admin' }">
      						<td class="ct_write01"><strike>${product.price}</strike>
      						&nbsp;&nbsp;
      						${product.resultPrice}
      						</td>
      				</c:when>
      				<c:otherwise>
      					<td class="ct_write01">${product.resultPrice}</td>
      				</c:otherwise>
      			</c:choose>
      			
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-xs-4 col-md-2">
          <strong>등록일자</strong>
        </div>
        <div class="col-xs-8 col-md-4">
          ${productBoard.boardRegDate}
        </div>
      </div>
      <hr/>

      <div class="row">
        <div class="col-md-12 text-center">
          <button type="button" class="btn btn-primary">구매</button>
          <button type="button" class="btn btn-danger" id="historyBack">이전</button>
        </div>
      </div>

    </div>


  </body>
  
  <script type="text/javascript">
  	
  	$('#historyBack').on('click',function(){
  		history.go(-1);
  	});
  
  </script>
</html>
