<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!-- 템플릿 -->
	<!--Theme custom css -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

	<link rel="stylesheet" href="assets/css/responsive.css" />

	<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<!-- 템플릿 끝 -->
	
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
	
	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
	<style>
        body {
            padding-top : 70px;
            height:70%;
            background:black;
        }
   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>
	<div style="position:relative;"> <!-- 화면 전체를 감싸는 div -->
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

<!-- 	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
   	
    
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
	<!-- 참조 : http://getbootstrap.com/css/   : container part..... -->
	<!-- <div class="container">
        <h3>나폴레옹은 이렇게 말했다.</h3>
        <p>"오늘 나의 불행은 언젠가 내가 잘못 보낸 시간의 보복이다."</p>
  	 	<h3>"... 장벽은 절실하게 원하지 않는 사람들을 걸러내려고 존재합니다. 장벽은. 당신이 아니라 '다른' 사람들을 멈추게 하려고 거기 있는 것이지요."</h3>
         <h3>혜광스님</h3>
         <p>행복한 삶의 비결은.</p>
         <p>좋아하는 일을 하는 것이 아리라,</p>
         <p>지금 하는 일을 좋아하는 것입니다.</p>
  	 </div>
 -->
<!-- 
 		 <section id="hello" class="home bg-mega" style="position:relative; top:-20px; left:0; height:800px;">
			<div class="overlay">
				<img alt="" src="https://t1.daumcdn.net/cfile/tistory/140829464E5E49D02D"
					style="width:100%;height:auto;"/>
			</div>
			<div class="container">
				<div class="row">
					<div class="main_home">
						<div class="home_text" style="padding-top: 350px;">
							<h1 class="text-white">WE’RE <br /> CREATIVE DEVELOPERS!</h1>
						</div>

						<div class="home_btns m-top-40">
							
						</div>

					</div>
				</div>
			
			</div>
			
		</section>
		 -->
		 
	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	
	<!--페이지-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!--페이지-->

	<div class="carousel-inner">
		<!--슬라이드1-->
		<div class="item active"> 
			<img src="/images/background/GLC_Coupe_stage_camp_3400x1440.jpeg" style="width:100%;height:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					
				</div>
			</div>
		</div>
		<!--슬라이드1-->

		<!--슬라이드2-->
		<div class="item"> 
			<img src="/images/background/GLC_Stage_Image_3400x1440.jpeg" style="width:100%; height:100%" data-src="" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					
				</div>
			</div>
		</div>
		<!--슬라이드2-->
		
		<!--슬라이드3-->
		<div class="item"> 
			<img src="/images/background/mercedes-benz-gls-2019-x166-suv-home-3400x1440.jpeg" style="width:100%; height:100%" data-src="" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					
				</div>
			</div>
		</div>
		<!--슬라이드3-->
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>

<!--About Sections-->
		<section id="about" class="about roomy-100">
			<div class="container">
				<div class="row">
					<div class="main_about">
						<div class="col-md-6">
							<div class="about_content">
								<h2>ABOUT US</h2>
								<div class="separator_left"></div>

								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>

								<div class="about_btns m-top-40">
									<a href="" class="btn btn-primary">DOWNLOAD NOW</a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="about_accordion wow fadeIn">
								<div id="faq_main_content" class="faq_main_content">
									<h6><i class="fa fa-angle-right"></i> UNIQUE DESIGN </h6>
									<div>
										<div class="content">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, </p>

										</div>
									</div>
									<!-- End off accordion item-1 -->

									<h6 class="open"><i class="fa fa-angle-right"></i> EXPERIENCE TEAM</h6>
									<div class="open">
										<div class="content">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, </p>
										</div>
									</div>
									<!-- End off accordion item-2 -->

									<h6> <i class="fa fa-angle-right"></i> GREAT SERVICE </h6>
									<div>
										<div class="content">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, </p>
										</div>
									</div>
									<!-- End off accordion item-3 -->

									<h6><i class="fa fa-angle-right"></i> FREE UPDATES </h6>
									<div>
										<div class="content">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, </p>
										</div>
									</div>
									<!-- End off accordion item-4 -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
			</section>
	



		<!--Contact Us Section-->
		<section id="contact" class="contact bg-mega fix">
			<div class="container">
				<div class="row">
					<div class="main_contact roomy-100 text-white">
						<div class="col-md-4">
							<div class="rage_widget">
								<div class="widget_head">
									<h3 class="text-white">RAGE</h3>
									<div class="separator_small"></div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>

								<div class="widget_socail m-top-30">
									<ul class="list-inline-item">
										<li><a href=""><i class="fa fa-facebook"></i></a></li>
										<li><a href=""><i class="fa fa-twitter"></i></a></li>
										<li><a href=""><i class="fa fa-linkedin"></i></a></li>
										<li><a href=""><i class="fa fa-vimeo"></i></a></li>
										<li><a href=""><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-8 sm-m-top-30">
							<form class="" action="subcribe.php">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input id="first_name" name="first_name" type="text" placeholder="Name" class="form-control" required="">
										</div>
									</div>

									<div class="col-sm-6">
										<div class="form-group">
											<input id="phone" name="phone" type="text" placeholder="Phone" class="form-control">
										</div>
									</div>

									<div class="col-sm-12">
										<div class="form-group">
											<textarea class="form-control" rows="6" placeholder="Message"></textarea>
										</div>
										<div class="form-group text-center">
											<a href="" class="btn btn-primary">SEND MESSAGE</a>
										</div>
									</div>

								</div>

							</form>
						</div>
					</div>
				</div>
				<!--End off row -->
			</div>
			<!--End off container -->
		</section>
		<!--End off Contact Section-->


		<!-- scroll up-->
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>
		<!-- End off scroll up -->


		<footer id="footer" class="footer bg-black">
			<div class="container">
				<div class="row">
					<div class="main_footer text-center p-top-40 p-bottom-30">
						<p class="wow fadeInRight" data-wow-duration="1s">
							Made with
							<i class="fa fa-heart"></i> by
							<a target="_blank" href="https://bootstrapthemes.co">Bootstrap Themes</a> 2016. All Rights Reserved
						</p>
					</div>
				</div>
			</div>
		</footer>




	</div>

	<!-- JS includes -->

	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/popper.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/jquery.collapse.js"></script>
	<script src="assets/js/bootsnav.js"></script>


	<!-- paradise slider js -->


	<script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
	<script src="assets/js/gmaps.min.js"></script>

	<script>
		function showmap() {
			var mapOptions = {
				zoom: 8,
				scrollwheel: false,
				center: new google.maps.LatLng(-34.397, 150.644),
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
			$('.mapheight').css('height', '350');
			$('.maps_text h3').hide();
		}

	</script>





	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>


	</div> <!-- 화면 전체를 감싸는 div  -->
	
</body>

</html>