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
					<th>유형코드</th>
					<th>코드명</th>
					<th>정렬순서</th>
					<th>사용여부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${ list }">
					<tr onclick="fnInfoPush2('${ vo.sys_scd2 }', '${ vo.tp_cd2 }', '${ vo.tp_nm2 }'
											, '${ vo.ref_item12 }', '${ vo.ref_item22 }', '${ vo.ref_item32 }'
											, '${ vo.ref_item42 }', '${ vo.sort_ord2 }', '${ vo.use_yn2 }')">
						<td>${ vo.cd_nm2 }</td>
						<td>${ vo.tp_cd2 }</td>
						<td>${ vo.tp_nm2 }</td>
						<td>${ vo.sort_ord2 }</td>
						<td>${ vo.use_yn2 }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<c:import url="../include/paging.jsp"></c:import>
		
	</div>
</div>