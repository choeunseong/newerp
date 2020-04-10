function fnSearch(pageNum){
	if(pageNum == null){
		$("#curPage").val("1");
	}else{
		$("#curPage").val(pageNum);
	}
	
	var params = $("#codeSearchForm").serialize();
	
//	var url = val + "Search.do";
	$.ajax({ 
		type: 'post' 
		, url: 'codeSearch.do'
		, dataType : 'html'
		, data: params
		, success: function(data) { 
			$("#code_result").html(data);  
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

function fnSearch2(pageNum){
	if(pageNum == null){
		$("#curPage2").val("1");
	}else{
		$("#curPage2").val(pageNum);
	}
	
	var params = $("#codeSearchForm2").serialize();
	
//	var url = val + "Search.do";
	$.ajax({ 
		type: 'post' 
		, url: 'codeSearch2.do'
		, dataType : 'html'
		, data: params
		, success: function(data) { 
//			console.log(data);
			$("#code_result2").html(data);  
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}
// 유형구분 조회
function fnTypeSearch(id, val){ 
	$("select[id='" + id + "'] option").remove();
	$("#" + id).append('<option value="">유형구분</option>'); 
//	alert(id);
	var list = [];
	var option = '';
	
	$.ajax({ 
		type: 'post' 
		, url: 'typeSearch.do'
		, dataType : 'json'
		, data: {cd_id : val}
		, success: function(data) { 
			
			list = data.jsonData;
			
			$.each(list, function( index, value ) {
//				alert(index+', '+value.tp_nm);
				option = '<option value="' + value.tp_cd + '">' + value.tp_cd + '  ' + value.tp_nm + '</option>';
				$("#" + id).append(option);  
             });
			
			
		},
		error : function(request, status, error){ //통신 에러시
			alert("code : " +request.status + "\r\nmessage : " + request.reponseText);
		}
		,beforeSend:function(){} //통신을 시작할때 처리
		,complete :function(){}  //통신을 완료한후 처리
	});
}

// 항목 클릭 시 정보보기
function fnInfoPush(sys_scd, cd_nm, tp_cd, tp_nm, cd_id, code_name, ref_val01, ref_val02, ref_val03, ref_val04, sort_ord, use_yn){
//	alert("sys:"+sys_scd + "cd_nm : " + cd_nm + "tp_cd : " + tp_cd + "tp_nm : " + tp_nm + "cd_id : " + cd_id + "code_name : " + code_name + "sort : " + sort_ord + "use : " + use_yn);
	var typeOption = "<option value='" + tp_cd + "'>" + tp_cd + " " + tp_nm + "</option>";
//	alert(option);
	$("#taskSelect2").val(sys_scd).prop("selected", true);
	$("select[id='typeSelect2'] option").remove();
	$("#typeSelect2").append(typeOption);
	
	$("#cd_id").val(cd_id);
	$("#cd_nm").val(code_name); 
	$("#ref_val01").val(ref_val01); 
	$("#ref_val02").val(ref_val02);
	$("#ref_val03").val(ref_val03);
	$("#ref_val04").val(ref_val04);
	$("#sort_ord").val(sort_ord);
	$("#use_check").val(use_yn);
	
	$("#addBtn").prop("disabled", true);
	$("#cancelBtn").prop("disabled", false);
	$("#modiBtn").prop("disabled", false);
	$("#delBtn").prop("disabled", false);
}

// 항목 클릭 시 정보보기
/*function fnInfoPush(comm_ref, tp_cd, tp_nm, cd_id, cd_nm, ref_val01, ref_val02, ref_val03, ref_val04, sort_ord, use_yn){
//	alert("1 : "+comm_ref+', 2: '+tp_cd+', 3 : '+cd_id+', 4 : '+sort_ord+', 5 : '+use_yn);
	var option = '<option value="'+tp_cd+'">'+tp_cd+'  '+tp_nm+'</option>';
//	alert(option);
	$("#taskSelect2").val(comm_ref).prop("selected", true);
	$("select[id='typeSelect2'] option").remove();
	$("#typeSelect2").append(option);
	$("#cd_id").val(cd_id);
	$("#cd_nm").val(cd_nm); 
	$("#ref_val01").val(ref_val01); 
	$("#ref_val02").val(ref_val02);
	$("#ref_val03").val(ref_val03);
	$("#ref_val04").val(ref_val04);
	$("#sort_ord").val(sort_ord);
	$("#use_check").val(use_yn);
	
	$("#addBtn").prop("disabled", true);
	$("#cancelBtn").prop("disabled", false);
	$("#modiBtn").prop("disabled", false);
	$("#delBtn").prop("disabled", false);
}*/

//항목 클릭 시 정보보기
function fnInfoPush2(sys_scd, tp_cd, tp_nm, ref_item1, ref_item2, ref_item3, ref_item4, sort_ord, use_yn){
//	alert("sys:"+sys_scd + "cd_nm : " + cd_nm + "tp_cd : " + tp_cd + "tp_nm : " + tp_nm + "cd_id : " + cd_id + "code_name : " + code_name + "sort : " + sort_ord + "use : " + use_yn);
	var typeOption = "<option value='" + tp_cd + "'>" + tp_cd + " " + tp_nm + "</option>";
//	alert(option);
	$("#taskSelect4").val(sys_scd).prop("selected", true);
	
	$("#tp_cd2").val(tp_cd);
	$("#tp_nm2").val(tp_nm);
	$("#ref_item12").val(ref_item1);
	$("#ref_item22").val(ref_item2);
	$("#ref_item32").val(ref_item3);
	$("#ref_item42").val(ref_item4);
	$("#sort_ord2").val(sort_ord);
	$("#use_check2").val(use_yn);
	
	$("#addBtn2").prop("disabled", true);
	$("#cancelBtn2").prop("disabled", false);
	$("#modiBtn2").prop("disabled", false);
	$("#delBtn2").prop("disabled", false);
}
 
// 추가/수정 버튼 클릭
function fnInputOpen(gubun, val){
	if(gubun == "1"){	// 공통코드
		$("#status").val(val);
	//	alert($("#status").val());
		if(val == 'save'){	// 추가버튼
			$("#taskSelect2").val("");	$("#typeSelect2").val("");	$("#cd_id").val("");
			$("#cd_nm").val("");	$("#ref_val01").val("");	$("#ref_val02").val("");
			$("#ref_val03").val("");	$("#ref_val04").val("");	$("#sort_ord").val("");
			
			$("#taskSelect2").prop("readonly", false);	$("#typeSelect2").prop("readonly", false);	$("#cd_id").prop("readonly", false);
			
			$("select[id='typeSelect2'] option").remove();
			$("#typeSelect2").append('<option value="">유형구분</option>'); 
		}
		
		$("#addBtn").prop("disabled", true);
		$("#saveBtn").prop("disabled", false);
		$("#cancelBtn").prop("disabled", false);
		 
		$("#cd_nm").prop("readonly", false);	$("#ref_val01").prop("readonly", false);	$("#ref_val02").prop("readonly", false);
		$("#ref_val03").prop("readonly", false);	$("#ref_val04").prop("readonly", false);	$("#sort_ord").prop("readonly", false);
		$("#use_check").prop("disabled", false);
	}else if(gubun == "2"){	// 유형코드
		alert(val);
		$("#status2").val(val);
		//	alert($("#status").val());
			if(val == 'save'){	// 추가버튼
				$("#tp_cd2").val("");	$("#tp_nm2").val("");
				$("#ref_item12").val("");	$("#ref_item22").val("");	$("#ref_item32").val("");
				$("#ref_item42").val("");	$("#sort_ord2").val("");
				
				$("#taskSelect4").val("00").prop("selected", true);	
//				$("#taskSelect3").prop("readonly", false);	$("#cd_id").prop("readonly", false);
			}
			
			$("#addBtn2").prop("disabled", true);
			$("#saveBtn2").prop("disabled", false);
			$("#cancelBtn2").prop("disabled", false);
			 
			$("#taskSelect4").prop("readonly", false);	$("#tp_cd2").prop("readonly", false);	$("#tp_nm2").prop("readonly", false);
			$("#ref_item12").prop("readonly", false);	$("#ref_item22").prop("readonly", false);	$("#ref_item32").prop("readonly", false);
			$("#ref_item42").prop("readonly", false);	$("#sort_ord2").prop("readonly", false);	$("#use_check2").prop("disabled", false);
	}
	
} 
// 취소버튼 클릭
function fnInputClose(gubun){
	if(gubun == "1"){	// 공통코드
		$("select[id='typeSelect2'] option").remove();
		$("#typeSelect2").append('<option value="">유형구분</option>'); 
		
		$("#addBtn").prop("disabled", false);
		$("#saveBtn").prop("disabled", true);
		$("#cancelBtn").prop("disabled", true);
		$("#modiBtn").prop("disabled", true);
		$("#delBtn").prop("disabled", true); 
		
		$("#taskSelect2").prop("readonly", true);	$("#typeSelect2").prop("readonly", true);	$("#cd_id").prop("readonly", true);
		$("#cd_nm").prop("readonly", true);	$("#ref_val01").prop("readonly", true);	$("#ref_val02").prop("readonly", true);
		$("#ref_val03").prop("readonly", true);	$("#ref_val04").prop("readonly", true);	$("#sort_ord").prop("readonly", true);
		$("#use_check").prop("disabled", true);
		
		$("#taskSelect2").val("");	$("#typeSelect2").val("");	$("#cd_id").val("");
		$("#cd_nm").val("");	$("#ref_val01").val("");	$("#ref_val02").val("");
		$("#ref_val03").val("");	$("#ref_val04").val("");	$("#sort_ord").val("");
		$("#use_yn1").val("");	$("#use_yn2").val("");
	}else if(gubun == "2"){	// 유형코드
		$("#addBtn2").prop("disabled", false);
		$("#saveBtn2").prop("disabled", true);
		$("#cancelBtn2").prop("disabled", true);
		$("#modiBtn2").prop("disabled", true);
		$("#delBtn2").prop("disabled", true); 
		
		$("#taskSelect4").prop("readonly", true);	$("#tp_cd2").prop("readonly", true);	$("#tp_nm2").prop("readonly", true);
		$("#ref_item12").prop("readonly", true);	$("#ref_item22").prop("readonly", true);	$("#ref_item32").prop("readonly", true);
		$("#ref_item42").prop("readonly", true);	$("#sort_ord2").prop("readonly", true);		$("#use_check2").prop("disabled", true);
		
		$("#taskSelect4").val("00").prop("selected", true);	$("#tp_cd2").val("");	$("#tp_nm2").val("");
		$("#ref_item12").val("");	$("#ref_item22").val("");	$("#ref_item32").val("");
		$("#ref_item42").val("");	$("#sort_ord2").val("");
	}
}

// 공통코드 저장/수정
function fnMulti(){
	var msg = "저장";
	var url = "codeInsert.do";
	if($("#status").val() == "update"){
		msg = "수정";
		url = "codeUpdate.do";
	}
	
//	alert("ms = " + msg + "---url = " + url);
	
	var params = $("#codeForm").serialize();
	
	if(confirm("공통코드를 " + msg + "하시겠습니까?") == true){
		$.ajax({ 
			type: 'post' 
			, url: url
			, dataType : 'json'
			, data: params
			, success: function(data) { 
				if(data.result == "success"){
					alert("공통코드를 " + msg + "하였습니다.");
					fnInputClose();
					fnSearch();
				}else{
					alert("공통코드 " + msg + "에 실패했습니다.\r\n다시 시도해주세요.");
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

// 유형코드 저장/수정
function fnMulti2(){
//	alert("1");
	var msg = "저장";
	var url = "codeInsert2.do";
	if($("#status2").val() == "update"){
		msg = "수정";
		url = "codeUpdate2.do";
	}
	
//	alert("ms = " + msg + "---url = " + url);
	
	var params = $("#codeForm2").serialize();
	
	if(confirm("유형코드를 " + msg + "하시겠습니까?") == true){
		$.ajax({ 
			type: 'post' 
			, url: url
			, dataType : 'json'
			, data: params
			, success: function(data) { 
				if(data.result == "success"){
					alert("유형코드를 " + msg + "하였습니다.");
					fnInputClose('2');
					fnSearch2();
				}else{
					alert("유형코드 " + msg + "에 실패했습니다.\r\n다시 시도해주세요.");
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

// 공통코드삭제
function fnDelete(gubun){
	var url = "";
	var params = "";
	
	if(gubun == "1"){	// 공통코드 삭제
		url = "codeDelete.do";
		params = $("#codeForm").serialize();
	}else if(gubun == "2"){	// 유형코드 삭제
		url = "codeDelete2.do";
		params = $("#codeForm2").serialize();
	}
//	alert("url = " + url);
	
	if(confirm("코드를 삭제하시겠습니까?") == true){
		$.ajax({ 
		type: 'post' 
		, url: url
		, dataType : 'json'
		, data: params
		, success: function(data) { 
			if(data.result == "success"){
				alert("코드가 삭제되었습니다.");
				if(gubun == "1"){
					fnInputClose("1");
					fnSearch();
				}else if(gubun == "2"){
					fnInputClose("2");
					fnSearch2();
				}
			}else{
				alert("코드 삭제에 실패했습니다.\r\n다시 시도해주세요.");
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






