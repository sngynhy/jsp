<%@page import="model.message.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="data" class="model.message.MessageVO" scope="request"/>

<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>글 수정/삭제 화면</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script type="text/javascript">
	function del() {
		result = confirm("정말로 삭제하시겠습니까?");
		if (result == true) {
			document.form1.action.value = "delete"; // form1의 action 파라미터를 delete로 설정
			document.form1.submit();
		} else {
			return;
		}
	}
</script>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1>Elements</h1>
			<p>Ipsum dolor sit amet nullam</p>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Content -->
			<section id="content" class="main">

				<!-- Table -->
				<!-- 여기에 추가해~~~~~~~~~~~~~~~~~ -->
				<section>
					<h2>게시글 수정</h2>
					<div class="table-wrapper">
					<form action="control.jsp" method="post" name="form1">
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="mnum" value="<%= data.getMnum() %>">
					<input type="hidden" name="mnum" value="<%= data.getId() %>">
						<table>	
							<tbody>
								<tr>
									<th>제목</th>
									<td><input type="text" name="title" value="<%= data.getTitle() %>"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea name="content"><%= data.getContent() %></textarea></td>
								</tr>
								<tr>
									<th>작성일</th>
									<td><input type="date" name="date" value="<%= data.getWdate() %>"></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="2" align="right">
										<input type="submit" value="내용 수정" class="button">
										<input type="button" value="글 삭제" class="button" onclick="del()">
										<input type="button" value="메인으로" onclick="location.href='control.jsp?action=list'">
									</td>
								</tr>
							</tfoot>
						</table>
					</form>	
					</div>

			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>Aliquam sed mauris</h2>
				<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat
					consequat magna adipiscing tempus etiam dolore veroeros. eget
					dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula
					erat egestas velit, vitae tincidunt odio.</p>
				<ul class="actions">
					<li><a href="#" class="button">Learn More</a></li>
				</ul>
			</section>
			<section>
				<h2>Etiam feugiat</h2>
				<dl class="alt">
					<dt>Address</dt>
					<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
					<dt>Phone</dt>
					<dd>(000) 000-0000 x 0000</dd>
					<dt>Email</dt>
					<dd>
						<a href="#">information@untitled.tld</a>
					</dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram alt"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github alt"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span
							class="label">Dribbble</span></a></li>
				</ul>
			</section>
			<p class="copyright">
				&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
			</p>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>