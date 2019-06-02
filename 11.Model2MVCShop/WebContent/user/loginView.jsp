<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
    	 body >  div.container{ 
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
            font-family: "Lato", sans-serif;
        }
        
	        
	.main-head{
	    height: 150px;
	    background: #FFF;
	   
	}
	
	.sidenav {
	    height: 100%;
	    background-color: #000;
	    overflow-x: hidden;
	    padding-top: 20px;
	}
	
	
	.main {
	    padding: 0px 10px;
	}
	
	@media screen and (max-height: 450px) {
	    .sidenav {padding-top: 15px;}
	}
	
	@media screen and (max-width: 450px) {
	    .login-form{
	        margin-top: 10%;
	    }
	
	    .register-form{
	        margin-top: 10%;
	    }
	}
	
	@media screen and (min-width: 768px){
	    .main{
	        margin-left: 40%; 
	    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
	}
	
	
	.login-main-text{
	    margin-top: 20%;
	    padding: 60px;
	    color: #fff;
	}
	
	.login-main-text h2{
	    font-weight: 300;
	}
	
	.btn-black{
	    background-color: #000 !important;
	    color: #fff;
	}
	
	#kakaoLogin{
		cursor: pointer;
	}
    </style>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

		//============= "로그인"  Event 연결 =============
		$( function() {
			
			$("#userId").focus();
			
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("button").on("click" , function() {
				var id=$("input:text").val();
				var pw=$("input:password").val();
				
				if(id == null || id.length <1) {
					alert('ID 를 입력하지 않으셨습니다.');
					$("#userId").focus();
					return;
				}
				
				if(pw == null || pw.length <1) {
					alert('패스워드를 입력하지 않으셨습니다.');
					$("#password").focus();
					return;
				}
				
				$("form").attr("method","POST").attr("action","/user/login").attr("target","_parent").submit();
			});
		});	
		
		
		//============= 회원원가입화면이동 =============
		$( function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		$(function(){
			$('#kakaoLogin').on('click',function(){
				self.location="https://kauth.kakao.com/oauth/authorize?client_id=78fb0165a6ad931048b1bd9c873ef6fd&redirect_uri=http://localhost:8080/user/json/kakaologin&response_type=code";
			});
		});
		
		
	</script>		
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->	
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
	<div class="sidenav">
         <div class="login-main-text">
            <h2>International<br>Mercedes-Benz</h2>
            <p>Login or register from here to access.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form>
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" class="form-control" name="userId" id="userId"  placeholder="User Name">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                  </div>
                  <button type="submit" class="btn btn-black">Login</button>
                  <button type="submit" class="btn btn-secondary">Register</button>
                  <img id="kakaoLogin" alt="" src="/assets/images/clients/kakao_login_btn_small.png">
               </form>
            </div>
         </div>
      </div>
 	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>