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

	<!-- 댓글위한 CDN -->
	<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	
     <style>
     		body {
                padding-top : 50px;
            }
            .widget-area.blank {
			background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
			-webkit-box-shadow: none;
			-moz-box-shadow: none;
			-ms-box-shadow: none;
			-o-box-shadow: none;
			box-shadow: none;
			}
			body .no-padding {
			padding: 0;
			}
			.widget-area {
			background-color: #fff;
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			-ms-border-radius: 4px;
			-o-border-radius: 4px;
			border-radius: 4px;
			-webkit-box-shadow: 0 0 16px rgba(0, 0, 0, 0.05);
			-moz-box-shadow: 0 0 16px rgba(0, 0, 0, 0.05);
			-ms-box-shadow: 0 0 16px rgba(0, 0, 0, 0.05);
			-o-box-shadow: 0 0 16px rgba(0, 0, 0, 0.05);
			box-shadow: 0 0 16px rgba(0, 0, 0, 0.05);
			float: left;
			margin-top: 30px;
			padding: 25px 30px;
			position: relative;
			width: 100%;
			}
			.status-upload {
			background: none repeat scroll 0 0 #f5f5f5;
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			-ms-border-radius: 4px;
			-o-border-radius: 4px;
			border-radius: 4px;
			float: left;
			width: 100%;
			}
			.status-upload form {
			float: left;
			width: 100%;
			}
			.status-upload form textarea {
			background: none repeat scroll 0 0 #fff;
			border: medium none;
			-webkit-border-radius: 4px 4px 0 0;
			-moz-border-radius: 4px 4px 0 0;
			-ms-border-radius: 4px 4px 0 0;
			-o-border-radius: 4px 4px 0 0;
			border-radius: 4px 4px 0 0;
			color: #777777;
			float: left;
			font-family: Lato;
			font-size: 14px;
			height: 142px;
			letter-spacing: 0.3px;
			padding: 20px;
			width: 100%;
			resize:none;
			outline:none;
			border: 1px solid #F2F2F2;
			}
			
			.status-upload ul {
			float: left;
			list-style: none outside none;
			margin: 0;
			padding: 0 0 0 15px;
			width: auto;
			}
			.status-upload ul > li {
			float: left;
			}
			.status-upload ul > li > a {
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			-ms-border-radius: 4px;
			-o-border-radius: 4px;
			border-radius: 4px;
			color: #777777;
			float: left;
			font-size: 14px;
			height: 30px;
			line-height: 30px;
			margin: 10px 0 10px 10px;
			text-align: center;
			-webkit-transition: all 0.4s ease 0s;
			-moz-transition: all 0.4s ease 0s;
			-ms-transition: all 0.4s ease 0s;
			-o-transition: all 0.4s ease 0s;
			transition: all 0.4s ease 0s;
			width: 30px;
			cursor: pointer;
			}
			.status-upload ul > li > a:hover {
			background: none repeat scroll 0 0 #606060;
			color: #fff;
			}
			.status-upload form button {
			border: medium none;
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			-ms-border-radius: 4px;
			-o-border-radius: 4px;
			border-radius: 4px;
			color: #fff;
			float: right;
			font-family: Lato;
			font-size: 14px;
			letter-spacing: 0.3px;
			margin-right: 9px;
			margin-top: 9px;
			padding: 6px 15px;
			}
			.dropdown > a > span.green:before {
			border-left-color: #2dcb73;
			}
			.status-upload form button > i {
			margin-right: 7px;
			}
			
			   .card-inner{
			    margin-left: 4rem;
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
          <c:if test="${user.userId != 'admin' }">
        	  <button type="button" class="btn btn-primary" id="buyBtn">구매</button>
          </c:if>
        	  <button type="button" class="btn btn-danger" id="historyBack">이전</button>
        </div>
      </div>

    </div>
    
     <div class="container">
		<br/>
	    <div class="row">
	    
	   		<div class="col-md-12">
				<div class="widget-area no-padding blank">
					<div class="status-upload">
					<form id="commentsForm">
						<input type="hidden" name="boardNo" value="${productBoard.boardNo}"/>
						<input type="hidden" name="userId" value="${user.userId}"/>
						<textarea id="comments" name="comments" placeholder="고객님의 소중한 상품평을 남겨주세요." ></textarea>
						<button id="commentsBtn" type="button" class="btn btn-success green"><i class="fa fa-share"></i>등록</button>
						</form>
					</div><!-- Status Upload  -->
				</div><!-- Widget Area -->
			</div>
		</div>
	</div> <!-- Container End -->
   
   <br/>
   <br/>
   
	<div class="container" id="commentListDiv">
	</div> <!-- 댓글 리스트 담기는 곳 -->


  </body>
  
  <script type="text/javascript">
  
  	$('#buyBtn').on('click',function(){
  		self.location = "/purchase/addPurchaseView?boardNo="+${productBoard.boardNo};
  	});
  	
  	$('#historyBack').on('click',function(){
  		history.go(-1);
  	});
  	
  	/* Comments 등록 */
  	$('#commentsBtn').on('click',function(){
  		var param = $('#commentsForm').serialize();
  		
  		$.ajax({
  			url:"/product/json/addComments",
  			method:"POST",
  			data:param,
  			success:function(){
  				fncGetCommentsList();
  			},
  			error:function(){
  				alert("에러");
  			}
  		});
  		
  	  	$('#comments').val('');
  	  	
  	  
  		
  	});
  	
  	/* CommentsList 가져오기*/
  	function fncGetCommentsList(){
  		var boardNo = ${productBoard.boardNo}
  		$.ajax({
  			url:"/product/json/getCommentsList/"+boardNo,
  			method:"GET",
  			data:"text",
  			success:function(data,status){
  				$('#commentListDiv').html(data);
  			},
  			error:function(){
  				alert("에러");
  			}
  		});
  	}
  	
  	$(function(){
 		fncGetCommentsList();
 	});
  
  </script>
</html>
