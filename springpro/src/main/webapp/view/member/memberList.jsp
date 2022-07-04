<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/hotel.css">

<script type="text/javascript">
	function del(id) {
		if (confirm(id + "님을 탈퇴하시겠습니까?")) {
			location.href = "delete?id=" + id;
		}
	}
</script>


<body>
<h3>멤버 리스트</h3>
	<div>
	<table class="hotel_table">
		<tr>
			<th class="hotel_th">사진</th>
			<th class="hotel_th">아이디</th>
			<th class="hotel_th">이름</th>
			<th class="hotel_th">생년월일</th>
			<th class="hotel_th">전화</th>
			<th class="hotel_th">주소</th>
			<th class="hotel_th">&nbsp;</th>
		</tr>
		<c:forEach var="m" items="${list}">
			<tr>
				<td class="hotel_td"><img src="<%=request.getContextPath() %>/img/${m.picture}" width="30"
					height="32"></td>
				<td class="hotel_td"><a href="myPage?id=${m.id}">${m.id}</a></td>
				<td class="hotel_td">${m.name}</td>
				<td class="hotel_td">${m.birthday}</td>
				<td class="hotel_td">${m.tel}</td>
				<td class="hotel_td">${m.address}</td>
				<td class="hotel_td"><a href="updateForm?id=${m.id}">[수정]</a> <c:if
						test="${m.id ne 'admin'}">
						<%--<a href="12_delete?id=${m.id}">[강제탈퇴]</a> --%>
						<a href="javascript:del('${m.id}')">[강제탈퇴]</a>
					</c:if></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>