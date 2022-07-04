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
		if (confirm(id + "���� Ż���Ͻðڽ��ϱ�?")) {
			location.href = "delete?id=" + id;
		}
	}
</script>


<body>
<h3>��� ����Ʈ</h3>
	<div>
	<table class="hotel_table">
		<tr>
			<th class="hotel_th">����</th>
			<th class="hotel_th">���̵�</th>
			<th class="hotel_th">�̸�</th>
			<th class="hotel_th">�������</th>
			<th class="hotel_th">��ȭ</th>
			<th class="hotel_th">�ּ�</th>
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
				<td class="hotel_td"><a href="updateForm?id=${m.id}">[����]</a> <c:if
						test="${m.id ne 'admin'}">
						<%--<a href="12_delete?id=${m.id}">[����Ż��]</a> --%>
						<a href="javascript:del('${m.id}')">[����Ż��]</a>
					</c:if></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>