<%@page import="dao.ClinicDaoMybatis"%>
<%@page import="mybatis.Clinic"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/updateform.css" />
</br>
</br>
</br>
</br>
<div class="hotel__container">
	<form class="hotel_form" action="update" name="f" method="post">

		<div class="hotel_img">
			<input type="hidden" value="${clinic.picture}" name="picture">
			<img src="<%=request.getContextPath()%>/img/${clinic.picture}" width="100"
				height="120" id="pic"><br> <font size="1"><a
				href="javascript:win_upload()">사진수정</a></font> </br> </br>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">병원명: ${clinic.c_name}</label> <input
				type="hidden" value="${clinic.c_name}" name="c_name">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">병원위치: ${clinic.c_location}</label> <input
				type="hidden" value="${clinic.c_location}" name="c_location">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">전화번호: </label> <input type="text"
				class="hotel_text" name="c_tel" value="${clinic.c_tel}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">진료가능한 동물종류: </label> <input type="text"
				class="hotel_text" name="pet_kind" value="${clinic.pet_kind}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">운영시간</label> <input type="text"
				class="hotel_text" name="open_hour" value="${clinic.open_hour}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">주차가능여부</label> <label class="hotel_label"><input
				type="radio" name="park" value="1"
				<c:if test="${clinic.park==1}">checked</c:if>>가능</label> <label
				class="hotel_label"><input type="radio" name="park"
				value="0" <c:if test="${clinic.park==0}">checked</c:if>>불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">예약가능여부</label> <label class="hotel_label"><input
				type="radio" name="reserve" value="1"
				<c:if test="${clinic.reserve==1}">checked</c:if>>가능</label> <label
				class="hotel_label"><input type="radio" name="reserve"
				value="0" <c:if test="${clinic.reserve==0}">checked</c:if>>불가능</label>
		</div>

		<div class="hotel_div">
			<button type="submit" class="hotel_submit">수정완료</button>
		</div>
	</form>
</div>