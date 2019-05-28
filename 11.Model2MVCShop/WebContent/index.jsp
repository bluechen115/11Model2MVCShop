<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// �α��ν� Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->

    
    
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ko">
<!--<![endif]-->

<!--Designerd by: http://bootstrapthemes.co-->

<head>
	<meta charset="euc-kr">
	<title>Rage Freebie HTML5 Landing page</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="favicon.ico">

	<!--Google Font link-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">


	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/slick-theme.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/fonticons.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/bootsnav.css">


	<!--For Plugins external css-->
	<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

	<!--Theme custom css -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

	<!--Theme Responsive css-->
	<link rel="stylesheet" href="assets/css/responsive.css" />

	<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	
	<script type="text/javascript">
		
		//============= ȸ�������� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('Register')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= �α��� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('Login')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
	</script>	
	
	
</head>

<body data-spy="scroll" data-target=".navbar-collapse">


	<!-- Preloader -->
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
			</div>
		</div>
	</div>
	<!--End off Preloader -->


	<div class="culmn">
		<!--Home page style-->



		<nav class="navbar navbar-light navbar-expand-lg  navbar-fixed white no-background bootsnav">
			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span>
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->

			<div class="container">
				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						
						<li class="search"><a href="#">Register</a></li>
						<li class="side-menu"><a href="#">Login</a></li>
					</ul>
				</div>
				<!-- End Atribute Navigation -->

				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-menu">
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>

					<a class="navbar-brand" href="#brand">

                            <img src="assets/images/logo.png" class="logo logo-display m-top-10" alt="">
                            <img src="assets/images/logo.jpg" class="logo logo-scrolled" alt="">

                        </a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
						<li><a href="#hello">Hello</a></li>
						<li><a href="#about">About</a></li>
						<!-- <li><a href="#service">Services</a></li>
						<li><a href="#portfolio">Portfolio</a></li>
						<li><a href="#pricing">Pricing</a></li>
						<li><a href="#blog">Blog</a></li> -->
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>

		<!--Home Sections-->

		<section id="hello" class="home bg-mega" style="width:auto; height:980px;">
			<!-- <div class="overlay">
				<img alt="" src="https://t1.daumcdn.net/cfile/tistory/140829464E5E49D02D"
					style="width:1920px;height:980px;"/>
			</div> -->
			
				<video  autoplay="autoplay" style="position:absolute; width:100%; height:100%;" muted="muted">
					<source src="/videos/benzIntro.mp4" type="video/mp4" >
				</video>
			
			
			<!-- <div class="container">
				<div class="row">
					<div class="main_home">
						<div class="home_text" style="margin-top: 350px;">
							<h1 class="text-white">WE��RE <br /> CREATIVE DEVELOPERS!</h1>
						</div>

						<div class="home_btns m-top-40">
							
						</div>

					</div>
				</div> -->
				<!--End off row-->
			<!-- </div> -->
			<!--End off container -->
		</section>
		<!--End off Home Sections-->


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
			<br />
			<br />
			<br />
			<br />
			<hr />
			<br />
			<br />
		

		<!--client brand section-->
		<section id="cbrand" class="cbrand">
			<div class="container">
				<div class="row">
					<div class="main_cbrand text-center roomy-100">
						<div class="col-md-2 col-sm-4 col-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="assets/images/clients/1.jpg" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="assets/images/clients/2.jpg" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img class="" src="assets/images/clients/5.jpg" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="assets/images/clients/4.jpg" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="assets/images/clients/3.jpg" alt="" /></a>
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-6">
							<div class="cbrand_item m-bottom-10">
								<a href=""><img src="assets/images/clients/1.jpg" alt="" /></a>
							</div>
						</div>
					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off container -->
		</section>
		<!-- End off Cbrand section -->


	

		<!--Maps Section-->
		<div class="main_maps text-center fix">
			<div class="overlay"></div>
			<div class="maps_text">
				<h3 class="text-white" onclick="showmap()">FIND US ON THE MAP <i class="fa fa-angle-down"></i></h3>
				<div id="map_canvas" class="mapheight"></div>
			</div>
		</div>
		<!-- End off Maps Section-->



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

</body>

</html>
