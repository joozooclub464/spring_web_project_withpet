<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style> 
table{ 
margin-left:auto; 
margin-right:auto; 
}

</style>

<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>��ǰ ������</title>
</head>
<body>
	<p style="text-align:center;">��ǰ ������</p>
	<table border="1">
	
		<tr>
			<td><img src="<%=request.getContextPath()%>/img/${goods.picture}"
				width="340" height="300"></td>
			<td>
				<table border="1" style="height: 300px; width: 400px;">
					<tr alien="center">
						<td>��ǰ��</td>
						<td>${goods.gbsName}</td>
					</tr>
					<tr alien="center">
						<td>����</td>
						<td><fmt:formatNumber value="${goods.gbsPrice}"
								pattern="###,###,###" /></td>
					</tr>
					<tr alien="center">
						<td>��ǰ�Ұ�</td>
						<td>${goods.gbsDes}</td>
					</tr>
					<tr alien="center">
						<td colspan="2">
							<form name="form1" method="post"
								action="<%=request.getContextPath()%>/cart/regist">
								<%-- <input type="hidden" name="cartId" value="${Cart.cartId}">
								<input type="hidden" name="id" value="${Cart.id}"> --%>
								<input type="hidden" name="picture" value="${goods.picture}">
								<input type="hidden" name="gbsName" value="${goods.gbsName}">
								<input type="hidden" name="gbsPrice" value="${goods.gbsPrice}">
								<input type="hidden" name="gbsNum" value="${goods.gbsNum}">
								<select name="cartStock">
									<c:forEach begin="1" end="10" var="i">
										<option value=${i}>${i}</option>
									</c:forEach>
								</select>&nbsp;�� <input type="submit" value="��ٱ��Ͽ� ���">
							</form> 
				</table>
	</table>
	<a href="<%=request.getContextPath()%>/goods/list"><h2>��ǰ���</h2></a>
</body>
</html>