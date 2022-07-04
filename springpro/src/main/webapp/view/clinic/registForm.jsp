<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>병원등록 화면</title>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/updateform.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", '', op);
	}
</script>
<br />
<br />
<br />
<br />

<!-- Join Content -->
<div class="hotel__container">
	<h3>병원등록</h3>
	<form action="regist" method="post" class="hotel_form" name="f">


		<input type="hidden" name="picture" value="">
		<div class="hotel_img">
			<img src="<%=request.getContextPath()%>/img/" width="100"
				height="120" id="pic"><br> <font size="1"><a
				href="javascript:win_upload()">사진수정</a></font> </br> </br>
		</div>


		<div class="hotel_div">
			<label class="hotel_label">병원명</label> <input type="text"
				class="hotel_text" name="c_name">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">병원주소</label> <input type="text"
				class="hotel_text" name="c_location" placeholder="oo시 oo구 oo번길">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">전화번호</label> <input type="text"
				class="hotel_text" name="c_tel" placeholder="000-0000-0000">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">진료가능한 동물종류 </label> <input type="text"
				class="hotel_text" name="pet_kind">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">운영시간</label> <input type="text"
				class="hotel_text" name="open_hour">
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
			<input type="submit" class="hotel_submit" value="병원등록">
		</div>
	</form>
</div>
<br />
<br />
<br />
<br />
