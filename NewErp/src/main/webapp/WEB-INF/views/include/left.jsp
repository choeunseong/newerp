<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--================================-->
<!-- Page Sidebar Start -->
<!--================================-->

<div class="logo">
   <a class="logo-img" href="../newerp/main.do">		
    <img class="desktop-logo" src="${pageContext.request.contextPath}/resources/assets/images/logo-white.png" alt="">
    <img class="small-logo" src="${pageContext.request.contextPath}/resources/assets/images/small-logo.png" alt="">
   </a>			
   <i class="ion-ios-close-empty" id="sidebar-toggle-button-close"></i>
</div>
<!--================================-->
<!-- Sidebar Menu Start -->
<!--================================-->
<div class="page-sidebar-inner">
   <div class="page-sidebar-menu">
      <ul class="accordion-menu">
      	<li>
            <a href="../newerp/main.do"><i data-feather="layout"></i>
            	<span>HOME</span>
            </a>
         </li>
         <li>
            <a href="">
	            <i data-feather="home"></i>
		            <span>시스템관리</span>
		            <%-- <span id="wait_member_cnt" class="badge badge-warning ft-left">
		            	${ cnt }
		            </span> --%>
	            <i class="accordion-icon fa fa-angle-left"></i>
            </a>
            <ul class="sub-menu">
               <li><a href="javascript:;" onclick="fnMnuMove('management', 'codeMnu')">코드관리</a></li>
               <!-- <li><a href="javascript:;" onclick="fnMnuMove('classroom', 'classCodeMnu')">강의실</a></li> -->
               <li><a href="javascript:;" onclick="fnMnuMove('management', 'memberCodeMnu')">직원/강사</a></li>
            </ul>
         </li>
         <li>
            <a href="">
	            <i data-feather="mail"></i>
	            <span>원생관리</span>
	            <i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="javascript:;" onclick="fnMnuMove('member', 'studentForm')">원생등록</a></li>
               <li><a href="javascript:;">원생목록</a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="grid"></i>
            <span>수업</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="javascript:;">강의등록 </a></li>
               <li><a href="javascript:;">강의정보</a></li>
               <li><a href="javascript:;">시간표</a></li>
               <li><a href="javascript:;">출석부</a></li>
            </ul>
         </li>
         <li class="menu-divider mg-y-20-force"></li>
         <li>
            <a href=""><i data-feather="grid"></i>
            <span>내 정보보기</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="javascript:;">내 강의 보기</a></li>
               <li><a href="javascript:;">내 정보 수정 </a></li>
               <li><a href="javascript:;">로그아웃</a></li>
            </ul>
         </li>
         <li class="menu-divider mg-y-20-force"></li>
         <li>
            <a href="widgets.html"><i data-feather="layout"></i>
            <span>공지사항</span><span class="badge badge-info ft-right">Hot</span></a>
         </li>
         <li>
            <a href=""><i data-feather="grid"></i>
            <span>게시판</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="javascript:;">선생님 마당 </a></li>
               <li><a href="javascript:;">Q&A</a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="grid"></i>
            <span>학원현황 및 통계</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="javascript:;">월별 학생등록</a></li>
               <li><a href="javascript:;">수강료 수납</a></li>
               <li><a href="javascript:;">과목별 통계</a></li>
            </ul>
         </li>
         
         <!-- <li>
            <a href=""><i data-feather="gift"></i>
            <span>급여관리</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="javascript:;">담당 강사진 목록</a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="command"></i>
            <span>Components</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="com-datepicker.html">Date Picker</a></li>
               <li><a href="com-timepicker.html">Time Picker</a></li>
               <li><a href="com-colorpicker.html">Color Picker</a></li>
               <li><a href="com-bootselect.html">Bootstrap Select</a></li>
               <li><a href="com-codeeditor.html">Code Editor</a></li>
               <li><a href="com-wysiwyg.html">WYSIWYG Editor</a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="calendar"></i>
            <span>Forms</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="form-element.html">Form Elements</a></li>
               <li><a href="form-layout.html">Form Layouts</a></li>
               <li><a href="form-wizard.html">Form Wizard</a></li>
               <li><a href="form-validation.html">Form Validation</a></li>
               <li><a href="form-upload.html">File Upload</a></li>
               <li><a href="form-publisher.html">Form Publishers</a></li>
               <li><a href="form-formatter.html">Form Formatter </a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="database"></i>
            <span>Tables</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="table-static.html">Static</a></li>
               <li><a href="table-responsive.html">Responsive</a></li>
               <li><a href="table-datatable.html">Data Tables</a></li>
               <li><a href="table-footable.html">Foo Tables</a></li>
            </ul>
         </li>
         <li class="open active">
            <a href=""><i data-feather="pie-chart"></i>
            <span>Charts</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu" style="display: block;">
               <li><a href="chart-apex.html">Apex</a></li>
               <li><a href="chart-google.html">Google</a></li>
               <li><a href="chart-morris.html">Morris</a></li>
               <li><a href="chart-chartjs.html">ChartJS</a></li>
               <li><a href="chart-flot.html">Flot</a></li>
               <li><a href="chart-chartlist.html">Chartlist</a></li>
               Active Page
               <li class="active"><a href="chart-sparkline.html">Sparkline</a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="map"></i>
            <span>Maps</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="map-google.html">Google Maps</a></li>
               <li><a href="map-vector.html">Vector Maps</a></li>
            </ul>
         </li>
         <li class="menu-divider mg-y-20-force"></li>
         <li class="mg-20-force menu-extras">Extras</li>
         <li>
            <a href=""><i data-feather="cpu"></i>
            <span>App View</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="app-chatroom.html">Chat Room</a></li>
               <li><a href="app-calendar.html">Calendar</a></li>
            </ul>
         </li>
         <li>
            <a href=""><i data-feather="codepen"></i>
            <span>Pages</span><i class="accordion-icon fa fa-angle-left"></i></a>
            <ul class="sub-menu">
               <li><a href="page-invoice.html">Invoice</a></li>
               <li><a href="page-error404.html">404 Page</a></li>
               <li><a href="page-error500.html">500 Page</a></li>
               <li><a href="page-profile.html">Profile</a></li>
               <li><a href="page-singin.html">Login</a></li>
               <li><a href="page-singup.html">Register</a></li>
               <li><a href="page-unlock.html">Lockscreen</a></li>
               <li><a href="page-password.html">password Reset</a></li>
               <li><a href="page-search.html">Search Result</a></li>
               <li><a href="page-gallery.html">Gallery</a></li>
               <li><a href="page-pricing.html">Pricing Tables</a></li>
               <li><a href="page-treeview.html">Tree View</a></li>
            </ul>
         </li>
         <li>
            <a href="email-template.html"><i data-feather="printer"></i>
            <span>Mail Template</span><span class="badge badge-warning ft-right">Hot</span></a>
         </li>
         <li>
            <a href=""><i data-feather="monitor"></i>
            <span>Frontend</span><span class="badge badge-danger ft-right">Very Hot</span></a>
            <ul class="sub-menu">
               <li><a href="../templates/ecommerce/index.html" target="_blank">Ecommerce</a></li>
               <li><a href="../templates/cryptocurrency/index.html" target="_blank">Cryptocurrency</a></li>
               <li><a href="../templates/helpdesk/index.html" target="_blank">Helpdesk</a></li>
               <li><a href="../templates/project/index.html" target="_blank">project</a></li>
               <li><a href="../templates/server/index.html" target="_blank">server</a></li>
               <li><a href="../templates/education/index.html" target="_blank">education</a></li>
               <li><a href="../templates/event/index.html" target="_blank">event</a></li>
               <li><a href="../templates/social/index.html" target="_blank">social</a></li>
            </ul>
         </li>
         <li class="menu-divider mg-y-20-force"></li>
         <li class="mg-20-force menu-others">Others</li>
         <li>
            <a href="../documentation/documentation.html"><i data-feather="life-buoy"></i>
            <span>Documentation</span></a>
         </li>
         <li>
            <a href="../documentation/changelog.html"><i data-feather="coffee"></i>
            <span>Changelog</span><span class="badge badge-primary ft-right">1.7</span></a>
         </li> -->
      </ul>
   </div>
</div>
<!--/ Sidebar Menu End -->
<!--================================-->
<!-- Sidebar Footer Start -->
<!--================================-->
<div class="sidebar-footer">									
   <a class="pull-left" href="page-profile.html" data-toggle="tooltip" data-placement="top" data-original-title="Profile">
   <i data-feather="user" class="ht-15"></i></a>									
   <a class="pull-left " href="mailbox.html" data-toggle="tooltip" data-placement="top" data-original-title="Mailbox">
   <i data-feather="mail" class="ht-15"></i></a>
   <a class="pull-left" href="page-unlock.html" data-toggle="tooltip" data-placement="top" data-original-title="Lockscreen">
   <i data-feather="lock" class="ht-15"></i></a>
   <a class="pull-left" href="javascript:;" data-toggle="tooltip" data-placement="top" data-original-title="Log Out" onclick="fnLogOut()">
   <i data-feather="log-out" class="ht-15"></i></a>
</div>
<!--/ Sidebar Footer End -->
<!--/ Page Sidebar End -->
<!--================================-->