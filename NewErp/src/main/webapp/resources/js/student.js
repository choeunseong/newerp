// 학생등록
function fnStuInsert(){
	var form = $('#stuSignUpForm')[0];
    // Create an FormData object 
    var data = new FormData(form);
    console.log(data);
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

