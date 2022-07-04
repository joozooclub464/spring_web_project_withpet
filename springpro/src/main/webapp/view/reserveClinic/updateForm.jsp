
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<h3>호텔정보수정</h3>
	<form class="hotel_form" action="update" name="f" method="post">
		</br> </br> </br> </br> </br>

		<%-- <div class="hotel_div">
			<img src="<%=request.getContextPath()%>/img/" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">사진수정</a></font>
		</div> --%>

		<div class="hotel_div">
			<label class="hotel_label">호텔명: </label> ${hotel.h_name}
		</div>

		<div class="hotel_div">
			<label class="hotel_label">호텔위치: </label> ${hotel.h_location}
		</div>

		<div class="hotel_div">
			<label class="hotel_label">전화번호: </label> <input type="text" class="hotel_text" name="h_tel"
				value="${hotel.h_tel}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">방 종류</label> <input type="text" class="hotel_text" name="room_kind"
				value="${hotel.room_kind}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">방 번호: </label> <input type="text" class="hotel_text" name="room_num"
				value="${hotel.room_num}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">주차가능여부</label> <label class="hotel_label"><input type="radio" name="park"
				value="1" <c:if test="${hotel.park==1}">checked</c:if>>가능</label> <label class="hotel_label"><input
				type="radio" name="park" value="0"
				<c:if test="${hotel.park==0}">checked</c:if>>불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">예약가능여부</label> <label class="hotel_label"><input type="radio"
				name="reserve" value="1"
				<c:if test="${hotel.reserve==1}">checked</c:if>>가능</label> <label class="hotel_label"><input
				type="radio" name="reserve" value="0"
				<c:if test="${hotel.reserve==0}">checked</c:if>>불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">와이파이여부</label> <label class="hotel_label"><input type="radio" name="wifi"
				value="1" <c:if test="${hotel.wifi==1}">checked</c:if>>가능</label> <label class="hotel_label"><input
				type="radio" name="wifi" value="0"
				<c:if test="${hotel.wifi==0}">checked</c:if>>불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">장애인 편의시설</label> <input type="text" class="hotel_text"
				value="${hotel.disability}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">대강당 및 회의실</label> <input type="text" class="hotel_text"
				value="${hotel.reference_room}">
		</div>

		<div class="hotel_div">
		<button type="submit" class="hotel_submit">수정완료</button>
		</div>
	</form>

</body>

</html>