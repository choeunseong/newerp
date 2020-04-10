function fnMnuMove(gubun, sub){
//	alert("진입");
	var url = sub + ".do";
//	alert(url);
	$.ajax({ 
		type: 'post' 
		, url: url
		, dataType : 'html'
		, success: function(data) { 
			$("#result_div").html(data); 
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 로그인
function fnLogin(){
//	alert("1");
	var formData = $("#loginForm").serialize();
		
	$.ajax({
		type : "POST", 
		url : "login.do",  
		dataType : "json",
		data : formData,
		success:function(data){ //통신 성공시 처리
			if(data.result == "success"){
				location.href = "main.do";
			}else if(data.result == "wait"){
				alert("현재 승인 대기중인 ID입니다.\r승인 후 사용 가능합니다.");
				$("#user_id").val("");
				$("#user_pw").val("");
				$("#userId").focus();
			}else if(data.result == "refuse"){
				alert("가입승인이 거절되어 사용할 수 없는 ID입니다.");
				$("#user_id").val("");
				$("#user_pw").val("");
				$("#userId").focus();
			}else if(data.result == "no_id"){
				alert("아이디를 확인해 주세요.");
				$("#user_id").val("");
				$("#user_pw").val("");
				$("#userId").focus();
			}else if(data.result == "no_pw"){
				alert("비밀번호가 틀립니다.");
				$("#user_id").val("");
				$("#user_pw").val("");
				$("#userId").focus();
			}
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 로그아웃
function fnLogOut(){
	if(confirm("로그아웃 하시겠습니까?") == true){
		$.ajax({
			type : "POST", 
			url : "logout.do",  
			dataType : "json",
			data : {},
			success:function(data){ //통신 성공시 처리
				alert(data.msg);
				location.href = "index.do";
			},
			error : function(request, status, error){ //통신 에러시
				alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
			}
			,beforeSend:function(){} //통신을 시작할때 처리
			,complete :function(){}  //통신을 완료한후 처리
		});
	}
}

// 회원가입 jsp 이동
function fnSignUpView(){
//	$("#index_result").removeClass("ht-100v");
	$.ajax({ 
		type: 'post' 
		, url: 'signUpView.do'
		, dataType : 'html'
		, success: function(data) { 
			$("#index_result").html(data); 
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}









