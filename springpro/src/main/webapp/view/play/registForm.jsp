<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>놀이공간등록 화면</title>


<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/updateform.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function win_upload(pic) {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm?pic="+pic, "", op);
	}
</script>

<br />
<br />
<br />
<br />
<div class="hotel__container">
	<!-- Join Content -->
	<h3>놀이시설등록</h3>
	<form action="regist" method="post" class="hotel_form" name="f">
		<!-- 
		
		<input type="hidden" name="picture" value="">
		<div>
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">사진등록</a></font>
		</div>
 -->
 	<!-- id값 ?? -->
		<div><input type="radio" value="1" name = "playid">CAFE</div>
		<div><input type="radio" value="2" name = "playid">PLAY_GROUND</div>
		<div><input type="radio" value="3" name = "playid">DINING</div>
		<%-- <input type="hidden" value="${playid}" name="playid"> --%>
	<!-- id값 ?? -->
		
		<div class="hotel_div">
			<label>놀이시설명</label> <input type ="text" class="hotel_text"
				name="p_name" value="${playPlace.p_name}">
		</div>
		
		<div class="hotel_div">
			<label>시설설명</label> <input type="text" class="hotel_text"
				name="content" value="${playPlace.content}">
		</div>

		<div class="hotel_div">
			<label>놀이시설주소</label> <input type="text" class="hotel_text"
				name="p_location" value="${playPlace.p_location}"
				placeholder="oo시 oo구 oo번길">
		</div>

		<div class="hotel_div">
			<label>전화번호</label> <input type="text" class="hotel_text"
				name="p_tel" value="${playPlace.p_tel}" placeholder="000-0000-0000">
		</div>
		
		<div class="hotel_div">
			<label>운영시간</label> <label><input type="text" name="open_hour"
				value="${playPlace.open_hour}"></label>
		</div>

		<div class="hotel_div">
			<label>주차가능여부</label> <label><input type="radio" name="park"
				value="1" checked>가능</label> <label><input type="radio"
				name="park" value="0">불가능</label>
		</div>

		<input type="hidden" name="p_img1" id="p_img1" value="">
		<div class="hotel_div">
			<label>사진1</label> <img src="" width="100"
					height="120" id="pic1"><br> <font size="1"><a
						href="javascript:win_upload(1)">사진등록</a></font>
		</div>
		
		<input type="hidden" name="p_img2" id="p_img2" value="">
		<div class="hotel_div">
			<label>사진2</label> <img src="" width="100"
					height="120" id="pic2"><br> <font size="1"><a
						href="javascript:win_upload(2)">사진등록</a></font>
		</div>
		
		<input type="hidden" name="p_img3" id="p_img3" value="">
		<div class="hotel_div">
			<label>사진3</label> <img src="" width="100"
					height="120" id="pic3"><br> <font size="1"><a
						href="javascript:win_upload(3)">사진등록</a></font>
		</div>
		
		<input type="hidden" name="p_img4" id="p_img4" value="">
		<div class="hotel_div">
			<label>사진4</label> <img src="" width="100"
					height="120" id="pic4"><br> <font size="1"><a
						href="javascript:win_upload(4)">사진등록</a></font>
		</div>
		
		<input type="hidden" name="p_img5" id="p_img5" value="">
		<div class="hotel_div">
			<label>사진5</label> <img src="" width="100"
					height="120" id="pic5"><br> <font size="1"><a
						href="javascript:win_upload(5)">사진등록</a></font>
		</div>
		
		<input type="hidden" name="p_img6" id="p_img6" value="">
		<div class="hotel_div">
			<label>사진6</label> <img src="" width="100"
					height="120" id="pic6"><br> <font size="1"><a
						href="javascript:win_upload(6)">사진등록</a></font>
		</div>

		<div class="hotel_div">
			<label>유의사항</label> <input type="text" class="hotel_text"
				name="caution" value="${playPlace.caution}">
		</div>

		<div class="hotel_div">
			<input type="submit" class="hotel_submit" value="놀이시설등록">
		</div>
	</form>
</div>
<br />
<br />
<br />
<br />
