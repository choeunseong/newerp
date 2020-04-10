<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	function fnEmplShow(val){
		if(val != ''){
			$("#user_empl").prop("readonly", true);
			$("#emplSearchKey1").val(val);
		}else{
			$("#user_empl").prop("disabled", true);
			$("#emplSearchKey1").val("");
		}
	}
	
</script>

<div class="card shadow-none pd-20 mx-auto wd-900 bd-1 align-self-center">
	<h4 class="card-title mt-3 text-center">학생 등록</h4>
	<p class="text-center">학생정보를 입력해주세요.</p>
	<div class="card mg-b-20">
		<div class="card-header">
		<h4 class="card-header-title">
			학생정보등록(<span class="tx-danger"> *</span> 표시는 필수 입력사항 입니다.)
		</h4>
		<div class="card-header-btn">
			<a href="" data-toggle="collapse" class="btn card-collapse" data-target="#collapse4" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
			<!-- <a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
			<a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
			<a href="" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a> -->
		</div>
		</div>
		<div class="card-body collapse show" id="collapse7">
			<form id="stuSignUpForm" name="stuSignUpForm" method="post" enctype="multipart/form-data">
				<input type="hidden" id="check_conFirm" name="check_conFirm" value="N">
				<input type="hidden" id="emplSearchKey1" name="emplSearchKey" value="">
				
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="part">본/지사</label><span class="tx-danger"> *</span>
						<select class="form-control select2" id="part" name="part" onchange="fnEmplShow(this.value)">
							<option value="">선택</option>
							<c:forEach var="company" items="${ companyList }">
								<option value="${ company.cd_id }">${ company.cd_nm }</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-6 mb-3">
						<label for="user_empl">
							담당자(본/지사 선택 후 버튼을 눌러주세요.)
						</label><span class="tx-danger"> *</span>
						<div class="input-group">
							<input type="text" class="form-control" id="user_empl" placeholder="담당 직원ID를 검색해주세요" value="" disabled>
							<input type="hidden" id="ori_user_empl" name="stu_empl" value="">
							<div class="input-group-prepend">
								<a href="javascript:;" class="input-group-text" onclick="fnEmplSearchOpen('student')" title="담당자 검색">
									<span>
										<i class="fa fa-search"></i>
									</span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="user_id">ID (반드시 중복체크를 해주세요.)</label><span class="tx-danger"> *</span>
						<div class="input-group">
							<input type="text" class="form-control" id="user_id" name="user_id" placeholder="ID를 입력해주세요" value="" onkeypress="fnCheckYn()">
							<div class="input-group-prepend">
								<a href="javascript:;" class="input-group-text" onclick="fnIdCheck()" title="ID 중복체크">
									<span>
										<i class="fa fa-check"></i>
									</span>
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="user_pw">Password</label><span class="tx-danger"> *</span>
						<div class="input-group">
							<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요"  >
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroupPrepend">@</span>
							</div>
						</div>
					</div>
				</div> -->
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="user_nm">이름</label><span class="tx-danger"> *</span>
						<input type="text" class="form-control" id="stu_nm" name="stu_nm" placeholder="이름을 입력해주세요" value="" >
					</div>
					<div class="col-md-6 mb-3">
						<label for="user_age">생년월일</label>
						<input type="text" class="form-control" id="stu_age" name="stu_age" placeholder="생년월일을 입력해주세요  ex)901203" value="" >
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="user_phone">전화번호</label><span class="tx-danger"> *</span>
						<input type="text" class="form-control" id="stu_phone" name="stu_phone" placeholder="전화번호를 입력해주세요" value="" >
					</div>
					<div class="col-md-6 mb-3">
						<label for="user_email">이메일</label><span class="tx-danger"> *</span>
						<input type="text" class="form-control" id="stu_email" name="stu_email" placeholder="이메일주소를 입력해주세요" value="" >
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-12 mb-3">
						<label for="user_pict">사진</label>
						<div class="input-group">
							<input type="file" class="form-control" id="file_stu_pict" name="file_stu_pict" placeholder="사진을 등록해주세요" aria-describedby="inputGroupPrepend" >
							<div class="input-group-prepend">
								<span class="input-group-text">@</span>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="col-md-12 text-center">
					<a href="javascript:;" onclick="fnStuInsert()" class="btn btn-success">가입하기</a>
					<a href="index.do" class="btn btn-custom-primary">돌아가기</a>
				</div>
			</form>
		</div>
	</div>
</div>