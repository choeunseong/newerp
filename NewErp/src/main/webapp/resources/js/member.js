// 직원 검색
function fnSearch(){
//	alert("직원 서치");
	var params = $("#emplSearchTabForm1").serialize();
	
	$.ajax({
		type : "POST", 
		url : "emplTabSearch.do", 
		dataType : "html",
		data : params,
		success:function(data){ //통신 성공시 처리
			$("#empl_result").html(data);
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
	
}

// 강사 검색
function fnSearch2(){
//	alert("직원 서치");
	var params = $("#teacherSearchTabForm1").serialize();
	
	$.ajax({
		type : "POST", 
		url : "teacherTabSearch.do", 
		dataType : "html",
		data : params,
		success:function(data){ //통신 성공시 처리
			$("#teacher_result").html(data);
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
	
}

// 회원가입하기
function fnSignUp(gubun, tab_gubun){
	var msg = "";
	var form = "";
	var url = "memberInsert.do";
	
	if(gubun == 'insert'){
		form = $('#teacherForm')[0];
		if($("#status2").val() == 'save'){
			msg = "저장";
		}else if($("#status2").val() == 'update'){
			msg = "수정";
			url = "teacherUpdate.do";
		}
	}else if(gubun == 'sign'){
		msg = "가입";
		form = $('#memberSignUpForm')[0];
		
		if($("#part").val() == ''){
			alert("본/지사 구분을 선택해주세요.");
			return;
		}
		if($("#user_empl").val() == ''){
			alert("담장자를 입력해주세요.");
			return;
		}
		if($("#check_conFirm").val() == 'N'){
			alert("ID 중복체크 후 가입이 가능합니다.");
			return;
		}
		if($("#user_pw").val() == ''){
			alert("비밀번호르 입력해주세요.");
			return;
		}
		if($("#user_nm").val() == ''){
			alert("이름을 입력해주세요.");
			return;
		}
		if($("#user_phone").val() == ''){
			alert("연락처를 입력해주세요.");
			return;
		}
		if($("#user_email").val() == ''){
			alert("이메일을 입력해주세요.");
			return;
		}
	}
	alert(msg);
	alert(url);
	if(confirm(msg + "하시겠습니까?") == true){
	    // Create an FormData object 
	    var data = new FormData(form);
		
		$.ajax({
			type : "POST", 
	        enctype: 'multipart/form-data',
			url : url, 
	        processData: false,
	        contentType: false, 
			dataType : "json",
			data : data,
			success:function(data){ //통신 성공시 처리
				if(gubun == 'sign'){
					if(data.result == "success"){
						alert("가입이 완료되었습니다.\r\n가입 승인이 완료된 후 로그인이 가능합니다.");
						location.href = "index.do";
					}else if(data.result == "fail"){
						alert("가입에 실패하였습니다.\r\n다시 시도해주세요.");
					}
				}else if(gubun == 'insert'){
					if(data.result == "success"){
						alert("강사정보가 " + msg + "되었습니다.");
						fnInputClose(tab_gubun);
						fnSearch();
						fnSearch2();
					}else if(data.result == "fail"){
						alert(msg + "에 실패했습니다.\r\n다시 시도해주세요.");
					}
				}
			},
			error : function(request, status, error){ //통신 에러시
				alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
			}
			,beforeSend:function(){} //통신을 시작할때 처리
			,complete :function(){}  //통신을 완료한후 처리
		});
	}
}

// ID 중복체크
function fnIdCheck(){
	if($("#user_id").val == ''){
		alert("ID를 입력해 주세요.");
		return;
	}
	var user_id = $("#user_id").val();
	
	$.ajax({
		type : "POST", 
		url : "idCheck.do", 
		dataType : "json",
		data : {user_id : user_id},
		success:function(data){ //통신 성공시 처리
			if(data.result == "find"){
				alert("이미 존재하는 ID입니다. 다른 ID를 입력해 주세요.");
				return;
			}else if(data.result == "no_found"){
				alert("가입 가능한 ID입니다. 가입하시겠습니까?");
				$("#check_conFirm").val("Y");
				return;
			}
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 담당자검색 layer열기
function fnEmplSearchOpen(gubun){
	if($("#part").val() == ""){
		alert("본/지사를 선택해 주세요.");
		return;
	}
	
	var part = "";	
	
	if(gubun == "member"){
		part = $("#emplSearchKey").val();	// 강사 회원가입일 때
		$("#indexLayer").show();	
	}else if(gubun == "student"){
		part = $("#emplSearchKey1").val();	// 학생등록일 때
		$("#mainLayer").show();
	}
	
	
	$.ajax({
		type : "POST", 
		url : "emplSearchOpen.do", 
		dataType : "html",
		data : {part : part},
		success:function(data){ //통신 성공시 처리
			if(gubun == "member"){
				$("#indexLayer").html(data);
			}else if(gubun == "student"){
				$("#mainLayer").html(data);
			}
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 담당자 검색
function fnEmplSearch(){
	var params = $("#emlpSearchForm").serialize();
	
	$.ajax({
		type : "POST", 
		url : "emplSearch.do", 
		dataType : "html",
		data : params,
		success:function(data){ //통신 성공시 처리
			$("#empl_result").html(data);
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 담당자 저장
function fnEmplInput(id, name){
	$("#user_empl").val(name);
	$("#ori_user_empl").val(id);
	
	fnLayerClose();
}

// 레이어 닫기
function fnLayerClose(){
	$("#indexLayer").hide();
	$("#mainLayer").hide();
}


// 아이디 input 수정시 중복체크 여부 N으로 바뀜
function fnCheckYn(){
	$("#check_conFirm").val("N");
}

// 추가/수정 버튼
function fnInputOpen(tab_gubun, val){
//	alert("1");
	$("#status" + tab_gubun).val(val);
	
	if(val == "save"){
		$("#addBtn" + tab_gubun).prop("disabled", true);
		$("#saveBtn" + tab_gubun).prop("disabled", false);
		$("#cancelBtn" + tab_gubun).prop("disabled", false);
//		$("#user_id" + tab_gubun).prop("disabled", false);
	}else if(val == "update"){
		$("#addBtn" + tab_gubun).prop("disabled", true);
		$("#saveBtn" + tab_gubun).prop("disabled", false);
		$("#cancelBtn" + tab_gubun).prop("disabled", false);
		$("#modiBtn" + tab_gubun).prop("disabled", true);
		$("#delBtn" + tab_gubun).prop("disabled", true);
//		$("#user_id" + tab_gubun).prop("disabled", false);
	}
	
	$("#user_nm" + tab_gubun).prop("disabled", false);
	$("#user_pw" + tab_gubun).prop("disabled", false);
	$("#user_age" + tab_gubun).prop("disabled", false);
	$("#user_phone" + tab_gubun).prop("disabled", false);
	$("#user_email" + tab_gubun).prop("disabled", false);
	$("#use_check" + tab_gubun).prop("disabled", false);
	$("#user_pict" + tab_gubun).prop("disabled", false);
	
	if(tab_gubun == '1'){
		$("#part" + tab_gubun).prop("disabled", false);
	}else if(tab_gubun == '2'){
		$("#permit_checkA").prop("disabled", false);
		$("#permit_checkB").prop("disabled", false);
		$("#permit_checkC").prop("disabled", false);
		$("#user_empl" + tab_gubun).prop("disabled", false);
	}
}
 
// 취소버튼
function fnInputClose(tab_gubun){
	fnDisabled(tab_gubun);
	
	$("#part" + tab_gubun).val("");
	$("#user_nm" + tab_gubun).val("");
	$("#user_id" + tab_gubun).val("");
	$("#user_pw" + tab_gubun).val("");
	$("#user_age" + tab_gubun).val("");
	$("#user_phone" + tab_gubun).val("");
	$("#user_email" + tab_gubun).val("");
	$("#use_check" + tab_gubun).prop("checked", true);
	$("#user_pict" + tab_gubun).val("");
	
	if(tab_gubun == '2'){
		$("#permit_checkA").prop("checked", false);
		$("#permit_checkB").prop("checked", false);
		$("#permit_checkC").prop("checked", false);
	}
}

// 입력태그 disalbed
function fnDisabled(tab_gubun){
	$("#delBtn" + tab_gubun).prop("disabled", true);
	$("#modiBtn" + tab_gubun).prop("disabled", true);
	$("#cancelBtn" + tab_gubun).prop("disabled", true);
	$("#saveBtn" + tab_gubun).prop("disabled", true);
	$("#addBtn" + tab_gubun).prop("disabled", false);
	
	$("#user_id" + tab_gubun).prop("disabled", true);
	$("#user_pw" + tab_gubun).prop("disabled", true);
	$("#user_nm" + tab_gubun).prop("disabled", true);
	$("#user_age" + tab_gubun).prop("disabled", true);
	$("#user_phone" + tab_gubun).prop("disabled", true);
	$("#user_email" + tab_gubun).prop("disabled", true);
	$("#use_check" + tab_gubun).prop("disabled", true);
	$("#user_pict" + tab_gubun).prop("disabled", true);
	
	if(tab_gubun == '1'){
		$("#part" + tab_gubun).prop("disabled", true);
	}else if(tab_gubun == '2'){
		$("#user_empl" + tab_gubun).prop("disabled", true);
		$("#permit_checkA").prop("disabled", true);
		$("#permit_checkB").prop("disabled", true);
		$("#permit_checkC").prop("disabled", true);
	}
} 

// 직원 상세보기
function fnEmplDetail(tab_gubun, part, user_nm, user_id, user_pw, user_age, user_phone, user_email, use_yn){
	fnDisabled(tab_gubun);	// 입력태그 disabled 주는 함수
//	alert("1");
	$("#ori_user_id" + tab_gubun).val(user_id);
	$("#ori_user_nm" + tab_gubun).val(user_nm);
	$("#update_user_id" + tab_gubun).val(user_id);
	
	$("#addBtn" + tab_gubun).prop("disabled", true);
	$("#cancelBtn" + tab_gubun).prop("disabled", false);
	$("#modiBtn" + tab_gubun).prop("disabled", false);
	$("#delBtn" + tab_gubun).prop("disabled", false);
	
	$("#part" + tab_gubun).val(part).prop("selected", true);
	$("#user_nm" + tab_gubun).val(user_nm);
	$("#user_id" + tab_gubun).val(user_id);
	$("#user_pw" + tab_gubun).val(user_pw);
	$("#user_age" + tab_gubun).val(user_age);
	$("#user_phone" + tab_gubun).val(user_phone);
	$("#user_email" + tab_gubun).val(user_email);
	
	$("#ori_user_id" + tab_gubun).val(user_id);
	
	if(use_yn == "Y"){
		$("#use_check" + tab_gubun).prop("checked", true);
	}else{
		$("#use_check" + tab_gubun).prop("checked", false);
	}
	
}

// 강사 상세보기
function fnTeacherDetail(tab_gubun,part, user_id, user_pw, user_nm, user_empl, user_age, user_phone, user_email, user_permit, use_yn, user_pict){
	fnDisabled(tab_gubun);	// 입력태그 disabled 주는 함수
//	alert(user_pict);
	$("#permit_checkA").prop("checked", false);
	$("#permit_checkB").prop("checked", false);
	$("#permit_checkC").prop("checked", false);		// 여기서부터 위 3개는 승인여부 체크 해제하기 위함.
	
	$("#ori_user_id" + tab_gubun).val(user_id);
	$("#ori_user_nm" + tab_gubun).val(user_nm);
	$("#update_user_id" + tab_gubun).val(user_id);
	
	$("#addBtn" + tab_gubun).prop("disabled", true);
	$("#cancelBtn" + tab_gubun).prop("disabled", false);
	$("#modiBtn" + tab_gubun).prop("disabled", false);
	$("#delBtn" + tab_gubun).prop("disabled", false);
	
//	$("#part" + tab_gubun).val(part).prop("selected", true);
	$("#user_id" + tab_gubun).val(user_id);
	$("#user_pw" + tab_gubun).val(user_pw);
	$("#user_nm" + tab_gubun).val(user_nm);
	$("#user_empl" + tab_gubun).val(user_empl);
	$("#user_age" + tab_gubun).val(user_age);
	$("#user_phone" + tab_gubun).val(user_phone);
	$("#user_email" + tab_gubun).val(user_email);
	$("#permit_check" + user_permit).prop("checked", true);
//	$("#user_pict" + tab_gubun).val(user_pict);
	 
	$("#ori_user_id" + tab_gubun).val(user_id);
	
	if(use_yn == "Y"){
		$("#use_check" + tab_gubun).prop("checked", true);
	}else{
		$("#use_check" + tab_gubun).prop("checked", false);
	}
	
}

// 직원 저장/수정
function fnEmplInsert(tab_gubun){
	var msg = "저장";
	var url = "emplInsert.do";
	
	if($("#status1").val() == "update"){
		msg = "수정";
		url = "emplUpdate.do";
	} 
	
	if(confirm(msg + "하시겠습니까?") == true){
		// Get form
	    var form = $('#emplForm')[0];
	    // Create an FormData object 
	    var data = new FormData(form);
	    
		$.ajax({ 
			type: 'post' 
	        , enctype: 'multipart/form-data'
			, url : url
	        , processData: false
	        , contentType: false
			, dataType : 'json'
			, data: data
			, success: function(data) { 
				if(data.result == "success"){
					alert("직원정보가 " + msg + "되었습니다.");
					fnInputClose(tab_gubun);
					fnSearch();
					fnSearch2();
				}else{
					alert(msg + "에 실패했습니다.\r\n다시 시도해주세요.");
				}
				
				  
			},
			error : function(request, status, error){ //통신 에러시
				alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
			}
			,beforeSend:function(){} //통신을 시작할때 처리
			,complete :function(){}  //통신을 완료한후 처리
		});
	}
	
}

/*// 강사 저장/수정
function fnTeacherInsert(gubun){
//	alert($("#update_user_id1").val());
	var msg = "저장";
	var url = "emplInsert.do";
	
	if($("#status1").val() == "update"){
		msg = "수정";
		url = "emplUpdate.do";
	}
	
	if(confirm(msg + "하시겠습니까?") == true){
		// Get form
		var form = $('#emplForm')[0];
		// Create an FormData object 
		var data = new FormData(form);
		
		$.ajax({ 
			type: 'post' 
			, enctype: 'multipart/form-data'
			, url : url
			, processData: false
			, contentType: false
			, dataType : 'json'
			, data: data
			, success: function(data) { 
				if(data.result == "success"){
					alert(msg + "하였습니다.");
					fnInputClose();
					fnSearch();
				}else{
					alert(msg + "에 실패했습니다.\r\n다시 시도해주세요.");
				}
				
				
			},
			error : function(request, status, error){ //통신 에러시
				alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
			}
			,beforeSend:function(){} //통신을 시작할때 처리
			,complete :function(){}  //통신을 완료한후 처리
		});
	}
	
}*/

// 직원 삭제
function fnDelete(tab_gubun){
	var name = $("#ori_user_nm" + tab_gubun).val();
	
	if(confirm(name + "님의 정보를 삭제하시겠습니까?") == true){
		
		var user_id = $("#ori_user_id" + tab_gubun).val();
		
		$.ajax({ 
		type: 'post' 
		, url: "memberDel.do"
		, dataType : 'json'
		, data: {user_id : user_id}
		, success: function(data) { 
			if(data.result == "success"){
				alert(name + "님의 정보가 삭제되었습니다.");
				if(tab_gubun == "1"){
					fnInputClose("1");
					fnSearch();
				}else if(tab_gubun == "2"){
					fnInputClose("2");
					fnSearch2();
				}
				
				$("#ori_user_id" + tab_gubun).val("");
				$("#ori_user_nm" + tab_gugun).val("");
				
			}else{
				alert(name + "님의 정보 삭제에 실패했습니다.\r\n다시 시도해주세요.");
			}
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
		});
	}
}















