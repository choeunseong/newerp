<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">
   <head>
      <!-- The above 6 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <meta charset="utf-8">
	  <meta http-equiv="x-ua-compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta name="description" content="">
	  <meta name="keyword" content="">
	  <meta name="author"  content=""/>
      <!-- Page Title -->
      <title>Sing In | Metrical - Multipurpose Admin Dashboard Template</title>
      <!-- Main CSS -->			
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/simple-line-icons/css/simple-line-icons.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/ionicons/css/ionicons.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/app.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.min.css"/>
      <!-- Favicon -->	
      <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico" type="image/x-icon">
      
      <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/member.js"></script>
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn"t work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   
	<style>
		.indexPop {
                display: none;
                height: 100%;
                width: 100%;
                z-index:999;
                top: 0;
                left: 0;
                background-color: #ffffff;
                border: 1px solid #000000;
                position : fixed;
           }
	
		@media (min-width: 768px) {
			.indexPop {
				display: none; 
				height: 600px; 
				width: 520px; 
				z-index: 999; 
				top: 50%; 
				left: 50%; 
				background-color : #ffffff;
				position: fixed;
				border: 1px solid #000000;
				margin: -300px 0 0 -260px;
			}
		}
	</style>
   
   <body>
   
		<div class="indexPop" id="indexLayer">
		
		</div>
   	
      <!--================================-->
      <!-- User Singin Start -->
      <!--================================-->			
      <div class="ht-100v d-flex" id="index_result">
         <div class="card shadow-none pd-20 mx-auto wd-300 text-center bd-1 align-self-center">
            <h4 class="card-title mt-3 text-center">New Erp</h4>
            <p class="text-center">이용해 주셔서 감사합니다.</p>
            <!-- <p>
               <a href="" class="btn btn-block btn-twitter tx-13 hover-white"> 
				<i class="fa fa-twitter"></i>   Login via Twitter
               </a>
               <a href="" class="btn btn-block btn-facebook tx-13 hover-white">
               	<i class="fa fa-facebook-f"></i>   Login via facebook
               </a>
            </p> -->
            <p class="divider-text">
               <span class="bg-light"></span>
            </p>
            
            <div>
	            <form id="loginForm" name="loginForm">
	               <div class="form-group input-group">
	                  <div class="input-group-prepend">
	                     <span class="input-group-text pd-x-9"> <i class="fa fa-envelope"></i> </span>
	                  </div>
	                  <input class="form-control form-control-sm" id="user_id" name="user_id" placeholder="아이디를 입력해주세요." type="text" onkeypress="if( event.keyCode == 13 ){fnLogin();}">
	               </div>
	               <div class="form-group input-group">
	                  <div class="input-group-prepend">
	                     <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
	                  </div>
	                  <input class="form-control form-control-sm" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요." type="password" onkeypress="if( event.keyCode == 13 ){fnLogin();}">
	               </div>
	               <p class="text-center">
	               	<a href="page-password.html">
	               		ID 찾기
	               	</a>&emsp;|&emsp;
	               	<a href="page-password.html">
	               		비밀번호 찾기 
	               	</a>
	               </p>
	               <div class="form-group">
	                  <input type="button" class="btn btn-custom-primary btn-block tx-13 hover-white" value="로그인" onclick="fnLogin()">
	               </div>
	               <p class="text-center">회원이 아니세요?<br/> <a href="javascript:;" onclick="fnSignUpView()">회원가입 하기</a> </p>
	            </form>
            </div>
         </div>
      </div>
      <!--/ User Singin End -->
      <!--================================-->
      <!-- Footer Script -->
      <!--================================-->	
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/jquery-ui.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/popper/popper.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.slimscroll.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
   </body>
</html>