<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/new_join2.css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	function input_check(f) {
		<c:if test="${id ne 'admin'}">
		if (f.pass.value == "") {
			alert("��й�ȣ�� �Է��ϼ���");
			f.pass.focus();
			return false;
		}
		</c:if>
		return true;
	}
	function passchg_winopen() {
		var op = "width=1000, height=700, left=300, top=150";
		open("passwordForm", "", op);
	}
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", "", op);
	}
</script>
<br />
<br />
<br />
<br />
<!-- header -->
<div id="header">
	<h2>WITH.PET</h2>
</div>

<!-- wrapper -->
<!-- <div id="wrapper"> -->
<div class="container__join">
	<!-- <div>
            <img src="img/4c3f4b754e167.jpg" alt="ho" class="join__img" />
        </div> -->

	<!-- content-->
	<div id="content">
		<form class="joinform__contatiner" action="update" method="post"
			onsubmit="return input_check(this)" name="f">
			<input type="hidden" name="picture" value="${member.picture}">

			<div class="join__img">
				<img src="<%=request.getContextPath()%>/img/${member.picture}"
					width="100" height="120" id="pic"><br> <font size="1"><a
					href="javascript:win_upload()">��������</a></font>
			</div>

			<!-- ID -->
			<div>
				<h3 class="join_title">
					<label for="inputId">���̵�</label>
				</h3>
				<span class="box int_id"> <input type="hidden" id="inputId"
					name="id" class="int" maxlength="20" value="${member.id}">
					${member.id} <span class="step_url">@naver.com</span>
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PW1 -->
			<div>
				<h3 class="join_title">
					<label for="inputPassword">��й�ȣ</label>
				</h3>
				<span class="box int_pass"> <input type="password"
					id="inputPassword" name="pass" class="int" maxlength="20">
				</span> <br /> <a data-role="button" href="javascript:passchg_winopen()">��й�ȣ
					����</a>
			</div>
			<!-- NAME -->
			<div>
				<h3 class="join_title">
					<label for="inputName">�̸�</label>
				</h3>
				<span class="box int_name"> <input type="hidden"
					id="inputName" name="name" value="${member.name}" class="int"
					maxlength="20"> ${member.name}
				</span> <span class="error_next_box"></span>
			</div>

			<!-- BIRTHDAY -->
			<div>
				<h3 class="join_title">
					<label for="inputBirthday">�������</label>
				</h3>
				<span class="box int_birthday"> <input type="hidden"
					id="inputBirthday" name="birthday" class="int" maxlength="20"
					value="${member.birthday}">${member.birthday}
				</span> <span class="error_next_box"></span>
			</div>

			<!-- JOINDATE -->
			<div>
				<h3 class="join_title">
					<label for="inputJoin_date">������</label>
				</h3>
				<span class="box int_join_date"> <input type="hidden"
					id="inputJoin_date" name="join_date" class="int" maxlength="20"
					value="${member.join_date}">${member.join_date}
				</span> <span class="error_next_box"></span>
			</div>


			<!-- GENDER -->
			<div>
				<h3 class="join_title">
					<label for="inputGender">����</label>
				</h3>
				<span class="box int_email"> <input type="hidden" id="gender"
					name="gender" class="int" maxlength="100" value="${member.gender}">${member.gender==0?"����":"����" }
				</span>

			</div>

			<!-- EMAIL -->
			<div>
				<h3 class="join_title">
					<label for="inputEmail">����Ȯ�� �̸���<span class="optional"></span></label>
				</h3>
				<span class="box int_email"> <input type="text" id="email"
					name="email" class="int" maxlength="100" value="${member.email}">
				</span>
			</div>


			<!-- MOBILE -->
			<div>
				<h3 class="join_title">
					<label for="phoneNo">�޴���ȭ</label>
				</h3>
				<span class="box int_mobile"> <input type="text" id="mobile"
					name="tel" class="int" maxlength="16" value="${member.tel}">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- ADDRESS -->
			<div>
				<h3 class="join_title">
					<label for="address">�ּ�</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputAddress" name="address" class="int" maxlength="200"
					value="${member.address}">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PET KIND -->
			<div>
				<h3 class="join_title">
					<label for="pet_kind">�ݷ����� ����</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputPet_kind" name="pet_kind" class="int" maxlength="16"
					value="${member.pet_kind}">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PET NAME -->
			<div>
				<h3 class="join_title">
					<label for="pet_name">�ݷ����� �̸�</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputPet_name" name="pet_name" class="int" maxlength="16"
					value="${member.pet_name}">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PET AGE -->
			<div>
				<h3 class="join_title">
					<label for="pet_age">�ݷ����� ����</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputPet_age" name="pet_age" class="int" maxlength="16"
					value="${member.pet_age}">
				</span> <span class="error_next_box"></span>
			</div>


			<!-- JOIN BTN-->
			<div class="btn_area">
				<input type="submit" id="btnJoin" value="���� �Ϸ�">
			</div>
		</form>
	</div>
</div>

<script src="main.js"></script>

<br />
<br />
<br />
<br />