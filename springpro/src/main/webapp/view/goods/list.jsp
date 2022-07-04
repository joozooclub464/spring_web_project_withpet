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
		����ǰ ������ (����,�갣 ����)<br> <br> ��۷� �δ���� �ֹ��ϼ���
	</h4>
</div>

<div class="a">
	<div class="dd">
		<h1>Shop</h1>
		<br>
		<h3 class="center">
			���̵��� ���� �ǰ��ϰ� �ູ�ϰ� <br />��ư� �� �ֵ��� with.pet�� <br />�����մϴ�.
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
					��
				</h5>
				<a href="info?gbsNum=${goods.gbsNum}">[����]</a>

				<c:if test="${id eq 'admin'}">
					<a href="updateForm?gbsNum=${goods.gbsNum}">[����]</a>
					<a href="delete?gbsNum=${goods.gbsNum}">[����]</a>
				</c:if>


			</div>
		</c:forEach>

	</div>
</div>
<c:if test="${id eq 'admin'}">
	<a href="registForm"><h4>��ǰ���</h4></a>
</c:if>