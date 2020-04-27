<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(document).ready(function(){
		$( "#st_date, #ed_date, #st_application, #ed_application" ).datepicker({
			dateFormat: 'yy-mm-dd',
			prevText: '이전 달',
			nextText: '다음 달',
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			dayNames: ['일','월','화','수','목','금','토'],
			dayNamesShort: ['일','월','화','수','목','금','토'],
			dayNamesMin: ['일','월','화','수','목','금','토'],
			showMonthAfterYear: true,
			buttonText: '<i class="fa fa-calendar"></i>',
			showOn: "button",
			changeYear: true,
			yearSuffix: '년'
		});
		
		$('.fa-calendar').click(function() {
			$("#datepicker").focus();
		});
		
		var option = '<option value="">선택하세요</option>';
		
		for(var i = 10; i <= 18; i++ ){
				option += '<option value="' + i + '00">' + i + ':00</option>' +
						  '<option value="' + i + '30">' + i + ':30</option>';
		}
		$("#st_time").html(option);	// 수업시작시간 select box
		
		option = '<option value="">선택하세요</option>';
		
		for(var i = 11; i <= 20; i++ ){
			if(i != 20){
				option += '<option value="' + i + '00">' + i + ':00</option>' +
						  '<option value="' + i + '30">' + i + ':30</option>';
			}else if(i == 20){
				option += '<option value="' + i + '00">' + i + ':00</option>';
			}
		}
		$("#ed_time").html(option);	// 수업종료시간 select box

		option = '<option value="">선택하세요</option>';
		
		for(var i = 1; i <= 3; i++ ){
			if(i != 3){
				option += '<option value="' + i + '0">' + i + '0명</option>' +
						  '<option value="' + i + '5">' + i + '5명</option>';
			}else if(i == 3){
				option += '<option value="' + i + '0">' + i + '0명</option>';
			}
		}
		option += '<option value="write">직접입력</option>';
		$("#student_cnt").html(option);	// 수강인원제한 select box
		
	});
	
	function fnConfirmTime(gubun){
		var stTime = $("#st_time").val().split(':');
		var edTime = $("#ed_time").val().split(':');
		
		if(gubun == 'st'){
			if(edTime != ''){
				if(stTime[0] <= edTime[0]){
					alert("시작시간이 종료시간보다 같거나 빠를 수 없습니다.\n다시 선택해주세요");
					$("#st_time").val("");
					return;
				}
			}
		}else if(gubun == 'ed'){
			if(stTime != ''){
				if(stTime[0] >= edTime[0]){
					alert("종료시간이 시작시간보다 같거나 느릴 수 없습니다.\n다시 선택해주세요");
					$("#ed_time").val("");
					return;
				}
			}
		}
	}
	
	function fnStuCnt(val){
		if(val == 'write'){
			$("#student_cnt_input").prop("disabled", false);
		}else{
			$("#student_cnt_input").prop("disabled", true);
			$("#ori_student_cnt").val(val);
		}
	}
	
	function fnDisabledOnOff(val){
		if(val != ""){
			$("#teacher_name").prop("disabled", false);
			$("#teacher_name").prop("readonly", true);
		}else if(val == ""){
			$("#teacher_name").val("");
			$("#teacher_name").prop("readonly", false);
			$("#teacher_name").prop("disabled", true);
		}
	}
</script>

