// 학생목록 리스트
function fnStuSearch(){
	var params = $("#studentSearchForm").serialize();
	
	$.ajax({
		type : "POST", 
		url : "student/stuSearchList.do",
		dataType : "html",
		data : params,
		success:function(data){ //통신 성공시 처리
			$("#student_result").html(data);
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 학생등록
function fnStuInsert(){
	var form = $('#stuSignUpForm')[0];
    // Create an FormData object 
    var data = new FormData(form);
    
	$.ajax({
		type : "POST", 
		url : "student/stuInsert.do", 
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false, 
		dataType : "json",
		data : data,
		success:function(data){ //통신 성공시 처리
			if(data.result == "success"){
				alert("정상적으로 등록되었습니다.");
				// 다음은 원생 리스트로 이동해야함. 리스트페이지 아직안만들어서 만들고 나서 그 페이지로 이동하게 처리
			}else{
				alert("등록에 실패하였습니다.\n다시 확인해주세요.");
			}
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 학생 상세보기
function fnStuDetail(stu_idx, part, stu_nm, stu_age, stu_phone, stu_email, stu_empl, bigo, use_yn, user_nm){
	$("#ori_part").val(part);
	$("#stu_idx").val(stu_idx);
	
	$("#partSelect2").val(part).prop("selected", true);
	$("#stu_nm").val(stu_nm);
	$("#stu_age").val(stu_age);
	$("#stu_phone").val(stu_phone);
	$("#stu_email").val(stu_email);
	$("#user_empl").val(user_nm);
	$("#ori_user_empl").val(stu_empl);
//	$("#stuEmplSelect2").val(stu_empl).prop("selected", true);
	$("#bigo").val(bigo);
	$("#stu_use_yn").val(use_yn).prop("checked", true);
	
	$("#modiBtn").prop("disabled", false);
	$("#cancelBtn").prop("disabled", false);
	$("#delBtn").prop("disabled", false); 
}

// 취소버튼
function fnStuInputClose(){
	var stuTable = $("#stuDetailTable");
	
	// input 초기화
	stuTable.find('td').find('input').each(function(){
        this.value = '';
    });
	// select 초기화
	stuTable.find('td').find('select').each(function(){
        this.value = ''; 
    }); 

	$("#saveBtn").prop("disabled", true);
	$("#modiBtn").prop("disabled", true);
	$("#cancelBtn").prop("disabled", true);
	$("#delBtn").prop("disabled", true);
	
	$("#stu_idx").val("");	// 학생 idx hidden값 지우기
	
	// input disabled비활성화
	stuTable.find('td').find('input').prop("disabled", true);
	// select disabled비활성화
	stuTable.find('td').find('select').prop("disabled", true);
	
}

// 수정/저장 버튼
function fnStuInputOpen(gubun){ 
	var stuTable = $("#stuDetailTable");
	
	if(gubun == 'update'){
		$("#saveBtn").prop("disabled", false);
		$("#cancelBtn").prop("disabled", false);
		$("#modiBtn").prop("disabled", true);
		$("#delBtn").prop("disabled", true);
		
		// input disabled비활성화
		stuTable.find('td').find('input').prop("disabled", false);
		// select disabled비활성화
		stuTable.find('td').find('select').prop("disabled", false);
	}else if(gubun == 'save'){
		var form = $('#studentForm')[0];
		var data = new FormData(form);
		
		$.ajax({
			type : "POST", 
	        enctype: 'multipart/form-data',
			url : "student/stuUpdate.do", 
	        processData: false,
	        contentType: false, 
			dataType : "json",
			data : data,
			success:function(data){ //통신 성공시 처리
				alert("수정이 완료되었습니다.");
				// input disabled활성화
				stuTable.find('td').find('input').prop("disabled", true);
				// select disabled활성화
				stuTable.find('td').find('select').prop("disabled", true);
				
				fnStuInputClose();
				fnStuSearch();
			},
			error : function(request, status, error){ //통신 에러시
				alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
			}
			,beforeSend:function(){} //통신을 시작할때 처리
			,complete :function(){}  //통신을 완료한후 처리
		});
	}
}

// 본/지사별 담당자 불러오기
function fnStuEmplSearch(gubun, val){
	
	$.ajax({
		type : "POST", 
		url : "student/emplSearch.do", 
		dataType : "json",
		data : {part : val},
		success:function(data){ //통신 성공시 처리
			var html = '<option value="">담당직원</option>';
			
			for(var i = 0; i < data.list.length; i++){
				html += '<option value="' + data.list[i].user_id + '">' + data.list[i].user_nm + '</option>'
//				console.log(html);
			}
			
			
			if(gubun == "search"){
				$("#stuEmplSelect1").html(html);
			}
			
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 수정창 본/지사 part hidden값 수정
function fnPartChange(val){
	$("#ori_part").val(val);
}

// 학생정보 삭제
function fnStuDelete(){
	var stu_idx = $("#stu_idx").val();
	
	if(confirm("해당 학생정보를 삭제하시겠습니까?") == true){
		$.ajax({
			type : "POST", 
			url : "student/stuDelete.do", 
			dataType : "json",
			data : {stu_idx : stu_idx},
			success:function(data){ //통신 성공시 처리
				if(data.result == "success"){
					alert("삭제되었습니다.");
					fnStuSearch();
				}else if(data.result == "fail"){
					alert("삭제에 실패하였습니다.\n다시 시도해주세요.");
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




