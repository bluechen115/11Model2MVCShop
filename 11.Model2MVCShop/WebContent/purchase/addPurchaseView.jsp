<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
	<title></title>
 	<meta charset="EUC-KR">

  	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
  	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

  	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
  	
  	<!-- DatePicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
  	
  	<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
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
	
	  <form class="form-horizontal" id="form01">
      	
      	<h1 class="bg-primary text-center">상 품 구 매</h1>
      	
      	<div class="form-group">
		    <label for="boardNo" class="col-sm-offset-1 col-sm-3 control-label">게시글번호</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="boardNo" name="boardNo"  value="${productBoard.boardNo}" readonly="readonly">
		    </div>
		</div>
      	
      	<div class="form-group">
		    <label for="title" class="col-sm-offset-1 col-sm-3 control-label">글제목</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="title" value="${productBoard.title}" readonly="readonly">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" value="${product.prodName}" readonly="readonly">
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="boardDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="boardDetail" value="${productBoard.boardDetail}" readonly="readonly">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" value="${product.manuDate}" readonly="readonly">
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격
		    	<c:if test="${productBoard.boardNo == discount.discountBoard}">	
				<img src="https://static1.squarespace.com/static/513f57ebe4b0970eaf232dec/t/5654b2eae4b05e28e38285cd/1448391403995/" 
					style="height:20px;width:20px;">
				</c:if>
			</label>
		    <div class="col-sm-4">
		      <c:choose>
					<c:when test="${productBoard.boardNo==discount.discountBoard || purchaseCount % 4 == 0}">
						<div class="form-control" readonly="readonly">
							<strike>${product.price}</strike>
							&nbsp;&nbsp; ${product.resultPrice}
						</div>
					</c:when>
					<c:otherwise>
						<input type="text" class="form-control" id="price" value="${product.resultPrice}" readonly="readonly">	
					</c:otherwise>
				</c:choose>
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="boardRegDate" class="col-sm-offset-1 col-sm-3 control-label">등록일자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="boardRegDate" value="${productBoard.boardRegDate}" readonly="readonly">
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="buyerId" class="col-sm-offset-1 col-sm-3 control-label">구매자아이디</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="buyerId" name="buyerId" value="${user.userId}" readonly="readonly">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="paymentOption" class="col-sm-offset-1 col-sm-3 control-label">구매방법</label>
		    <div class="col-sm-4">
		      	<select 	class="selectpicker" 	name="paymentOption">
					<option value="1" selected="selected">현금구매</option>
					<option value="2">신용구매</option>
				</select>
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="purchaseQuantity" class="col-sm-offset-1 col-sm-3 control-label">수량</label>
		    <div class="col-sm-4">
		      	<select 	class="selectpicker" 	id ="purchaseQuantity"	name="purchaseQuantity">
						<option value="0" selected="selected">==선택==</option>개
					<c:forEach var="i" begin="1" end="${productBoard.quantity}" step="1">
						<option value="${i}">${i}</option>
					</c:forEach>
				</select>
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="receiverName" class="col-sm-offset-1 col-sm-3 control-label">수령자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverName" name="receiverName" placeholder="수령자 성함">
		    </div>
		</div>
	
		<div class="form-group">
		    <label for="receiverPhone" class="col-sm-offset-1 col-sm-3 control-label">수령자 연락처</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverPhone" name="receiverPhone" placeholder="수령자 연락처">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverAddr" class="col-sm-offset-1 col-sm-3 control-label">배송지</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverAddr" name="receiverAddr" placeholder="배송지">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverRequest" class="col-sm-offset-1 col-sm-3 control-label">요청사항</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverRequest" name="receiverRequest" placeholder="요청사항">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverDate" class="col-sm-offset-1 col-sm-3 control-label">배송희망일자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverDate" name="receiverDate" readonly="readonly">		 
		    </div>
		</div>
		
		<div class="form-group">
        <div class="col-sm-offset-4  col-sm-4 text-center">
          <button type="button" id="buyBtn" class="btn btn-primary" name="button">구&nbsp;입</button>
          <a class="btn btn-danger btn" id="cancelBtn" href="#" role="button">취&nbsp;소</a>
        </div>
      </div>
     	
     	
     	</form> <!-- Form  종료 -->
	</div> <!-- Container 종료 -->

</body>

<script type="text/javascript">
	
	$(function(){
		$( "#receiverDate" ).datepicker({dateFormat:'yy-mm-dd'});
	});
	
	$('#buyBtn').on('click',function(){
		$('#form01').attr("method","POST").attr("action","/purchase/addPurchase").submit();
	});
	
	$('#cancelBtn').on('click',function(){
		history.go(-1);
	});
</script>
</html>




