<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	

	
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title></title>

<style type="text/css">
body>div.container {
	border: 3px solid #D6CDB7;
	margin-top: 10px;
}
</style>

</head>


<body>

	<div class="navbar  navbar-default">
		<div class="container">
			<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
		</div>
	</div>

	<div class="container">
		<h1 class="bg-primary text-center">게시글 수정</h1>

		<form class="form-horizontal" enctype="multipart/form-data">
			
			<div class="form-group">
				<label for="boardNo" class="col-sm-offset-1 col-sm-3 control-label">No</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="boardNo" name="boardNo"
						value="${productBoard.boardNo}" readonly="readonly">
				</div>
			</div>

			<div class="form-group">
				<label for="title" class="col-sm-offset-1 col-sm-3 control-label">글제목</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="title" name="title"
						value="${productBoard.title}">
				</div>
			</div>

			<div class="form-group">
				<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName"
						name="prodName" value="${product.prodName}">
				</div>
			</div>

			<div class="form-group">
				<label for="boardDetail"
					class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="boardDetail"
						name="boardDetail" value="${productBoard.boardDetail}">
				</div>
			</div>

			<div class="form-group">
				<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="manuDate"
						name="manuDate" value="${product.manuDate}" readonly="readonly">
				</div>
			</div>

			<div class="form-group">
				<label for="quantity" class="col-sm-offset-1 col-sm-3 control-label">수량</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="quantity"
						name="quantity" value="${productBoard.quantity}">
				</div>
			</div>

			<div class="form-group">
				<label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="price" name="price"
						value="${product.price}">
				</div>
			</div>

			<div class="form-group">
				<label for="uploadFile"
					class="col-sm-offset-1 col-sm-3 control-label">이미지</label>
				<div class="col-sm-4">
					<img src="/images/uploadFiles/${productBoard.fileName}" style="width: 360px; height: auto;">
					<input	type="file" class="form-control" id="uploadFile" name="uploadFile"
						value="${productBoard.fileName}">
				</div>
			</div>


		</form>

		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button type="button" id="modifyBtn" class="btn btn-primary"
					name="button">수 &nbsp; 정</button>
				<a class="btn btn-primary btn" id="cancelBtn" href="#" role="button">취&nbsp;소</a>
			</div>
		</div>


	</div>
	<!-- Container 종료 -->

</body>


<script type="text/javascript">

	function fncUpdateProduct() {
		//Form 유효성 검증
		var name = $('#prodName').val();
		var detail = $('#boardDetail').val();
		var price = $('#price').val();
		var quantity = $('#quantity').val();

		if (name == null || name.length < 1) {
			alert("상품명은 반드시 입력하여야 합니다.");
			return;
		}
		if (detail == null || detail.length < 1) {
			alert("상품상세정보는 반드시 입력하여야 합니다.");
			return;
		}
		if (price == null || price.length < 1) {
			alert("가격은 반드시 입력하셔야 합니다.");
			return;
		}
		if (quantity == null || quantity < 1){
			alert("수량은 1개 이상 입력하셔야 합니다.");
			return;
		}
		
		$('.form-horizontal').attr("method","POST").attr("action","/product/updateProduct").submit();
	}

	$('#modifyBtn').on('click', function() {
		fncUpdateProduct();
	});

	$('#cancelBtn').on('click', function() {
		$('form')[0].reset();
	});
</script>

</html>