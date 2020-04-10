<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<nav>
	<ul class="pagination justify-content-center">
		
		<li class="page-item">
			<c:if test="${ paging.startPage ne paging.curPage }">
				<a class="page-link" href="javascript:;" onclick="fnSearch('${paging.prevPage}')">
					<span class="fa fa-arrow-left"></span>
				</a>
			</c:if>
			<c:if test="${ paging.startPage eq paging.curPage }">
				<a class="page-link" href="javascript:;" onclick="">
					<span class="fa fa-arrow-left"></span>
				</a>
			</c:if>
		</li>
		
		<!-- <li class="page-item active">
			<a class="page-link" href="#">1</a>
		</li> -->
		<c:forEach var="pageNum" begin="${ paging.startPage }" end="${ paging.endPage }">
            <c:choose>
                <c:when test="${ pageNum eq  paging.curPage}">
                    <%-- <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> --%>
                    <li class="page-item active">
						<a class="page-link" href="javascript:;">${ pageNum }</a>
					</li> 
                </c:when>
                <c:otherwise> 
                    <%-- <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> --%> 
                    <li class="page-item">
						<a class="page-link" href="javascript:;" onclick="fnSearch('${pageNum}')">${ pageNum }</a>
					</li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
		
		<li class="page-item">
			<c:if test="${ paging.endPage ne paging.curPage }">
				<a class="page-link" href="javascript:;" onclick="fnSearch('${paging.nextPage}')">
					<span class="fa fa-arrow-right"></span>
				</a>
			</c:if>
			<c:if test="${ paging.endPage eq paging.curPage }">
				<a class="page-link" href="javascript:;" onclick="">
					<span class="fa fa-arrow-right"></span>
				</a>
			</c:if>
		</li>
	</ul>
</nav>