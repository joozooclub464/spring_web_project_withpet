<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>������� ȭ��</title>

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
	<h3>�������</h3>
	<form action="regist" method="post" class="hotel_form" name="f">


		<input type="hidden" name="picture" value="">
		<div class="hotel_img">
			<img src="<%=request.getContextPath()%>/img/" width="100"
				height="120" id="pic"><br> <font size="1"><a
				href="javascript:win_upload()">��������</a></font> </br> </br>
		</div>


		<div class="hotel_div">
			<label class="hotel_label">������</label> <input type="text"
				class="hotel_text" name="c_name">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�����ּ�</label> <input type="text"
				class="hotel_text" name="c_location" placeholder="oo�� oo�� oo����">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">��ȭ��ȣ</label> <input type="text"
				class="hotel_text" name="c_tel" placeholder="000-0000-0000">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">���ᰡ���� �������� </label> <input type="text"
				class="hotel_text" name="pet_kind">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">��ð�</label> <input type="text"
				class="hotel_text" name="open_hour">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�������ɿ���</label> <label><input
				type="radio" name="park" value="1" checked>����</label> <label><input
				type="radio" name="park" value="0">�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">���డ�ɿ���</label> <label><input
				type="radio" name="reserve" value="1" checked>����</label> <label><input
				type="radio" name="reserve" value="0">�Ұ���</label>
		</div>
		
		<div class="hotel_div">
			<input type="submit" class="hotel_submit" value="�������">
		</div>
	</form>
</div>
<br />
<br />
<br />
<br />
