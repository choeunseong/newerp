<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	fnTeacherSearch();
</script>

<div class="card mg-b-20" style="margin: 5px;">
	<div class="card-header">
		<h4 class="card-header-title">
			강사 이름을 입력해주세요.
		</h4>
	</div>
	<div class="card-body collapse show" id="collapse7">
		<form id="teacherSearchForm" name="teacherSearchForm">
			<input type="hidden" id="curPage" name="curPage" value="1">
			<input type="hidden" name="part" value="${ sessionScope.user.part }">
			
			<div class="parsley-input col-md-12" style="">
			<div class="input-group">
				<div class="col-md-12 row">
					<input type="text" style="display: none">
					<input type="text" class="form-control datepicker-here col-md-10" name="user_nm" onkeypress="if( event.keyCode == 13 ){fnTeacherSearch();}">  
					<input type="button" class="btn btn-custom-primary pd-y-8 col-md-2" value="조회" onclick="fnTeacherSearch()">
					</div>
				</div> 
			</div>
		</form>
	</div>
</div>

<div id="teacher_result" style="height: 410px">
	<table class="table" style="text-align: center;height: 410px;">
		<thead>
			<tr>
				<th width="20%">강사명</th>
				<th width="80%">강사 연락처</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="2">조회된 결과가 없습니다.</td>
			</tr>
		</tbody>
	</table>
</div>

<div class="col-md-12 text-center">
	<a href="javascript:;" class="btn btn-custom-primary" onclick="fnLayerClose()">닫기</a>
</div>




