<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!-- ���ø� -->
	<!--Theme custom css -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

	<link rel="stylesheet" href="assets/css/responsive.css" />

	<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<!-- ���ø� �� -->
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
	<style>
        body {
            padding-top : 70px;
            height:70%;
        }
   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>
	<div style="position:relative;"> <!-- ȭ�� ��ü�� ���δ� div -->
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

<!-- 	<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->	
   	
    
<!--     <div class="container">
    <div class="item">
 		 <img src="http://postfiles2.naver.net/MjAxNzA0MTJfMjY5/MDAxNDkyMDAzNDA1MjYx.2e_nvMIDYSkCQKUBLkt80e2oJa9qPzcakN8F-Y0x23og.w9jxocSAEwKKwjcU9bz3rPdzsd3I6ZGeNgz0f8jkjaMg.JPEG.dpaaksndpf1/%EC%B4%88%EA%B3%A0%ED%99%94%EC%A7%88_%EC%BB%B4%ED%93%A8%ED%84%B0_%EB%B0%B0%EA%B2%BD%ED%99%94%EB%A9%B4_1920x1080-12.jpg?type=w966" alt="...">
 		 <div class="carousel-caption">
  		  <h3>...</h3>
  		  <p>...</p>
  		</div>
	</div>
	</div>
 -->
	<!-- ���� : http://getbootstrap.com/css/   : container part..... -->
	<!-- <div class="container">
        <h3>���������� �̷��� ���ߴ�.</h3>
        <p>"���� ���� ������ ������ ���� �߸� ���� �ð��� �����̴�."</p>
  	 	<h3>"... �庮�� �����ϰ� ������ �ʴ� ������� �ɷ������� �����մϴ�. �庮��. ����� �ƴ϶� '�ٸ�' ������� ���߰� �Ϸ��� �ű� �ִ� ��������."</h3>
         <h3>��������</h3>
         <p>�ູ�� ���� �����.</p>
         <p>�����ϴ� ���� �ϴ� ���� �Ƹ���,</p>
         <p>���� �ϴ� ���� �����ϴ� ���Դϴ�.</p>
  	 </div>
 -->

 		 <section id="hello" class="home bg-mega" style="position:relative; top:-20px; left:0; height:800px;">
			<!-- <div class="overlay">
				<img alt="" src="https://t1.daumcdn.net/cfile/tistory/140829464E5E49D02D"
					style="width:100%;height:auto;"/>
			</div> -->
			<div class="container">
				<div class="row">
					<div class="main_home">
						<div class="home_text" style="padding-top: 350px;">
							<h1 class="text-white">WE��RE <br /> CREATIVE DEVELOPERS!</h1>
						</div>

						<div class="home_btns m-top-40">
							
						</div>

					</div>
				</div>
			
			</div>
			
		</section>
		

	</div>
</body>

</html>