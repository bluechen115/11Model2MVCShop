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
        <h1 class="bg-primary text-center">��ǰ���</h1>
      </div>

      <form class="form-horizontal" enctype="multipart/form-data">
        <div class="form-group">
          <label for="title" class="col-sm-offset-1 col-sm-3 control-label">������</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" id="title" name="title" placeholder="�� ����">
          </div>
        </div>


      <div class="form-group">
        <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="prodName" name="prodName" placeholder="��ǰ��">
        </div>
      </div>

      <div class="form-group">
        <label for="boardDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="boardDetail" name="boardDetail" placeholder="��ǰ������" value="">
        </div>
      </div>

      <div class="form-group">
        <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="manuDate" name="manuDate"  value="">
        </div>
      </div>

      <div class="form-group">
        <label for="quantity" class="col-sm-offset-1 col-sm-3 control-label">����</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="quantity" name="quantity" placeholder="1�� �̻� �Է�.." value="">
        </div>
      </div>

      <div class="form-group">
        <label for="price" class="col-sm-offset-1 col-sm-3 control-label">����</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="price" name="price" placeholder="����" value="">
        </div>
      </div>

      <div class="form-group">
        <label for="uploadFile" class="col-sm-offset-1 col-sm-3 control-label">�̹���</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" id="uploadFile" name="uploadFile" value="">
        </div>
      </div>
      
      <div class="form-group">
        <div class="col-sm-offset-4  col-sm-4 text-center">
          <button type="button" id="registerBtn" class="btn btn-primary" name="button">�� &nbsp; ��</button>
          <a class="btn btn-primary btn" id="cancelBtn" href="#" role="button">��&nbsp;��</a>
        </div>
      </div>

    </form>
  </body>

  <script type="text/javascript">
  function fncAddProduct(){
		//Form ��ȿ�� ����
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
			alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
		if(detail == null || detail.length<1){
			alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
		if(manuDate == null || manuDate.length<1){
			alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}
		if(price == null || price.length<1){
			alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}
		if(name == null || name.length<1){
			alert("������ 1�� �̻� �Է��ϼž� �մϴ�.");
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
  
  	///* �޷� *///
    $( "#manuDate" ).datepicker({dateFormat:'yy-mm-dd'});
  </script>

</html>
