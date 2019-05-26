<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="EUC-KR">

<!-- 참조 : http://getbootstrap.com/css/   참조 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- DatePicker -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Bootstrap Dropdown Hover CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>


<script type="text/javascript" src="../javascript/calendar.js">
</script>

<style>
body {
	padding-top: 50px;
}
</style>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">

		<form class="form-horizontal">

			<h1 class="bg-primary text-center">구 매 정 보 수 정</h1>

			<div class="form-group">
				<label for="buyerId" class="col-sm-offset-1 col-sm-3 control-label">구매자아이디</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="buyerId" name="buyerId"
						value="${user.userId}" readonly="readonly">
				</div>
			</div>
			
			<div class="form-group">
		    <label for="paymentOption" class="col-sm-offset-1 col-sm-3 control-label">구매방법</label>
		    <div class="col-sm-4">
		      	<select 	class="selectpicker" 	name="paymentOption">
					<option value="1" ${purchase.paymentOption=='1' ? "selected":""}>현금구매</option>
					<option value="2" ${purchase.paymentOption=='2' ? "selected":""}>신용구매</option>
				</select>
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverName" class="col-sm-offset-1 col-sm-3 control-label">수령자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverName" name="receiverName" value="${purchase.receiverName}">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverPhone" class="col-sm-offset-1 col-sm-3 control-label">수령자 연락처</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverPhone" name="receiverPhone" value="${purchase.receiverPhone}">
		    </div>
		</div>

		<div class="form-group">
		    <label for="receiverAddr" class="col-sm-offset-1 col-sm-3 control-label">배송지</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverAddr" name="receiverAddr" value="${purchase.divyAddr}">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverRequest" class="col-sm-offset-1 col-sm-3 control-label">요청사항</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverRequest" name="receiverRequest" value="${purchase.divyRequest}">
		    </div>
		</div>
		
		<div class="form-group">
		    <label for="receiverDate" class="col-sm-offset-1 col-sm-3 control-label">배송희망일자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverDate" name="receiverDate" readonly="readonly">
		   	  <img 	src="../images/ct_icon_date.gif" width="15" height="15"	
							onclick="show_calendar('document.updatePurchase.divyDate', document.updatePurchase.divyDate.value)"/>
		    </div>
		</div>
		

		</form>
		<!-- Form 종료 -->


	</div>
	<!-- Container 종료 -->

</body>





</html>