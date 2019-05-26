<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
	<title></title>
 	<meta charset="EUC-KR">

  	<!-- ���� : http://getbootstrap.com/css/   ���� -->
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
      	
      	<h1 class="bg-primary text-center">�� ǰ �� ��</h1>
      	
      	<div class="form-group">
		    <label for="boardNo" class="col-sm-offset-1 col-sm-3 control-label">�Խñ۹�ȣ</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="boardNo" name="boardNo"  value="${productBoard.boardNo}" readonly="readonly">
		    </div>
		</div>
      	
      	<div class="form-group">
		    <label for="title" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="title" value="${productBoard.title}" readonly="readonly">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" value="${product.prodName}" readonly="readonly">
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="boardDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="boardDetail" value="${productBoard.boardDetail}" readonly="readonly">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" value="${product.manuDate}" readonly="readonly">
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">����
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
		    <label for="boardRegDate" class="col-sm-offset-1 col-sm-3 control-label">�������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="boardRegDate" value="${productBoard.boardRegDate}" readonly="readonly">
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="buyerId" class="col-sm-offset-1 col-sm-3 control-label">�����ھ��̵�</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="buyerId" name="buyerId" value="${user.userId}" readonly="readonly">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="paymentOption" class="col-sm-offset-1 col-sm-3 control-label">���Ź��</label>
		    <div class="col-sm-4">
		      	<select 	class="selectpicker" 	name="paymentOption">
					<option value="1" selected="selected">���ݱ���</option>
					<option value="2">�ſ뱸��</option>
				</select>
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="purchaseQuantity" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      	<select 	class="selectpicker" 	id ="purchaseQuantity"	name="purchaseQuantity">
						<option value="0" selected="selected">==����==</option>��
					<c:forEach var="i" begin="1" end="${productBoard.quantity}" step="1">
						<option value="${i}">${i}</option>
					</c:forEach>
				</select>
		    </div>
		</div>
     	
     	<div class="form-group">
		    <label for="receiverName" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverName" name="receiverName" placeholder="������ ����">
		    </div>
		</div>
	
		<div class="form-group">
		    <label for="receiverPhone" class="col-sm-offset-1 col-sm-3 control-label">������ ����ó</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverPhone" name="receiverPhone" placeholder="������ ����ó">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverAddr" class="col-sm-offset-1 col-sm-3 control-label">�����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverAddr" name="receiverAddr" placeholder="�����">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverRequest" class="col-sm-offset-1 col-sm-3 control-label">��û����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverRequest" name="receiverRequest" placeholder="��û����">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverDate" class="col-sm-offset-1 col-sm-3 control-label">����������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverDate" name="receiverDate" readonly="readonly">		 
		    </div>
		</div>
		
		<div class="form-group">
        <div class="col-sm-offset-4  col-sm-4 text-center">
          <button type="button" id="buyBtn" class="btn btn-primary" name="button">��&nbsp;��</button>
          <a class="btn btn-danger btn" id="cancelBtn" href="#" role="button">��&nbsp;��</a>
        </div>
      </div>
     	
     	
     	</form> <!-- Form  ���� -->
	</div> <!-- Container ���� -->

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




