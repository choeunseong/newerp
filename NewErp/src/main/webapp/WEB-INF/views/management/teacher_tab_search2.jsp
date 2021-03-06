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
		<table class="table" style="text-align: center">
			<thead>
				<tr>
					<th>지점</th>
					<th>사진</th>
					<th>ID</th>
					<th>이름</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>승인여부</th>
					<th>담당자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${ list }">
					<tr onclick="fnTeacherDetail('2','${ vo.part }', '${vo.user_id}', '${vo.user_pw}', '${vo.user_nm}', '${vo.user_empl}', '${vo.user_age}'
												, '${vo.user_phone}', '${vo.user_email}', '${vo.user_permit}', '${vo.use_yn}', '${ vo.user_pict }')" style="cursor: pointer;">
						<td>
							${ vo.part_nm } 
						</td>
						<td>
						<c:if test="${ empty vo.user_pict }">
							없다
						</c:if>
						<c:if test="${ '' ne vo.user_pict }">
							<img src="${pageContext.request.contextPath}/resources/member_files/${ vo.user_pict }" style="width: 95.28px; height: 125.16px;"/> 
						</c:if>
						</td>
						<td>${ vo.user_id }</td>
						<td>${ vo.user_nm }</td>
						<td>${ vo.user_phone }</td>
						<td>${ vo.user_email }</td>
						<td>
							<c:choose>
								<c:when test="${ vo.user_permit == 'A' }">
									<p style="color: #218838">승인</p>
								</c:when>
								<c:when test="${ vo.user_permit == 'B' }">
									<p style="color: #5d78ff">대기</p>
								</c:when>
								<c:when test="${ vo.user_permit == 'C' }">
									<p style="color: #e87c87">거부</p>
								</c:when>
							</c:choose>
						</td>
						<td>${ vo.user_empl }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<c:import url="../include/paging.jsp"></c:import>
	</div>
</div>
