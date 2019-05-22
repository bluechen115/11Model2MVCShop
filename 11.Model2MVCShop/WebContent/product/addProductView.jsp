<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <title></title>
  </head>
  <body>
    <div class="navbar  navbar-default">
      <div class="container">
        <a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
      </div>
    </div>

      <div class="container">
        <h1 class="bg-primary text-center">상품등록</h1>
      </div>

      <form class="form-horizontal" enctype="multipart/form-data">
        <div class="form-group">
          <label for="title" class="col-sm-offset-1 col-sm-3 control-label">글제목</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" id="title" name="title" placeholder="글 제목">
          </div>
        </div>


      <div class="form-group">
        <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="prodName" name="prodName" placeholder="상품명">
        </div>
      </div>

      <div class="form-group">
        <label for="boardDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="boardDetail" name="boardDetail" placeholder="상품상세정보" value="">
        </div>
      </div>

      <div class="form-group">
        <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="manuDate" name="manuDate"  value="">
        </div>
      </div>

      <div class="form-group">
        <label for="quantity" class="col-sm-offset-1 col-sm-3 control-label">수량</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="quantity" name="quantity" placeholder="1개 이상 입력.." value="">
        </div>
      </div>

      <div class="form-group">
        <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="price" name="price" placeholder="가격" value="">
        </div>
      </div>

      <div class="form-group">
        <label for="uploadFile" class="col-sm-offset-1 col-sm-3 control-label">이미지</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" id="uploadFile" name="uploadFile" value="">
        </div>
      </div>
      
      <div class="form-group">
        <div class="col-sm-offset-4  col-sm-4 text-center">
          <button type="button" id="registerBtn" class="btn btn-primary" name="button">등 &nbsp; 록</button>
          <a class="btn btn-primary btn" id="cancelBtn" href="#" role="button">취&nbsp;소</a>
        </div>
      </div>

    </form>
  </body>

  <script type="text/javascript">
  function fncAddProduct(){
		//Form 유효성 검증
	 	/* var name = document.detailForm.prodName.value;
		var detail = document.detailForm.boardDetail.value;
		var manuDate = document.detailForm.manuDate.value;
		var price = document.detailForm.price.value; */
		
		var name = $("input[name='prodName']").val();
		var detail = $("input[name='boardDetail']").val();
		var manuDate = $("input[name='manuDate']").val();
		var price = $("input[name='price']").val();
		var quantity = $("input[name='quantity']").val();

		if(name == null || name.length<1){
			alert("상품명은 반드시 입력하여야 합니다.");
			return;
		}
		if(detail == null || detail.length<1){
			alert("상품상세정보는 반드시 입력하여야 합니다.");
			return;
		}
		if(manuDate == null || manuDate.length<1){
			alert("제조일자는 반드시 입력하셔야 합니다.");
			return;
		}
		if(price == null || price.length<1){
			alert("가격은 반드시 입력하셔야 합니다.");
			return;
		}
		if(name == null || name.length<1){
			alert("수량은 1개 이상 입력하셔야 합니다.");
			return;
		}

		$('form').attr("method","post").attr("action","/product/addProduct").submit();
	}
  
  	$('#registerBtn').on('click',function(){
  		fncAddProduct();
  	});
  	
  	$('#cancelBtn').on('click',function(){
  		$('form')[0].reset();
  	});
  
  	///* 달력 *///
    $( "#manuDate" ).datepicker({dateFormat:'yy-mm-dd'});
  </script>

</html>
