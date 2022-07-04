
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/updateform.css" />

<div class="hotel__container">

	<form class="hotel_form" action="update" name="f" method="post">


		<div class="hotel_img">
		<input type="hidden" name="picture" value="${hotel.picture}">
			<img src="<%=request.getContextPath()%>/img/${hotel.picture}" width="100"
				height="120" id="pic"><br> <font size="1"><a
				href="javascript:win_upload()">��������</a></font> </br> </br>
		</div>
		<div class="hotel_div">
			<label class="hotel_label">ȣ�ڸ�: ${hotel.h_name}</label>
			<input type="hidden" value="${hotel.h_name}" name="h_name">
		</div>
		<div class="hotel_div">
			<label class="hotel_label">ȣ����ġ: ${hotel.h_location}</label>
			<input type="hidden" value="${hotel.h_location}" name="h_location">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">��ȭ��ȣ: </label> <input type="text"
				class="hotel_text" name="h_tel" value="${hotel.h_tel}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�� ����</label> <input type="text"
				class="hotel_text" name="room_kind" value="${hotel.room_kind}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�� ��ȣ: </label> <input type="text"
				class="hotel_text" name="room_num" value="${hotel.room_num}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�������ɿ���</label> <label class="hotel_label"><input
				type="radio" name="park" value="1"
				<c:if test="${hotel.park==1}">checked</c:if>>����</label> <label
				class="hotel_label"><input type="radio" name="park"
				value="0" <c:if test="${hotel.park==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">���డ�ɿ���</label> <label class="hotel_label"><input
				type="radio" name="reserve" value="1"
				<c:if test="${hotel.reserve==1}">checked</c:if>>����</label> <label
				class="hotel_label"><input type="radio" name="reserve"
				value="0" <c:if test="${hotel.reserve==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�������̿���</label> <label class="hotel_label"><input
				type="radio" name="wifi" value="1"
				<c:if test="${hotel.wifi==1}">checked</c:if>>����</label> <label
				class="hotel_label"><input type="radio" name="wifi"
				value="0" <c:if test="${hotel.wifi==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">����� ���ǽü�</label> <input type="text"
				class="hotel_text" name="disability" value="${hotel.disability}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�밭�� �� ȸ�ǽ�</label> <input type="text" name="reference_room"
				class="hotel_text" value="${hotel.reference_room}">
		</div>

		<div class="hotel_div">
			<input type="submit" class="hotel_submit" value="ȣ�ڼ���">
		</div>
	</form>
</div>