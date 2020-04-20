<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="card mg-b-20">
      <div class="card-header">
         <h4 class="card-header-title row">
			검색결과 총 : ${ cnt }개  
         </h4> 
         <div class="card-header-btn">
            <a  href="#" data-toggle="collapse" class="btn card-collapse" data-target="#collapse2" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
            <!-- <a href="#" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
            <a href="#" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
            <a href="#" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a> -->
         </div>
      </div>
      <div class="card-body pd-0 collapse show" id="collapse2">
		<table class="table table-striped table-responsive-sm" style="text-align: center;">
			<thead>
				<tr>
					<th>업무구분</th>
					<th>유형구분</th>
					<th>코드</th>
					<th>코드명</th>
					<th>정렬순서</th>
					<th>사용여부</th>
					<th>수정자</th> 
					<th>수정일시</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${ list }" varStatus="status">
					<tr onclick="fnInfoPush('${ vo.sys_scd }', '${ vo.cd_nm }', '${ vo.tp_cd }', '${ vo.tp_nm }', '${ vo.cd_id }'
											, '${ vo.code_name }', '${ vo.ref_val01 }', '${ vo.ref_val02 }', '${ vo.ref_val03 }'
											, '${ vo.ref_val04 }', '${ vo.sort_ord }', '${ vo.use_yn }')">
						<td>${ vo.cd_nm }</td>
						<td>${ vo.tp_nm }</td>
						<td>${ vo.cd_id }</td>
						<td>${ vo.code_name }</td>
						<td>${ vo.sort_ord }</td>
						<td>${ vo.use_yn }</td>
						<td>${ vo.lmnt_mn_id }</td>
						<td>${ vo.lmnt_dtm }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<c:import url="../include/paging.jsp"></c:import>
		
	</div>
</div>