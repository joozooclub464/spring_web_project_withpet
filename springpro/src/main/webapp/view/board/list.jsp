<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/board.css" />

<div>

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

		<h3>
			<c:if test="${boardid==1}">
  				FAQ
    		</c:if>
			<c:if test="${boardid==2}">
  				Q&A 
    		</c:if>
			<c:if test="${boardid==3}">
  				��������
    		</c:if>
		</h3>
		<table>
			<caption>${board.id}</caption>
			<c:if test="${board.count == 0 }">
				<tr>
					<td colspan="5">��ϵ� �Խñ��� �����ϴ�.</td>
				</tr>
			</c:if>
			<c:if test="${board.count != 0 }">
				<tr>
					<td colspan="6" style="text-align: right">�۰���:${boardcount}</td>
				</tr>
				<tr>
					<th width="8%">��ȣ</th>
					<th width="39%">����</th>
					<th width="14%">�ۼ���</th>
					<th width="17%">�����</th>
					<th width="11%">��ȸ��</th>
					<th width="11%">���ƿ�</th>
				</tr>
				<c:forEach var="board" items="${list}">
					<tr>
						<td>${board.b_num}</td>
						<!-- foreach var�κ��� ���⿡ board�� ���� -->
						<td style="text-align: left"><c:set var="boardnum"
								value="${board.b_num-1 }" /> <c:if
								test="${board.file1 != null && !board.file1.trim() eq ''}">
								<a href="upfile/${board.file1}" style="text-decoration: none;">÷��</a>
							</c:if> <c:if test="${board.file1 == null || board.file1.trim() eq ''}">
     &nbsp;&nbsp;&nbsp; </c:if> <c:if test="${board.reflevel > 0}">
								<c:forEach var="i" begin="1" end="${board.reflevel-1 }">
		  
	              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      
	      </c:forEach>	       
	  ��</c:if> <a href="info?b_num=${board.b_num}">${board.subject}</a></td>
						<td>${board.id}</td>
						<td><fmt:formatDate type="date" value="${board.regdate}" />

						</td>
						<td>${board.readcnt}</td>
						<td>${board.like1}</td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="6"><c:if test="${startpage <= bottomLine}">[����] </c:if>
						<c:if test="${startpage > bottomLine}">
							<a href="list?page=${startpage - bottomLine}">[����]</a>
						</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">

							<c:if test="${a==pageNum }">[${a}] </c:if>
							<c:if test="${a!=pageNum }">

								<a href="list?page=${a}">[${a}]</a>
							</c:if>
						</c:forEach> <c:if test="${endpage >= maxpage}">  [����]</c:if> <c:if
							test="${endpage < maxpage}">
							<a href="list?page=${startpage + bottomLine}">[����]</a>
						</c:if></td>
				</tr>


			</c:if>


			<tr>
				<td colspan="6" style="text-align: right"><a
					href="writeForm?boardid=${boardid}">[�۾���]</a></td>
			</tr>

		</table>
	</div>
</div>