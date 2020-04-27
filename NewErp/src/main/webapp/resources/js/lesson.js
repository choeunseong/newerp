// 강의 등록
function fnLessonInsert(){
	var studentCnt = $("#student_cnt").val();
	
	if(studentCnt == "write"){
		$("#ori_student_cnt").val($("#student_cnt_input").val());	// 수강인원 직접입력했을 때 hidden값에 입력한 숫자 넣기
	}
	
	var params = $("#lessonForm").serialize();
	
	$.ajax({
		type : "POST", 
		url : "lesson/lessonInsert.do",
		dataType : "json",
		data : params,
		success:function(data){ //통신 성공시 처리
			if(data.result == 'success'){
				if(confirm("강의 등록이 완료되었습니다.\n강의리스트로 이동하시겠습니까?") == true){
					// 강의목록으로 이동하기
				}else{
					fnMnuMove('lesson', 'lesson/lessonForm');
				}
			}else if(data.result == 'fail'){
				alert("강의등록에 실패했습니다.\n다시 시도해주세요.");
			}
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 강사검색 layer 열기
function fnTeacherLayer(){
	if($("#sub_ref").val() == ""){
		alert("과목을 선택해 주세요");
		return;
	}
	
	$("#mainLayer").show(); 
	
	$.ajax({
		type : "POST", 
		url : "lesson/teacherSearchLayerOpen.do",
		dataType : "html",
		success:function(data){ //통신 성공시 처리
			$("#mainLayer").html(data);
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 강사검색Layer 검색
function fnTeacherSearch(){
	var params = $("#teacherSearchForm").serialize(); 
	
	$.ajax({
		type : "POST", 
		url : "lesson/teacherLayerSearch.do",
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

// layer 강사 검색 input 넣기
function fnTeacherInput(id, name){
	$("#teacher_name").val(name);
	$("#ori_teacher").val(id);
	
	fnLayerClose();
}














