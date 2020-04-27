<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="${pageContext.request.contextPath}/resources/js/code.js"></script>
<script>
	fnSearch();
	fnSearch2();
	
	function fnCheckYn(){
		if($("input:checkbox[id='use_check']").is(":checked") == true){
			$("input:checkbox[id='use_check']").attr("checked", false);
			$("#use_yn").val('Y');
		}else if($("input:checkbox[id='use_check']").is(":checked") == false){
			$("input:checkbox[id='use_check']").attr("checked", true);
			$("#use_yn").val('N');
		}
	}
</script>

<div class="pageheader pd-t-25 pd-b-35 pd-l-15">
   <div class="pd-t-5 pd-b-5">
      <h1 class="pd-0 mg-0 tx-20 text-overflow">코드관리</h1> 
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
		    <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="#code_tab1" onclick="">공통코드</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#code_tab2" onclick="">유형코드</a></li>
		</ul>	
	</div>
</div>

<div class="tabs vehicle-details-tabs">
	<div class="tab-content">
		<div class="tab-pane fade active show" id="code_tab1">
		
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
						<form id="codeSearchForm" name="codeSearchForm">
							<input type="hidden" id="curPage" name="curPage" value="1">
							
							<div class="parsley-input col-md-12" style="margin-left:0.5%">
								<div class="input-group">
									<div class="col-md-8 row">
										<select class="form-control select2 col-md-2" id="taskSelect1" name="sys_scd" onchange="fnTypeSearch('typeSelect1', this.value)">
											<option value="">업무구분</option>
											<c:forEach var="taskVO" items="${ taskList }">
												<option value="${ taskVO.cd_id }">${ taskVO.cd_id }  ${ taskVO.cd_nm }</option>
											</c:forEach>
										</select>&nbsp;&nbsp;
										<select class="form-control select2 col-md-2" id="typeSelect1" name="tp_cd">
											<option value="">유형구분</option>
										</select>&nbsp;&nbsp;
										<input type="text" class="form-control datepicker-here col-md-6" id="searchKeyword" name="searchKeyword">  
										<input type="button" class="btn btn-custom-primary pd-y-8 col-md-1" value="조회" onclick="fnSearch()">
									</div>
									<div class="parsley-input col-md-4"> 
										<input type="button" style="float:right; margin-left:2%" class="btn btn-danger pd-y-8" id="delBtn" value="삭제" onclick="fnDelete('1')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-warning pd-y-8" id="modiBtn" value="수정" onclick="fnInputOpen('1', 'update')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-dark pd-y-8" id="cancelBtn" value="취소" onclick="fnInputClose('1')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-primary pd-y-8" id="saveBtn" value="저장" onclick="fnMulti('save')" disabled>
										<input type="button" style="float:right" class="btn btn-success pd-y-8" id="addBtn" value="추가" onclick="fnInputOpen('1', 'save')">
									</div>
								</div> 
							</div>
						</form> 
						<div class="form-group">
							<div class="card-body collapse show" id="collapse1" style="margin-bottom:-5%;">
								<form id="codeForm" name="codeForm">
									<input type="hidden" id="reg_nm_id" name="reg_nm_id" value="${ sessionScope.user.user_id }">
									<input type="hidden" id="use_yn" name="use_yn" value="Y">
									<input type="hidden" id="status" name="status" value="">
								
									<table class="table table-bordered tx-12 tx-gray-700 bd">
										<tr style="text-align: center">
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												업무구분
											</td>
											<td width="15%" class="">
												<select class="form-control select2 col-md-12" id="taskSelect2" name="sys_scd" onchange="fnTypeSearch('typeSelect2', this.value)" readonly>
													<option value="">업무구분</option> 
													<c:forEach var="taskVO" items="${ taskList }">
														<option value="${ taskVO.cd_id }">${ taskVO.cd_id }  ${ taskVO.cd_nm }</option>
													</c:forEach>
												</select>
											</td> 
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												유형구분
											</td>
											<td width="15% class=""> 
												<select class="form-control select2 col-md-12" id="typeSelect2" name="tp_cd" readonly>
													<option value="">유형구분</option>
												</select>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												코드
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="cd_id" name="cd_id" value="" readonly>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												코드명
											</td>
											<td width="15%" class="">
												<input type="text" class="form-control" id="cd_nm" name="cd_nm" value="" readonly>
											</td>
										</tr>
										<tr style="text-align: center"> 
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												참조항목1
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_val01" name="ref_val01" value="" readonly> 
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd" disabled>
												참조항목2
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_val02" name="ref_val02" value="" readonly>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												참조항목3
											</td> 
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_val03" name="ref_val03" value="" readonly>
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												참조항목4
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_val04" name="ref_val04" value="" readonly>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												정렬순서
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="sort_ord" name="sort_ord" value="" readonly>
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												사용여부
											</td> 
											<td colspan="3" class="">
												<div class="row">
													<div class="col-md-5">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" id="use_check" value="Y" onclick="fnCheckYn()" checked disabled>
															<label class="custom-control-label" for="use_check">사용함</label>
														</div>
													</div>
													<!-- <div class="col-md-5">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" id="use_yn2" name="use_yn" value="N" onclick="fnCheckYn('2')" disabled>
															<label class="custom-control-label" for="use_yn2">사용안함</label>
														</div>
													</div> -->
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
				   
		      	<div id="code_result">
		      	
		      	</div>
				      
				<!--/ Striped Table End -->	
				<!--================================-->
				
			</div>
		</div>
		
		<div class="tab-pane fade" id="code_tab2">
		
			<div class="col-md-12 col-lg-12">
				<div class="card mg-b-20">
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
						<form id="codeSearchForm2" name="codeSearchForm2">
							<input type="hidden" id="curPage2" name="curPage2" value="1">
							
							<div class="parsley-input col-md-12" style="margin-left:0.5%">
								<div class="input-group">
									<div class="col-md-8 row">
										<select class="form-control select2 col-md-2" id="taskSelect3" name="sys_scd2" onchange="fnTypeSearch('typeSelect1', this.value)">
											<c:forEach var="taskVO" items="${ taskList }">
												<option value="${ taskVO.cd_id }">${ taskVO.cd_id }  ${ taskVO.cd_nm }</option>
											</c:forEach>
										</select>&nbsp;&nbsp;
										<input type="text" class="form-control datepicker-here col-md-6" id="searchKeyword2" name="searchKeyword2">  
										<input type="button" class="btn btn-custom-primary pd-y-8 col-md-1" value="조회" onclick="fnSearch2()">
									</div>
									<div class="parsley-input col-md-4"> 
										<input type="button" style="float:right; margin-left:2%" class="btn btn-danger pd-y-8" id="delBtn2" value="삭제" onclick="fnDelete('2')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-warning pd-y-8" id="modiBtn2" value="수정" onclick="fnInputOpen('2', 'update')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-dark pd-y-8" id="cancelBtn2" value="취소" onclick="fnInputClose('2')" disabled>
										<input type="button" style="float:right; margin-left:2%" class="btn btn-primary pd-y-8" id="saveBtn2" value="저장" onclick="fnMulti2()" disabled>
										<input type="button" style="float:right" class="btn btn-success pd-y-8" id="addBtn2" value="추가" onclick="fnInputOpen('2', 'save')">
									</div>
								</div> 
							</div>
						</form> 
						<div class="form-group">
							<div class="card-body collapse show" id="collapse1" style="margin-bottom:-5%;">
								<form id="codeForm2" name="codeForm2">
									<input type="hidden" id="reg_nm_id2" name="reg_nm_id2" value="${ sessionScope.user.user_id }">
									<input type="hidden" id="use_yn2" name="use_yn2" value="Y">
									<input type="hidden" id="status2" name="status2" value="">
								
									<table class="table table-bordered tx-12 tx-gray-700 bd">
										<tr style="text-align: center">
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												업무구분
											</td>
											<td width="15%" class="">
												<select class="form-control select2 col-md-12" id="taskSelect4" name="sys_scd2" onchange="fnTypeSearch('typeSelect2', this.value)" readonly>
													<c:forEach var="taskVO" items="${ taskList }">
														<option value="${ taskVO.cd_id }">${ taskVO.cd_id }  ${ taskVO.cd_nm }</option>
													</c:forEach>
												</select>
											</td> 
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												유형코드
											</td>
											<td width="15% class=""> 
												<input type="text" class="form-control" id="tp_cd2" name="tp_cd2" value="" readonly>
											</td>
											<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												코드명
											</td>
											<td colspan="2" class="">
												<input type="text" class="form-control" id="tp_nm2" name="tp_nm2" value="" readonly>
											</td>
										</tr>
										<tr style="text-align: center"> 
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												참조항목1
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_item12" name="ref_item12" value="" readonly> 
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd" disabled>
												참조항목2
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_item22" name="ref_item22" value="" readonly>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												참조항목3
											</td> 
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_item32" name="ref_item32" value="" readonly>
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												참조항목4
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="ref_item42" name="ref_item42" value="" readonly>
											</td>
										</tr>
										<tr style="text-align: center">
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
												정렬순서
											</td>
											<td colspan="3" class="">
												<input type="text" class="form-control" id="sort_ord2" name="sort_ord2" value="" readonly>
											</td>
											<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
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
													<!-- <div class="col-md-5">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" id="use_yn2" name="use_yn" value="N" onclick="fnCheckYn('2')" disabled>
															<label class="custom-control-label" for="use_yn2">사용안함</label>
														</div>
													</div> -->
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
		      	<div id="code_result2">
		      	
		      	</div>
				<!--/ Striped Table End -->	
				<!--================================-->
				
			</div>
		</div>
	</div>
</div>
			
