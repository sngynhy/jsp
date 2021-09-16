<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="control.jsp" method="post">
<c:choose>
	<c:when test="${empty sssUser}"> <!-- 로그아웃 상태 -->
		<input type="hidden" name="action" value="login">
		<input type="hidden" name="mcnt" value="${mcnt}">
		<input type="text" name="u_id">
		<input type="password" name="pw">
		<input type="submit" value="로그인">
		<hr>
		<a href="javascript:void(0);" onclick="signup()">회원가입</a> <!-- window.open으로 처리 -->
		<hr>
	</c:when>
	<c:otherwise> <!-- 로그인 상태 -->
		${sssUser}님, 환영합니다!
		<a href="control.jsp?action=main&selUser=${sssUser}" onclick="hidden()">내 댓글 목록</a><br>
		<hr>
		<input type="hidden" name="action" value="logout">
		<input type="submit" value="로그아웃">
	</c:otherwise>
</c:choose>
</form>