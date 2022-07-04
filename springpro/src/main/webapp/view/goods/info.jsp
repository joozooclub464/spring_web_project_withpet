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
<title>상품 상세정보</title>
</head>
<body>
	<p style="text-align:center;">상품 상세정보</p>
	<table border="1">
	
		<tr>
			<td><img src="<%=request.getContextPath()%>/img/${goods.picture}"
				width="340" height="300"></td>
			<td>
				<table border="1" style="height: 300px; width: 400px;">
					<tr alien="center">
						<td>상품명</td>
						<td>${goods.gbsName}</td>
					</tr>
					<tr alien="center">
						<td>가격</td>
						<td><fmt:formatNumber value="${goods.gbsPrice}"
								pattern="###,###,###" /></td>
					</tr>
					<tr alien="center">
						<td>상품소개</td>
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
								</select>&nbsp;개 <input type="submit" value="장바구니에 담기">
							</form> 
				</table>
	</table>
	<a href="<%=request.getContextPath()%>/goods/list"><h2>상품목록</h2></a>
</body>
</html>