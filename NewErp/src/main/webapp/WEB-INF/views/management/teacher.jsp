<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="${pageContext.request.contextPath}/resources/js/member.js"></script>

<script>
	$(document).ready(function(){
		$(".permit_check").click(function(){
			$(".permit_check").prop("checked", false);
			$(this).prop("checked", true);
		});
	});

	fnSearch();
	fnSearch2();
</script>

<div class="pageheader pd-t-25 pd-b-35 pd-l-15">
   <div class="pd-t-5 pd-b-5">
      <h1 class="pd-0 mg-0 tx-20 text-overflow">직원/강사</h1> 
   </div>
   <div class="breadcrumb pd-0 mg-0">
      <!-- <a class="breadcrumb-item" href="index.html"><i class="icon ion-ios-home-outline"></i> Home</a>
      <a class="breadcrumb-item" href="#">Forms</a>
      <span class="breadcrumb-item active">Form Formatter</span> -->
   </div>
</div>

<div class="nav-tabs-top input-group" style="padding-left:15px; padding-top: 10px; padding-right:15px;">
	<div class="col-md-8" style="margin-left:-1%;"> 
		<ul class="nav nav-tabs">
		    <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="#empl_tab" onclick="">직원</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#teacher_tab" onclick="">강사</a></li>
		</ul>	
	</div>
</div>


