
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<h3>ȣ����������</h3>
	<form class="hotel_form" action="update" name="f" method="post">
		</br> </br> </br> </br> </br>

		<%-- <div class="hotel_div">
			<img src="<%=request.getContextPath()%>/img/" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">��������</a></font>
		</div> --%>

		<div class="hotel_div">
			<label class="hotel_label">ȣ�ڸ�: </label> ${hotel.h_name}
		</div>

		<div class="hotel_div">
			<label class="hotel_label">ȣ����ġ: </label> ${hotel.h_location}
		</div>

		<div class="hotel_div">
			<label class="hotel_label">��ȭ��ȣ: </label> <input type="text" class="hotel_text" name="h_tel"
				value="${hotel.h_tel}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�� ����</label> <input type="text" class="hotel_text" name="room_kind"
				value="${hotel.room_kind}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�� ��ȣ: </label> <input type="text" class="hotel_text" name="room_num"
				value="${hotel.room_num}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�������ɿ���</label> <label class="hotel_label"><input type="radio" name="park"
				value="1" <c:if test="${hotel.park==1}">checked</c:if>>����</label> <label class="hotel_label"><input
				type="radio" name="park" value="0"
				<c:if test="${hotel.park==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">���డ�ɿ���</label> <label class="hotel_label"><input type="radio"
				name="reserve" value="1"
				<c:if test="${hotel.reserve==1}">checked</c:if>>����</label> <label class="hotel_label"><input
				type="radio" name="reserve" value="0"
				<c:if test="${hotel.reserve==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�������̿���</label> <label class="hotel_label"><input type="radio" name="wifi"
				value="1" <c:if test="${hotel.wifi==1}">checked</c:if>>����</label> <label class="hotel_label"><input
				type="radio" name="wifi" value="0"
				<c:if test="${hotel.wifi==0}">checked</c:if>>�Ұ���</label>
		</div>

		<div class="hotel_div">
			<label class="hotel_label">����� ���ǽü�</label> <input type="text" class="hotel_text"
				value="${hotel.disability}">
		</div>

		<div class="hotel_div">
			<label class="hotel_label">�밭�� �� ȸ�ǽ�</label> <input type="text" class="hotel_text"
				value="${hotel.reference_room}">
		</div>

		<div class="hotel_div">
		<button type="submit" class="hotel_submit">�����Ϸ�</button>
		</div>
	</form>

</body>

</html>