<div class="card shadow-none pd-20 mx-auto wd-900 bd-1 align-self-center mg-b-50 mg-t-50">
	<h4 class="card-title mt-3 text-center">강의 등록</h4>
	<p class="text-center">등록할 수업정보를 입력하세요.</p> 
	<div class="card mg-b-20">
		<div class="card-header">
			<h4 class="card-header-title">
				등록자 : ${ sessionScope.user.user_nm }
			</h4>
			* 반드시 모든 정보를 입력해 주세요.
		</div>
		<div class="card-body collapse show" id="collapse7">
			<form id="lessonForm" name="lessonForm">
				<input type="hidden" id="ls_registrant" name="ls_registrant" value="${ sessionScope.user.user_id }">
				
				<div class="form-row">
					<div class="col-md-12 mb-3">
						<label for="ls_nm">강의명</label>
						<div class="input-group">
							<input type="text" class="form-control" id="ls_nm" name="ls_nm" placeholder="강의명을 입력하세요." value="">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="sub_ref">강의과목</label>
						<select class="form-control select2" id="sub_ref" name="sub_ref" onchange="fnDisabledOnOff(this.value)">
							<option value="">선택</option>
							<c:forEach var="subVo" items="${ subList }">
								<option value="${ subVo.cd_id }">${ subVo.cd_nm }</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-6 mb-3">
						<label for="teacher">
							강사명
						</label>
						<c:if test="${ sessionScope.user.user_grp == 'A' }">
							<div class="input-group">
								<input type="text" class="form-control" id="teacher_name" placeholder="강사를 검색해 주세요" value="" disabled>
								<input type="hidden" id="ori_teacher" name="teacher" value="">
								<div class="input-group-prepend">
									<a href="javascript:;" class="input-group-text" onclick="fnTeacherLayer()" title="강사 검색">
										<span>
											<i class="fa fa-search"></i>
										</span>
									</a>
								</div>
							</div>
						</c:if>
						<c:if test="${ sessionScope.user.user_grp == 'B' }">
							<div class="input-group">
								<input type="text" class="form-control" id="teacher" value="${ sessionScope.user.user_nm }" readonly>
								<input type="hidden" id="ori_teacher" name="teacher" value="${ sessionScope.user.user_id }">
							</div>
						</c:if>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="st_date">수업 시작일</label>
						<div class="input-group">
							<input type="text" class="form-control" id="st_date" name="st_date" value="" placeholder="달력 아이콘을 눌러 선택해주세요." readonly>
							<!-- <div class="input-group-prepend">
								<a href="javascript:;" class="input-group-text" onclick="fnEmplSearchOpen('member')">
									<span>
										<i class="fa fa-calendar"></i>
									</span>
								</a>
							</div> -->
						</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="ed_date">수업 종료일</label>
						<div class="input-group">
							<input type="text" class="form-control" id="ed_date" name="ed_date" value="" placeholder="달력 아이콘을 눌러 선택해주세요." readonly>
							<!-- <div class="input-group-prepend">
								<a href="javascript:;" class="input-group-text" onclick="fnEmplSearchOpen('member')">
									<span>
										<i class="fa fa-calendar"></i>
									</span>
								</a>
							</div> -->
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="st_time">수업 시작시간</label>
						<select class="form-control select2" id="st_time" name="st_time" onchange="fnConfirmTime('st')">
							
						</select>
					</div>
					<div class="col-md-6 mb-3">
						<label for="ed_time">수업 종료시간</label>
						<select class="form-control select2" id="ed_time" name="ed_time" onchange="fnConfirmTime('ed')">
							
						</select>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="ls_room">강의실</label>
						<select class="form-control select2" id="ls_room" name="ls_room">
							<option value="">선택</option>
							<c:forEach var="classVo" items="${ classroomList }">
								<option value="${ classVo.cd_id }">${ classVo.cd_nm }</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-6 mb-3">
						<label for="student_cnt">수강인원</label>
						<div class="row">
							<div class="col-md-6">
								<input type="text" class="form-control" id="student_cnt_input" value="" disabled>
								<input type="hidden" class="form-control" id="ori_student_cnt" name="student_cnt">
							</div>
							<div class="col-md-6">
								<select class="form-control select2" id="student_cnt" onchange="fnStuCnt(this.value)">
									
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="st_application">수강신청 시작일</label>
						<div class="input-group">
							<input type="text" class="form-control" id="st_application" name="st_application" placeholder="달력 아이콘을 눌러 선택해주세요." value="" readonly>
							<!-- <div class="input-group-prepend">
								<a href="javascript:;" class="input-group-text" onclick="fnEmplSearchOpen('member')">
									<span>
										<i class="fa fa-calendar"></i>
									</span>
								</a>
							</div> -->
						</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="ed_application">수강신청 종료일</label>
						<div class="input-group">
						<input type="text" class="form-control" id="ed_application" name="ed_application" placeholder="달력 아이콘을 눌러 선택해주세요." value="" readonly>
							<!-- <div class="input-group-prepend">
								<a href="javascript:;" class="input-group-text" onclick="fnEmplSearchOpen('member')">
									<span>
										<i class="fa fa-calendar"></i>
									</span>
								</a>
							</div> -->
						</div>
					</div>
				</div>
				<br>
				<div class="col-md-12 text-center">
					<a href="javascript:;" onclick="fnLessonInsert()" class="btn btn-success">등록하기</a>
					<a href="javascript:;" class="btn btn-custom-primary">목록으로</a>
				</div>
			</form>
		</div>
	</div>
</div>