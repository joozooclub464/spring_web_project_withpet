<%@page import="dao.HotelDaoMybatis"%>
<%@page import="mybatis.Hotel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop Homepage</title>
<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/hotel.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<h3>병원리스트</h3>
	<div>
	<a href="registForm">[병원등록]</a>
	<table class="hotel_table">
		<tr class="hotel_tr">
			<th class="hotel_th">병원번호</th>
			<th class="hotel_th">병원명</th>
			<th class="hotel_th">병원위치</th>
			<th class="hotel_th">병원전화번호</th>
			<th class="hotel_th">방종류</th>
			<th class="hotel_th">병원삭제</th>
			<th class="hotel_th">병원정보수정</th>
		</tr>
		<c:forEach var="hotel" items="${list}">
			<tr class="hotel_tr">
				<td class="hotel_td"><a href="info?h_num=${hotel.h_num}">${hotel.h_num}</a></td>
				<td class="hotel_td">${hotel.h_name}</td>
				<td class="hotel_td">${hotel.h_location}</td>
				<td class="hotel_td">${hotel.h_tel}</td>
				<td class="hotel_td">${hotel.room_kind}</td>
				<td class="hotel_td"><a href="delete?h_num=${hotel.h_num}">[병원삭제]</a>
				</td>
				<td class="hotel_td"><a href="update?h_num=${hotel.h_num}">[병원수정]</a>
				</td>
			</tr>
		</c:forEach>

	</table>
</div>
</body>

</html>