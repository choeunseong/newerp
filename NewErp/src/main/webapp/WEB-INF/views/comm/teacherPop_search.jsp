<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table" style="text-align: center">
	<thead>
		<tr>
			<th width="30%">강사명</th>
			<th width="70%">강사 연락처</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="vo" items="${ list }">
			<tr>
				<td>
					<a href="javascript:;" onclick="fnTeacherInput('${vo.user_id}', '${vo.user_nm}')">
						${ vo.user_nm }
					</a>
				</td>
				<td>${ vo.user_phone }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
