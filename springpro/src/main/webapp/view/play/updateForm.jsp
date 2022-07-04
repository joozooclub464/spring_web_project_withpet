
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>놀이공간등록 화면</title>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/updateform.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function win_upload(pic) {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm?pic=" + pic, "", op);
	}
</script>

<div class="hotel__container">
	<!-- Join Content -->
	<h3>놀이시설수정</h3>
	<form action="update" method="post" class="hotel_form" name="f">
		<input type="hidden" name="p_num" value="${playPlace.p_num}">
		<input type="hidden" name="playid" value="${playPlace.playid}">
		<!-- p_num을 넘겨줘야 수정이 가능한데 볼 필요는 없으므로 hidden으로 넣음 -->



		<div class="hotel_div">
			<label class="hotel_label">놀이공간명: </label><input type="hidden"
				class="hotel_text" name="p_name" value="${playPlace.p_name}">
			${playPlace.p_name}
		</div>

		<div class="hotel_div">
			<label>시설설명</label> <input type="text" class="hotel_text"
				name="content" value="${playPlace.content}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">놀이공간위치: </label><input type="hidden"
				class="hotel_text" name="p_location" value="${playPlace.p_location}">
			${playPlace.p_location}
			<!-- 변경은 불가하고(hidden) 값은 넘어감(updateForm에서 update로) -->
		</div>

		<div class="hotel_div">
			<label class="hotel_label">전화번호: </label> <input type="text"
				class="hotel_text" name="p_tel" value="${playPlace.p_tel}">
		</div>

		<div class="hotel_div">
			<label>운영시간</label> <label><input type="text" name="open_hour"
				value="${playPlace.open_hour}"></label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">주차가능여부</label> <label class="hotel_label"><input
				type="radio" name="park" value="1"
				<c:if test="${playPlace.park==1}">checked</c:if>>가능</label> <label
				class="hotel_label"><input type="radio" name="park"
				value="0" <c:if test="${playPlace.park==0}">checked</c:if>>불가능</label>
		</div>

		<input type="hidden" name="p_img1" id="p_img1"
			value="${playPlace.p_img1}">
		<div class="hotel_div">
			<label>사진1</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img1}"
				width="100" height="120" id="pic1"><br> <font size="1"><a
				href="javascript:win_upload(1)">사진등록</a></font>
		</div>

		<input type="hidden" name="p_img2" id="p_img2"
			value="${playPlace.p_img2}">
		<div class="hotel_div">
			<label>사진2</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img2}"
				width="100" height="120" id="pic2"><br> <font size="1"><a
				href="javascript:win_upload(2)">사진등록</a></font>
		</div>

		<input type="hidden" name="p_img3" id="p_img3"
			value="${playPlace.p_img3}">
		<div class="hotel_div">
			<label>사진3</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img3}"
				width="100" height="120" id="pic3"><br> <font size="1"><a
				href="javascript:win_upload(3)">사진등록</a></font>
		</div>

		<input type="hidden" name="p_img4" id="p_img4"
			value="${playPlace.p_img4}">
		<div class="hotel_div">
			<label>사진4</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img4}"
				width="100" height="120" id="pic4"><br> <font size="1"><a
				href="javascript:win_upload(4)">사진등록</a></font>
		</div>

		<input type="hidden" name="p_img5" id="p_img5"
			value="${playPlace.p_img5}">
		<div class="hotel_div">
			<label>사진5</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img5}"
				width="100" height="120" id="pic5"><br> <font size="1"><a
				href="javascript:win_upload(5)">사진등록</a></font>
		</div>

		<input type="hidden" name="p_img6" id="p_img6"
			value="${playPlace.p_img6}">
		<div class="hotel_div">
			<label>사진6</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img6}"
				width="100" height="120" id="pic6"><br> <font size="1"><a
				href="javascript:win_upload(6)">사진등록</a></font>
		</div>

		<div class="hotel_div">
			<label>유의사항</label> <input type="text" class="hotel_text"
				name="caution" value="${playPlace.caution}">
		</div>

		<div class="hotel_div">
			<button type="submit" class="hotel_submit">수정완료</button>
		</div>
	</form>

</div>