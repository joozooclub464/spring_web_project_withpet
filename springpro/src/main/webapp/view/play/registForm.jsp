<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>���̰������ ȭ��</title>


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
	<h3>���̽ü����</h3>
	<form action="regist" method="post" class="hotel_form" name="f">
		<!-- 
		
		<input type="hidden" name="picture" value="">
		<div>
			<img src="" width="100" height="120" id="pic"><br> <font
				size="1"><a href="javascript:win_upload()">�������</a></font>
		</div>
 -->
 	<!-- id�� ?? -->
		<div><input type="radio" value="1" name = "playid">CAFE</div>
		<div><input type="radio" value="2" name = "playid">PLAY_GROUND</div>
		<div><input type="radio" value="3" name = "playid">DINING</div>
		<%-- <input type="hidden" value="${playid}" name="playid"> --%>
	<!-- id�� ?? -->
		
		<div class="hotel_div">
			<label>���̽ü���</label> <input type ="text" class="hotel_text"
				name="p_name" value="${playPlace.p_name}">
		</div>
		
		<div class="hotel_div">
			<label>�ü�����</label> <input type="text" class="hotel_text"
				name="content" value="${playPlace.content}">
		</div>

		<div class="hotel_div">
			<label>���̽ü��ּ�</label> <input type="text" class="hotel_text"
				name="p_location" value="${playPlace.p_location}"
				placeholder="oo�� oo�� oo����">
		</div>

		<div class="hotel_div">
			<label>��ȭ��ȣ</label> <input type="text" class="hotel_text"
				name="p_tel" value="${playPlace.p_tel}" placeholder="000-0000-0000">
		</div>
		
		<div class="hotel_div">
			<label>��ð�</label> <label><input type="text" name="open_hour"
				value="${playPlace.open_hour}"></label>
		</div>

		<div class="hotel_div">
			<label>�������ɿ���</label> <label><input type="radio" name="park"
				value="1" checked>����</label> <label><input type="radio"
				name="park" value="0">�Ұ���</label>
		</div>

		<input type="hidden" name="p_img1" id="p_img1" value="">
		<div class="hotel_div">
			<label>����1</label> <img src="" width="100"
					height="120" id="pic1"><br> <font size="1"><a
						href="javascript:win_upload(1)">�������</a></font>
		</div>
		
		<input type="hidden" name="p_img2" id="p_img2" value="">
		<div class="hotel_div">
			<label>����2</label> <img src="" width="100"
					height="120" id="pic2"><br> <font size="1"><a
						href="javascript:win_upload(2)">�������</a></font>
		</div>
		
		<input type="hidden" name="p_img3" id="p_img3" value="">
		<div class="hotel_div">
			<label>����3</label> <img src="" width="100"
					height="120" id="pic3"><br> <font size="1"><a
						href="javascript:win_upload(3)">�������</a></font>
		</div>
		
		<input type="hidden" name="p_img4" id="p_img4" value="">
		<div class="hotel_div">
			<label>����4</label> <img src="" width="100"
					height="120" id="pic4"><br> <font size="1"><a
						href="javascript:win_upload(4)">�������</a></font>
		</div>
		
		<input type="hidden" name="p_img5" id="p_img5" value="">
		<div class="hotel_div">
			<label>����5</label> <img src="" width="100"
					height="120" id="pic5"><br> <font size="1"><a
						href="javascript:win_upload(5)">�������</a></font>
		</div>
		
		<input type="hidden" name="p_img6" id="p_img6" value="">
		<div class="hotel_div">
			<label>����6</label> <img src="" width="100"
					height="120" id="pic6"><br> <font size="1"><a
						href="javascript:win_upload(6)">�������</a></font>
		</div>

		<div class="hotel_div">
			<label>���ǻ���</label> <input type="text" class="hotel_text"
				name="caution" value="${playPlace.caution}">
		</div>

		<div class="hotel_div">
			<input type="submit" class="hotel_submit" value="���̽ü����">
		</div>
	</form>
</div>
<br />
<br />
<br />
<br />
