<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/new_join2.css" />

<!-- Custom styles for this template -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		$("#check_all").click(function() {
			var chk = $(this).is(":checked");//.attr('checked');
			if (chk)
				$(".select_subject input").attr('checked', true);
			else
				$(".select_subject input").attr('checked', false);
		});
	});

	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", '', op);
	}
	function checkId() {
		var inputId = document.getElementById("inputId");
		if (inputId == "") {
			alert("���̵� �Է����ּ���");
			return false;
		}

		if (!inputId.checkValidity()) {
			document.getElementById("demo").innerHTML = inpObj.validationMessage;
		} else {
			document.getElementById("demo").innerHTML = "Input OK";
		}
	}

	function passchk01() {
		var p1 = document.getElementById('inputPassword').value;
		var p2 = document.getElementById('inputPasswordCheck').value;
		if (p1 != p2) {
			alert("��й�ȣ�� ��ġ ���� �ʽ��ϴ�");
			document.getElementById("inputPassword").focus();
			return false;
		}
		return true;
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
		<form class="joinform__contatiner" action="join" method="post"
			onsubmit="return passchk01()" name="f">
			<input type="hidden" name="picture" value="">


			<div class="join__img">
				<img src="" width="100" height="120" id="pic"><br> <font
					size="1"><a href="javascript:win_upload()">�������</a></font>
			</div>

			<!-- ID -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="inputId">���̵�</label>
				</h3>
				<span class="box int_id"> <input type="text" id="inputId"
					name="id" class="int" maxlength="20"> <span
					class="step_url">@withpet.com</span>
				</span>
			</div>

			<!-- PW1 -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="inputPassword">��й�ȣ</label>
				</h3>
				<span class="box int_pass"> <input type="password"
					id="inputPassword" name="pass" class="int" maxlength="20">
					<span id="alertTxt">���Ұ�</span>
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PW2 -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="inputPasswordCheck">��й�ȣ ��Ȯ��</label>
				</h3>
				<span class="box int_pass_check"> <input type="password"
					id="inputPasswordCheck" class="int" maxlength="20">
				</span> <span class="error_next_box"></span>
			</div>
			<!-- NAME -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="inputName">�̸�</label>
				</h3>
				<span class="box int_name"> <input type="text" id="inputName"
					name="name" class="int" maxlength="20">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- BIRTH -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="yy">�������</label>
				</h3>

				<div id="bir_wrap">
					<!-- BIRTH_YY -->
					<div id="bir_yy">
						<span class="box"> <input type="text" id="yy" name="yy"
							class="int" maxlength="4" placeholder="��(0000)">
						</span>
					</div>

					<!-- BIRTH_MM -->
					<div id="bir_mm">
						<span class="box"> <select id="mm" name="mm" class="sel">
								<option>��</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
						</span>
					</div>

					<!-- BIRTH_DD -->
					<div id="bir_dd">
						<span class="box"> <input type="text" id="dd" name="dd"
							class="int" maxlength="2" placeholder="��(00)">
						</span>
					</div>

				</div>
				<span class="error_next_box"></span>
			</div>
			<!-- GENDER -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="inputGender">����</label>
				</h3>
				<span class="box gender_code"> <select id="gender"
					class="sel">
						<option>����</option>
						<option value="0">����</option>
						<option value="1">����</option>
				</select>
				</span> <span class="error_next_box">�ʼ� �����Դϴ�.</span>
			</div>

			<!-- EMAIL -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="inputEmail">����Ȯ�� �̸���</label>
				</h3>
				<span class="box int_email"> <input type="text" id="email"
					name="email" class="int" maxlength="100" placeholder="�̸��� �Է�">
				</span> <span class="error_next_box">�̸��� �ּҸ� �ٽ� Ȯ�����ּ���.</span>
			</div>


			<!-- MOBILE -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="phoneNo">�޴���ȭ</label>
				</h3>
				<span class="box int_mobile"> <input type="text" id="mobile"
					name="tel" class="int" maxlength="16" placeholder="��ȭ��ȣ �Է�">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- ADDRESS -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="address">�ּ�</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputAddress" name="address" class="int" maxlength="200"
					placeholder="�ּ� �Է�">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PET KIND -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="pet_kind">�ݷ����� ����</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputPet_kind" name="pet_kind" class="int" maxlength="16"
					placeholder="�ݷ����� ���� �Է�">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PET NAME -->
			<div>
				<h3 class="join_title">
					<label style="color:red">* </label><label for="phoneNo">�ݷ����� �̸�</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputPet_name" name="pet_name" class="int" maxlength="16"
					placeholder="�ݷ����� �̸� �Է�">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PET AGE -->
			<div>
				<h3 class="join_title">
				<label style="color:red">* </label>	<label for="phoneNo">�ݷ����� ����</label>
				</h3>
				<span class="box int_mobile"> <input type="text"
					id="inputPet_age" name="pet_age" class="int" maxlength="16"
					placeholder="�ݷ����� ���� �Է�">
				</span> <span class="error_next_box"></span>
			</div>


			<div class="hotel_div form-check">
				<br /> <input type="checkbox" class="form-check-input"
					id="check_all" value="1" name="agree"> <label
					class="form-check-label" for="checkAll">���
					��� ����</label>
			</div>
			<ul class='select_subject'>
				<div class="hotel_div p-3 border">
					<div class="hotel_div form-check">
						<input type="checkbox" class="normal" id="ageCheck" name="agree">
						<label class="form-check-label" for="ageCheck">�� 14��
							�̻��Դϴ�. </label>
					</div>

					<div class="check__clause">
						<input type="checkbox" class="normal" id="agreeCheck" name="agree">
						<label class="form-check-label" for="agreeCheck">��� ���� </label>
					</div>

					<div class="check__clause">
						<input type="checkbox" class="normal" id="privacyCheck"
							name="agree"> <label class="form-check-label"
							for="privacyCheck">������������ �� �̿뿡 ���� �ȳ� </label>
					</div>

					<div class="check__clause">
						<input type="checkbox" class="normal" id="agree" value="1"
							name="agree"> <label class="form-check-label"
							for="eventCheck">�̺�Ʈ/������ ���� ���� </label>
					</div>

					<div class="check__clause">
						<input type="checkbox" class="normal" id="nightCheck" name="agree">
						<label class="form-check-label" for="nightCheck">�߰� ���� �˸�
							���� ���� </label>
					</div>
				</div>
			</ul>
			<!-- JOIN BTN-->
			<div class="btn_area">
				<input type="submit" id="btnJoin" value="�����ϱ�">
			</div>
		</form>
	</div>
</div>

<script src="main.js"></script>

<br />
<br />
<br />
<br />