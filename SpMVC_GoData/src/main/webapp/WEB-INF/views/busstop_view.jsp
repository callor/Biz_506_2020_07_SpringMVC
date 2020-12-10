<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<article class="busstop-list">
	<table class="bis busstop-list">
		<thead>
			<tr>
				<th>노선번호</th>
				<th>현재위치</th>
				<th>도착예정시간</th>
				<th>남은정류장</th>
			</tr>
		</thead>
		<tbody>
		<c:choose>
			<c:when test="${empty AR_LIST}">
				<tr><td colspan="4">정류장을 클릭하세요</td></tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${AR_LIST}" var="ar">
				<tr>
					<td>${ar.LINE_NUM}</td>
					<td>${ar.BUSSTOP_NAME}</td>
					<td>${ar.REMAIN_MIN} 분</td>
					<td>${ar.REMAIN_STOP} 전</td>
				</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		</tbody>
	</table>
</article>
