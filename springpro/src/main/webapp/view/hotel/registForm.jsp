<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ȸ������ ȭ��</title>


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
	<h3>ȣ�ڵ��</h3>
	<form action="regist" method="post" class="hotel_form" name="f">


		<input type="hidden" name="picture" value="">
		<div class="hotel_img">
			<img src="<%=request.getContextPath()%>/img/" width="100"
				height="120" id="pic"><br> <font size="1"><a
				href="javascript:win_upload()">��������</a></font> </br> </br>
		</div>


		<div class="hotel_div">
			<label class="hotel_label">ȣ�ڸ�</label> <input type="text"
				class="hotel_text" name="h_name">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">ȣ���ּ�</label> <input type="text"
				class="hotel_text" name="h_location" placeholder="oo�� oo�� oo����">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">��ȭ��ȣ</label> <input type="text"
				class="hotel_text" name="h_tel" placeholder="000-0000-0000">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�� ����</label> <input type="text"
				class="hotel_text" name="room_kind" placeholder="�𷰽�, ���丮��, ����Ʈ ��">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�� ����</label> <input type="text"
				class="hotel_text" name="room_num">
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
			<label class="hotel_label">�������̿���</label> <label><input
				type="radio" name="wifi" value="1" checked>����</label> <label><input
				type="radio" name="wifi" value="0">�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">����� ���ǽü�</label> <input type="text"
				class="hotel_text" name="disability" placeholder="��ü�� �̿��� ��">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�밭�� �� ȸ�ǽ�</label> <input type="text"
				class="hotel_text" name="reference_room" placeholder="���밡���ο� / ���� ">
		</div>

		<div class="hotel_div">
			<input type="submit" class="hotel_submit" value="ȣ�ڵ��">
		</div>
	</form>
</div>
<br />
<br />
<br />
<br />
