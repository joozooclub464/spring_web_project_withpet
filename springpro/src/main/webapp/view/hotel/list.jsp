<%@page import="dao.HotelDaoMybatis"%>
<%@page import="mybatis.Hotel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/playpet copy.css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- ��Ӵٿ� css -->
<style>
.cafecon {
	display: table;
	margin-left: auto;
	margin-right: auto;
}
</style>	
<br />
<br />
<div>
	<c:if test="${id eq 'admin'}">
		<h3 style="text-align: right; margin-right: 50px; font-weight: bold;">
			<a href="registForm">[ȣ�� ���]</a>
		</h3>
	</c:if>
</div>

<br />

<div class="title">
	<h2 style="text-align: center;">Hotel with your pets</h2>
</div>

<br />
<br />

<c:forEach var="hotel" items="${list}">
	<div class="work__projects">
		
		<a href="info?h_num=${hotel.h_num}" class="project"
			data-type="front-end"> <img src="<%=request.getContextPath()%>/img/${hotel.picture}" width=380px height=350px alt="Youtube"
			class="project__img" />
			<div class="project__description">
				<h3>${hotel.h_name}</h3>
				<span>Stay with your love</span>
			</div>
		</a> <a class="project_desc" data-type="front-end" target="blank">
			<h3 style="text-align: left;">
				<br>${hotel.h_name}<br> <br> <br>
			</h3>
			<ul>
				<li style="text-align: left;">${hotel.h_location}</li>
				<li>${hotel.h_tel}</li>
				<li>${hotel.park==1?"��������":"���� �Ұ���"}</li>
				<li>${hotel.reserve==1?"���డ��":"���� �Ұ���"}</li>
				<li>${hotel.wifi==1?"�������� �̿밡��":"�������� �̿�Ұ���"}</li>
				<li>${hotel.disability}</li>
				<li>${hotel.reference_room}</li>
			</ul>
		</a>
	<div>
	<c:if test="${id eq 'admin'}">
		<h3 style="text-align: right; margin-right: 50px; font-weight: bold;">
			<a href="updateForm?h_num=${hotel.h_num}">[ȣ�� ����]</a>
			<a href="delete?h_num=${hotel.h_num}">[ȣ�� ����]</a>
		</h3>
	</c:if>
	</div>
	</div>
</c:forEach>
<br />
<br />
<br />
<br />
