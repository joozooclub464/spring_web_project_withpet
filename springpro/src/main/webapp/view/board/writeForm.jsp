<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/board/writeForm.jsp --%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/board.css" />


<div id="banner" class="main">11</div>

	<div class="content__2">
		<div class="content__desc" style="padding: 0px 50px 0px 0px">
			<p1>����� �ݷ�������<br>
			���� ��� ������ ����, ������</p1>
		</div>
		<div class="content__desc2" style="padding: 0px 130px 0px 0px">
			<p4>������ ������ �Ⱥθ� ���� �̾߱⸦ ���� ������. ������ ���� ���� �پ��� ��ɵ� �غ�Ǿ� �ֽ��ϴ�.<br>
			������ ���� ���� ���� ���塯�ϰ� �ε�� ������.</p4>
		</div>
		<ul class="actions">
			<li><a href="#one" class="button next scrolly"> <p2>�ڼ���
					����</p2>
			</a> <!-- <button class=detail type="button"><p2>�ڼ��� ����</p2></button> -->
			</li>
		</ul>
	</div>

<div id="bodystyle" class="bodystyle">
	<div>
		<ul class="nav">
			<li><a class="active" href="list?boardid=1">FAQ</a></li>
			<li><a class="active" href="list?boardid=2">Q & A</a></li>
			<li><a class="active" href="list?boardid=3">��������</a></li>
		</ul>
	</div>

	<div class="content">
		<form action="write" method="post" enctype="multipart/form-data"
			name="f">
			<table>
				<caption>
					<c:if test="${boardid==1}">
  					FAQ �۾���
  				</c:if>
					<c:if test="${boardid==2}">
  					Q&A �۾���
  				</c:if>
					<c:if test="${boardid==3}">
  					�������� �۾���
  				</c:if>
				</caption>

				<td><input type="hidden" value="${boardid}" name="boardid"></td> <!-- �޾ƿ� �� EL�� value������ name���� controller�� �ѱ� -->
				<tr>
					<td>�۾���</td>
					<td><input type="text" name="id" value="${id}"></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" name="subject"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><textarea rows="15" name="content"></textarea></td>
				</tr>
				<tr>
					<td>÷������</td>
					<td><input type="file" name="uploadfile"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="[�Խù����]"></td>
				</tr>

			</table>
		</form>
	</div>
</div>

