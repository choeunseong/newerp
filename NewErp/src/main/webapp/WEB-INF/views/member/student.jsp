<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="${pageContext.request.contextPath}/resources/js/code.js"></script>
<script>
	fnStuSearch();
</script>

<div class="pageheader pd-t-25 pd-b-35 pd-l-15">
   <div class="pd-t-5 pd-b-5">
      <h1 class="pd-0 mg-0 tx-20 text-overflow">원생목록</h1> 
   </div>
   <div class="breadcrumb pd-0 mg-0">
      <!-- <a class="breadcrumb-item" href="index.html"><i class="icon ion-ios-home-outline"></i> Home</a>
      <a class="breadcrumb-item" href="#">Forms</a>
      <span class="breadcrumb-item active">Form Formatter</span> -->
   </div>
</div>

<!-- <div class="nav-tabs-top input-group" style="padding-left:15px; padding-top: 10px; padding-right:15px;"> -->
<!-- 	<div class="col-md-8" style="margin-left:-1%;">  -->
<!-- 		<ul class="nav nav-tabs"> -->
<!-- 		    <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="#code_tab1" onclick="">공통코드</a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#code_tab2" onclick="">유형코드</a></li> -->
<!-- 		</ul>	 -->
<!-- 	</div> -->
<!-- </div> -->

		
<div class="col-md-12 col-lg-12">
	<div class="card mg-b-20">
		
		
		<div class="card-body collapse show" id="collapse9">
			<form id="studentSearchForm" name="studentSearchForm">
				<input type="hidden" id="curPage" name="curPage" value="1">
				
				<div class="parsley-input col-md-12" style="margin-left:0.5%">
					<div class="input-group">
						<div class="col-md-8 row">
							<select class="form-control select2 col-md-2" id="partSelect1" name="part" onchange="fnEmplSearch(this.value)">
								<option value="all">본/지사</option>
								<c:forEach var="company" items="${ companyList }">
									<option value="${ company.cd_id }">${ company.cd_nm }</option>
								</c:forEach>
							</select>&nbsp;&nbsp;
							<select class="form-control select2 col-md-2" id="stuEmplSelect1" name="stu_empl">
								<option value="">담당직원</option>
							</select>&nbsp;&nbsp;
<!-- 							<input type="text" class="form-control datepicker-here col-md-6" id="searchKeyword" name="searchKeyword">   -->
							<input type="button" class="btn btn-custom-primary pd-y-8 col-md-1" value="조회" onclick="fnStuSearch()">
						</div>
						<div class="parsley-input col-md-4"> 
							<input type="button" style="float:right; margin-left:2%" class="btn btn-danger pd-y-8" id="delBtn" value="삭제" onclick="fnStuDelete()" disabled>
							<input type="button" style="float:right; margin-left:2%" class="btn btn-warning pd-y-8" id="modiBtn" value="수정" onclick="fnStuInputOpen('update')" disabled>
							<input type="button" style="float:right; margin-left:2%" class="btn btn-dark pd-y-8" id="cancelBtn" value="취소" onclick="fnStuInputClose()" disabled>
							<input type="button" style="float:right; margin-left:2%" class="btn btn-primary pd-y-8" id="saveBtn" value="저장" onclick="fnStuInputOpen('save')" disabled>
<%--  							<input type="button" style="float:right" class="btn btn-success pd-y-8" id="addBtn" value="추가" onclick="fnInputOpen('1', 'save')"> --%>
						</div>
					</div> 
				</div>
			</form> 
			<div class="form-group">
				<div class="card-body collapse show" id="collapse1" style="margin-bottom:-5%;">
					<form id="studentForm" name="studentForm">
						<input type="hidden" id="reg_nm_id" name="reg_nm_id" value="${ sessionScope.user.user_id }">
						<input type="hidden" id="use_yn" name="use_yn" value="Y">
						<input type="hidden" id="pageNo" name="pageNo" value="1">
						<input type="hidden" id="status" name="status" value="">
						<table class="table table-bordered tx-12 tx-gray-700 bd" id="stuDetailTable">
							<tr style="text-align: center">
								<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									본/지사
								</td>
								<td width="15%" class="">
									<select class="form-control select2 col-md-12" id="partSelect2" name="part" onchange="fnTypeSearch('partSelect2', this.value)" disabled>
										<option value="">본/지사</option> 
										<c:forEach var="company" items="${ companyList }">
											<option value="${ company.cd_id }">${ company.cd_nm }</option>
										</c:forEach>
									</select>
								</td> 
								<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									원생이름
								</td>
								<td width="15% class=""> 
									<input type="text" class="form-control" id="stu_nm" name="stu_nm" disabled>
								</td>
								<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									생년월일
								</td>
								<td width="15%" class="">
									<input type="text" class="form-control" id="stu_age" name="stu_age" value="" disabled>
								</td>
								<td width="10%" class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									전화번호
								</td>
								<td width="15%" class="">
									<input type="text" class="form-control" id="stu_phone" name="stu_phone" value="" disabled>
								</td>
							</tr>
							<tr style="text-align: center"> 
								<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									이메일
								</td>
								<td colspan="3" class="">
									<input type="text" class="form-control" id="stu_email" name="stu_email" value="" disabled> 
								</td>
								<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd" >
									담당자
								</td>
								<td  class="">
									<select class="form-control select2" id="stuEmplSelect2" name="stu_empl" disabled>
										<option value="">담당직원</option>
									</select>
								</td>
								<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									사진
								</td>
								<td  class="">
									<input type="file" class="form-control" id="file_stu_pict" name="file_stu_pict" value="" disabled> 
								</td>
							</tr>
							<tr style="text-align: center">
								<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									비고
								</td>
								<td colspan="3" class="">
									<input type="text" class="form-control" id="bigo" name="bigo" value="" disabled>
								</td>
								<td class="bg-gray-100 tx-11 tx-uppercase tx-gray-800 bd">
									사용여부
								</td> 
								<td colspan="3" class="">
									<div class="row">
										<div class="col-md-5">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="stu_use_yn" name="use_yn" value="Y" onclick="fnCheckYn()" checked disabled>
												<label class="custom-control-label" for="stu_use_yn">사용함</label>
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
	   
     	<div id="student_result">
     	
     	</div>
	      
	<!--/ Striped Table End -->	
	<!--================================-->
	
</div>
		
				
