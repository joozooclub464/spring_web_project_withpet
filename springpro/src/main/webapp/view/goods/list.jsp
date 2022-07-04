<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/shop.css" />

<div class="c">
	<h4>
		전상품 무료배송 (도서,산간 제외)<br> <br> 배송료 부담없이 주문하세요
	</h4>
</div>

<div class="a">
	<div class="dd">
		<h1>Shop</h1>
		<br>
		<h3 class="center">
			아이들이 더욱 건강하고 행복하게 <br />살아갈 수 있도록 with.pet이 <br />제안합니다.
		</h3>

	</div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main w3-content w3-padding"
		style="max-width: 1200px; margin-top: 100px">

		<!-- First Photo Grid-->

		<!-- <div class="w3-row-padding w3-padding-16 w3-center"> -->
		<c:forEach var="goods" items="${list}">
			<div class="w3-quarter" style="margin: 20px;">
				<img style="width: 150px; height: 150px;"
					src="<%=request.getContextPath()%>/img/${goods.picture}" alt="" />
				<h5>${goods.gbsName}</h5>

				<h5>
					<fmt:formatNumber value="${goods.gbsPrice}" pattern="###,###,###" />
					원
				</h5>
				<a href="info?gbsNum=${goods.gbsNum}">[구매]</a>

				<c:if test="${id eq 'admin'}">
					<a href="updateForm?gbsNum=${goods.gbsNum}">[수정]</a>
					<a href="delete?gbsNum=${goods.gbsNum}">[삭제]</a>
				</c:if>


			</div>
		</c:forEach>

	</div>
</div>
<c:if test="${id eq 'admin'}">
	<a href="registForm"><h4>상품등록</h4></a>
</c:if>