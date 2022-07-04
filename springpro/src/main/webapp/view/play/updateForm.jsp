
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>���̰������ ȭ��</title>


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
	<h3>���̽ü�����</h3>
	<form action="update" method="post" class="hotel_form" name="f">
		<input type="hidden" name="p_num" value="${playPlace.p_num}">
		<input type="hidden" name="playid" value="${playPlace.playid}">
		<!-- p_num�� �Ѱ���� ������ �����ѵ� �� �ʿ�� �����Ƿ� hidden���� ���� -->



		<div class="hotel_div">
			<label class="hotel_label">���̰�����: </label><input type="hidden"
				class="hotel_text" name="p_name" value="${playPlace.p_name}">
			${playPlace.p_name}
		</div>

		<div class="hotel_div">
			<label>�ü�����</label> <input type="text" class="hotel_text"
				name="content" value="${playPlace.content}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">���̰�����ġ: </label><input type="hidden"
				class="hotel_text" name="p_location" value="${playPlace.p_location}">
			${playPlace.p_location}
			<!-- ������ �Ұ��ϰ�(hidden) ���� �Ѿ(updateForm���� update��) -->
		</div>

		<div class="hotel_div">
			<label class="hotel_label">��ȭ��ȣ: </label> <input type="text"
				class="hotel_text" name="p_tel" value="${playPlace.p_tel}">
		</div>

		<div class="hotel_div">
			<label>��ð�</label> <label><input type="text" name="open_hour"
				value="${playPlace.open_hour}"></label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�������ɿ���</label> <label class="hotel_label"><input
				type="radio" name="park" value="1"
				<c:if test="${playPlace.park==1}">checked</c:if>>����</label> <label
				class="hotel_label"><input type="radio" name="park"
				value="0" <c:if test="${playPlace.park==0}">checked</c:if>>�Ұ���</label>
		</div>

		<input type="hidden" name="p_img1" id="p_img1"
			value="${playPlace.p_img1}">
		<div class="hotel_div">
			<label>����1</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img1}"
				width="100" height="120" id="pic1"><br> <font size="1"><a
				href="javascript:win_upload(1)">�������</a></font>
		</div>

		<input type="hidden" name="p_img2" id="p_img2"
			value="${playPlace.p_img2}">
		<div class="hotel_div">
			<label>����2</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img2}"
				width="100" height="120" id="pic2"><br> <font size="1"><a
				href="javascript:win_upload(2)">�������</a></font>
		</div>

		<input type="hidden" name="p_img3" id="p_img3"
			value="${playPlace.p_img3}">
		<div class="hotel_div">
			<label>����3</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img3}"
				width="100" height="120" id="pic3"><br> <font size="1"><a
				href="javascript:win_upload(3)">�������</a></font>
		</div>

		<input type="hidden" name="p_img4" id="p_img4"
			value="${playPlace.p_img4}">
		<div class="hotel_div">
			<label>����4</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img4}"
				width="100" height="120" id="pic4"><br> <font size="1"><a
				href="javascript:win_upload(4)">�������</a></font>
		</div>

		<input type="hidden" name="p_img5" id="p_img5"
			value="${playPlace.p_img5}">
		<div class="hotel_div">
			<label>����5</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img5}"
				width="100" height="120" id="pic5"><br> <font size="1"><a
				href="javascript:win_upload(5)">�������</a></font>
		</div>

		<input type="hidden" name="p_img6" id="p_img6"
			value="${playPlace.p_img6}">
		<div class="hotel_div">
			<label>����6</label> <img
				src="<%=request.getContextPath()%>/img/${playPlace.p_img6}"
				width="100" height="120" id="pic6"><br> <font size="1"><a
				href="javascript:win_upload(6)">�������</a></font>
		</div>

		<div class="hotel_div">
			<label>���ǻ���</label> <input type="text" class="hotel_text"
				name="caution" value="${playPlace.caution}">
		</div>

		<div class="hotel_div">
			<button type="submit" class="hotel_submit">�����Ϸ�</button>
		</div>
	</form>

</div>