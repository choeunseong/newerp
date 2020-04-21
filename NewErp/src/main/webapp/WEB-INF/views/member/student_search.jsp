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
					<th width="10%">본/지사</th>
					<th width="20%">사진</th>
					<th width="15%">이름</th>
					<th width="15%">나이</th>
					<th width="20%">전화번호</th>
					<th width="15%">담당자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${ list }" varStatus="status">
					<tr onclick="fnStuDetail('${vo.part}', '${vo.stu_nm}', '${vo.stu_age}', '${vo.stu_phone}', '${vo.stu_email}', '${vo.stu_empl}', '${vo.bigo}', '${vo.use_yn}')">
						<td>${ vo.cd_nm }</td>
						<td>
							<c:if test="${ empty vo.stu_pict }">
								없다
							</c:if>
							<c:if test="${ '' ne vo.stu_pict }">
								<img src="${pageContext.request.contextPath}/resources/member_files/${ vo.stu_pict }" style="width: 95.28px; height: 125.16px;"/>
							</c:if>
						</td>
						<td>${ vo.stu_nm }</td>
						<td>${ vo.stu_age_real }세</td>
						<td>${ vo.stu_phone }</td>
						<td>${ vo.user_nm }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<c:import url="../include/paging.jsp"></c:import>
		
	</div>
</div>