<div class="tabs vehicle-details-tabs">
	<div class="tab-content">
		<div class="tab-pane fade active show" id="empl_tab">
		
			<div class="col-md-12 col-lg-12">
				<div class="card mg-b-20 pd-b-20">
						<!-- <h4 class="card-header-title">
							공통코드입력
						</h4> -->
						<!-- <div class="card-header-btn">
							<a  href="" data-toggle="collapse" class="btn card-collapse" data-target="#collapse9" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
							<a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
							<a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
							<a href="" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a>
						</div> -->
					
					<div class="card-body collapse show" id="collapse9">
						<form id="emplSearchTabForm1" name="emplSearchTabForm1">
							<input type="text" style="display: none;">
							<input type="hidden" id="curPage" name="curPage" value="1">
							<input type="hidden" id="ori_user_id1" name="ori_user_id1" value="">
							<input type="hidden" id="ori_user_nm1" name="ori_user_nm1" value="">
							
							<div class="parsley-input col-md-12" style="margin-left:0.5%">
								<div class="input-group">
									<div class="col-md-8 row"> 
										<select class="form-control select2 col-md-2" id="part_select" name="partSearch" onchange="fnSearch()">
											<option value="">본/지사</option>
											<c:forEach var="part" items="${ partList }">
												<option value="${ part.cd_id }">${ part.cd_nm }</option>
											</c:forEach>
										</select>&nbsp;&nbsp;
										<input type="text" class="form-control datepicker-here col-md-6" id="searchKeyWord1" name=searchKeyWord 
												placeholder="반드시 이름으로 검색해주세요." onkeypress="if( event.keyCode == 13 ){fnSearch();}">   
										<input type="button" class="btn btn-custom-primary pd-y-8 col-md-1" value="조회" onclick="fnSearch()">
									</div>
									<div class="parsley-input col-md-4"> 
										<input type="button" style="float:right; margin-left:2%" class="btn btn-danger pd-y-8" id="delBtn1" value="삭제" onclick="fnDelete('1')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-warning pd-y-8" id="modiBtn1" value="수정" onclick="fnInputOpen('1', 'update')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-dark pd-y-8" id="cancelBtn1" value="취소" onclick="fnInputClose('1')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-primary pd-y-8" id="saveBtn1" value="저장" onclick="fnEmplInsert('1')" disabled>
										<input type="button" style="float:right" class="btn btn-success pd-y-8" id="addBtn1" value="추가" onclick="fnInputOpen('1', 'save')">
									</div>
								</div> 
							</div>
						</form> 
						<div class="form-group">
							<div class="card-body collapse show" id="collapse1" style="margin-bottom:-5%;">
								<form id="emplForm" name="emplForm" method="post" enctype="multipart/form-data">
									<input type="hidden" id="use_yn" name="use_yn" value="Y">
									<input type="hidden" id="update_user_id1" name="update_user_id1" value="">
									<input type="hidden" id="status1" name="status1" value="">
								
									<table class="table table-bordered tx-12 tx-gray-700 bd">
										<tr style="text-align: center">
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												지점
											</td>
											<td width="15%" class="">
												<select class="form-control select2" id="part1" name="part" disabled>
													<option value="">본/지사</option>
													<c:forEach var="part" items="${ partList }">
														<option value="${ part.cd_id }">${ part.cd_nm }</option>
													</c:forEach>
												</select>
											</td> 
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												이름
											</td>
											<td width="15% class=""> 
												<input type="text" class="form-control" id="user_nm1" name="user_nm" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												ID
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="user_id1" name="user_id" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												P.W
											</td>
											<td width="15%" class="">
												<input type="password" class="form-control" id="user_pw1" name="user_pw" value="" disabled>
											</td>
										</tr>
										<tr style="text-align: center"> 
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												생년월일
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="user_age1" name="user_age" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												연락처
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="user_phone1" name="user_phone" value="" disabled>
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												이메일
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="user_email1" name="user_email" value="" disabled>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												사진
											</td>
											<td colspan="3" class="">
												<input type="file" class="form-control" id="user_pict1" name="file_user_pict" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												사용여부
											</td>  
											<td colspan="3" class="">
												<div class="row">
													<div class="col-md-5">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" id="use_check1" value="Y" onclick="fnCheckYn()" checked disabled>
															<label class="custom-control-label" for="use_check1">사용함</label>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Striped Table Start -->
				<!--================================-->
				   
		      	<div id="empl_result">
		      	
		      	</div>
				      
				<!--/ Striped Table End -->	
				<!--================================-->
				
			</div>
		</div>
		
		<div class="tab-pane fade" id="teacher_tab">
		
			<div class="col-md-12 col-lg-12">
				<div class="card mg-b-20 pd-b-20">
						<!-- <h4 class="card-header-title"> 
							유형코드입력
						</h4> -->
						<!-- <div class="card-header-btn">
							<a  href="" data-toggle="collapse" class="btn card-collapse" data-target="#collapse9" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
							<a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
							<a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
							<a href="" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a>
						</div> -->
					
					
					<div class="card-body collapse show" id="collapse9">
						<form id="teacherSearchTabForm1" name="teacherSearchTabForm1">
							<input type="text" style="display: none;">
							<input type="hidden" id="search_part" name="part" value="${ sessionScope.user.part }">
							<input type="hidden" id="curPage2" name="curPage2" value="1">
							<input type="hidden" id="ori_user_id2" name="ori_user_id2" value="">
							<input type="hidden" id="ori_user_nm2" name="ori_user_nm2" value="">
							
							<div class="parsley-input col-md-12" style="margin-left:0.5%">
								<div class="input-group">
									<div class="col-md-8 row">
										<select class="form-control select2 col-md-2" id="empl_select" name="user_empl" onchange="fnSearch2()">
											<option value="">검색구분</option>
											<option value="${ sessionScope.user.user_id }">담당강사</option>
										</select>&nbsp;&nbsp;
										<select class="form-control select2 col-md-2" id="permit_select" name="user_permit" onchange="fnSearch2()">
											<option value="">전체</option>
											<option value="A">승인</option>
											<option value="B">대기</option>
											<option value="C">거부</option>
										</select>&nbsp;&nbsp;
										<input type="text" class="form-control datepicker-here col-md-6" id="searchKeyword" name="searchKeyWord" 
												placeholder="반드시 이름으로 검색해주세요." onkeypress="if( event.keyCode == 13 ){fnSearch2();}">  
										<input type="button" class="btn btn-custom-primary pd-y-8 col-md-1" value="조회" onclick="fnSearch2()">
									</div>
									<div class="parsley-input col-md-4"> 
										<input type="button" style="float:right; margin-left:2%" class="btn btn-danger pd-y-8" id="delBtn2" value="삭제" onclick="fnDelete('2')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-warning pd-y-8" id="modiBtn2" value="수정" onclick="fnInputOpen('2', 'update')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-dark pd-y-8" id="cancelBtn2" value="취소" onclick="fnInputClose('2')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-primary pd-y-8" id="saveBtn2" value="저장" onclick="fnSignUp('insert', '2')" disabled>
										<input type="button" style="float:right" class="btn btn-success pd-y-8" id="addBtn2" value="추가" onclick="fnInputOpen('2', 'save')">
									</div> 
								</div> 
							</div>
						</form> 
						<div class="form-group">
							<div class="card-body collapse show" id="collapse1" style="margin-bottom:-5%;">
								<form id="teacherForm" name="teacherForm" enctype="multipart/form-data">
									<input type="hidden" id="use_yn2" name="use_yn" value="Y">
									<input type="hidden" id="part2" name="part" value="${ sessionScope.user.part }">
									<input type="hidden" id="update_user_id2" name="update_user_id2" value="">
									<input type="hidden" id="status2" name="status" value="">
								
									<table class="table table-bordered tx-12 tx-gray-700 bd">
										<tr style="text-align: center">
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												ID
											</td>
											<td width="15%" class=""> 
												<input type="text" class="form-control" id="user_id2" name="user_id" value="" disabled>
											</td> 
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												PW
											</td>
											<td width="15% class=""> 
												<input type="password" class="form-control" id="user_pw2" name="user_pw" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												이름
											</td>
											<td width="" class="">
												<input type="text" class="form-control" id="user_nm2" name="user_nm" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												담당자
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="user_empl2" name="user_empl" value="" disabled>
											</td>
										</tr>
										<tr style="text-align: center"> 
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												생년월일
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="user_age2" name="user_age" value="" disabled>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												연락처
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="user_phone2" name="user_phone" value="" disabled>
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												이메일
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="user_email2" name="user_email" value="" disabled>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												승인여부
											</td>
											<td colspan="3" class="">
												<div class="row">
													<div class="col-md-4">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input permit_check" id="permit_checkA" name="user_permit" value="A" disabled>
															<label class="custom-control-label" for="permit_checkA">승인</label>
														</div>
													</div>
													<div class="col-md-4">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input permit_check" id="permit_checkB" name="user_permit" value="B" disabled>
															<label class="custom-control-label" for="permit_checkB">대기</label>
														</div>
													</div>
													<div class="col-md-4">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input permit_check" id="permit_checkC" name="user_permit" value="C" disabled>
															<label class="custom-control-label" for="permit_checkC">거부</label>
														</div>
													</div>
												</div>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												사용여부
											</td>  
											<td colspan="3" class="">
												<div class="row">
													<div class="col-md-5">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" id="use_check2" value="Y" onclick="fnCheckYn()" checked disabled>
															<label class="custom-control-label" for="use_check2">사용함</label>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												사진
											</td>
											<td colspan="3" class="">
												<input type="file" class="form-control" id="user_pict2" name="file_user_pict" disabled>
											</td>
											<td class="">
												
											</td>
											<td colspan="3" class="">
												
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Striped Table Start -->
				<!--================================-->
		      	<div id="teacher_result">
		      	
		      	</div>
				<!--/ Striped Table End -->	
				<!--================================-->
				
			</div>
		</div>
	</div>
</div>
			
