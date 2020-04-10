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
      <title>Sparkline | Metrical - Multipurpose Admin Dashboard Template</title>
      <!-- Main CSS -->			
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/flag-icon/flag-icon.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/simple-line-icons/css/simple-line-icons.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/ionicons/css/ionicons.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/toastr/toastr.min.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/apex-chart/apexcharts.css">
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/app.min.css"/>
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.min.css"/>
      <!-- Favicon -->	
      <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico" type="image/x-icon">
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn"t work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <!-- Page Container Start -->
      <!--================================-->
      <div class="page-container">
         <!-- Page Content Start -->
         <!--================================-->
		<c:import url="include/left.jsp" charEncoding="utf-8" />
		
         <div class="page-content">
			<c:import url="include/header.jsp" charEncoding="utf-8" />
            <div id="mainResult">
            	<c:import url="include/main_form.jsp"></c:import>
            </div>
         </div>
         <!--/ Page Content End -->			
      </div>
      <!--/ Page Container End-->
      <!--================================-->
      <!-- Scroll To Top Start-->
      <!--================================-->	
      <a href="#" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
      <!--/ Scroll To Top End -->
      <!--================================-->
      <!-- Footer Script -->
      <!--================================-->
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/jquery-ui.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/popper/popper.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/feather-icon/feather.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/toastr/toastr.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/chartjs/chartjs.js"></script>	
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/countup/counterup.min.js"></script>		
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/waypoints/waypoints.min.js"></script>	  
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/apex-chart/apexcharts.min.js"></script>	  
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/apex-chart/apex-sample.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/simpler-sidebar/jquery.simpler-sidebar.min.js"></script>	  
      <script src="${pageContext.request.contextPath}/resources/assets/js/dashboard/helpdesk-dashboard-init.js"></script>		  
      <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.slimscroll.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/js/highlight.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/js/app.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
   </body>
</html>