<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원가입 화면</title>


<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/updateform.css">
<script>
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", '', op);
	}
</script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<br />
<br />
<br />
<br />


<!-- Join Content -->
<div class="hotel__container">
	<h3>호텔등록</h3>
	<form action="regist" method="post" class="hotel_form" name="f">


		<input type="hidden" name="picture" value="">
		<div class="hotel_img">
			<img src="<%=request.getContextPath()%>/img/" width="100"
				height="120" id="pic"><br> <font size="1"><a
				href="javascript:win_upload()">사진수정</a></font> </br> </br>
		</div>


		<div class="hotel_div">
			<label class="hotel_label">호텔명</label> <input type="text"
				class="hotel_text" name="h_name">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">호텔주소</label> <input type="text"
				class="hotel_text" name="h_location" placeholder="oo시 oo구 oo번길">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">전화번호</label> <input type="text"
				class="hotel_text" name="h_tel" placeholder="000-0000-0000">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">방 종류</label> <input type="text"
				class="hotel_text" name="room_kind" placeholder="디럭스, 슈페리얼, 스위트 등">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">방 갯수</label> <input type="text"
				class="hotel_text" name="room_num">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">주차가능여부</label> <label><input
				type="radio" name="park" value="1" checked>가능</label> <label><input
				type="radio" name="park" value="0">불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">예약가능여부</label> <label><input
				type="radio" name="reserve" value="1" checked>가능</label> <label><input
				type="radio" name="reserve" value="0">불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">와이파이여부</label> <label><input
				type="radio" name="wifi" value="1" checked>가능</label> <label><input
				type="radio" name="wifi" value="0">불가능</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">장애인 편의시설</label> <input type="text"
				class="hotel_text" name="disability" placeholder="휠체어 이용편리 등">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">대강당 및 회의실</label> <input type="text"
				class="hotel_text" name="reference_room" placeholder="수용가능인원 / 갯수 ">
		</div>

		<div class="hotel_div">
			<input type="submit" class="hotel_submit" value="호텔등록">
		</div>
	</form>
</div>
<br />
<br />
<br />
<br />
