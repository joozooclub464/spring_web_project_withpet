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
			<p1>사람과 반려동물을<br>
			향한 모든 연결의 시작, 위드펫</p1>
		</div>
		<div class="content__desc2" style="padding: 0px 130px 0px 0px">
			<p4>소중한 가족과 안부를 묻고 이야기를 나눠 보세요. 여행의 편리를 돕는 다양한 기능도 준비되어 있습니다.<br>
			세상을 향해 열린 문을 ‘톡’하고 두드려 보세요.</p4>
		</div>
		<ul class="actions">
			<li><a href="#one" class="button next scrolly"> <p2>자세히
					보기</p2>
			</a> <!-- <button class=detail type="button"><p2>자세히 보기</p2></button> -->
			</li>
		</ul>
	</div>
</div>
<div id="bodystyle" class="bodystyle">
	<div>
		<ul class="nav">
			<li><a class="active" href="list?boardid=1">FAQ</a></li>
			<li><a class="active" href="list?boardid=2">Q & A</a></li>
			<li><a class="active" href="list?boardid=3">공지사항</a></li>
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
  				공지사항
    		</c:if>
		</h3>
		<table>
			<caption>${board.id}</caption>
			<c:if test="${board.count == 0 }">
				<tr>
					<td colspan="5">등록된 게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${board.count != 0 }">
				<tr>
					<td colspan="6" style="text-align: right">글개수:${boardcount}</td>
				</tr>
				<tr>
					<th width="8%">번호</th>
					<th width="39%">제목</th>
					<th width="14%">작성자</th>
					<th width="17%">등록일</th>
					<th width="11%">조회수</th>
					<th width="11%">좋아요</th>
				</tr>
				<c:forEach var="board" items="${list}">
					<tr>
						<td>${board.b_num}</td>
						<!-- foreach var부분이 여기에 board로 들어간것 -->
						<td style="text-align: left"><c:set var="boardnum"
								value="${board.b_num-1 }" /> <c:if
								test="${board.file1 != null && !board.file1.trim() eq ''}">
								<a href="upfile/${board.file1}" style="text-decoration: none;">첨부</a>
							</c:if> <c:if test="${board.file1 == null || board.file1.trim() eq ''}">
     &nbsp;&nbsp;&nbsp; </c:if> <c:if test="${board.reflevel > 0}">
								<c:forEach var="i" begin="1" end="${board.reflevel-1 }">
		  
	              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      
	      </c:forEach>	       
	  └</c:if> <a href="info?b_num=${board.b_num}">${board.subject}</a></td>
						<td>${board.id}</td>
						<td><fmt:formatDate type="date" value="${board.regdate}" />

						</td>
						<td>${board.readcnt}</td>
						<td>${board.like1}</td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="6"><c:if test="${startpage <= bottomLine}">[이전] </c:if>
						<c:if test="${startpage > bottomLine}">
							<a href="list?page=${startpage - bottomLine}">[이전]</a>
						</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">

							<c:if test="${a==pageNum }">[${a}] </c:if>
							<c:if test="${a!=pageNum }">

								<a href="list?page=${a}">[${a}]</a>
							</c:if>
						</c:forEach> <c:if test="${endpage >= maxpage}">  [다음]</c:if> <c:if
							test="${endpage < maxpage}">
							<a href="list?page=${startpage + bottomLine}">[다음]</a>
						</c:if></td>
				</tr>


			</c:if>


			<tr>
				<td colspan="6" style="text-align: right"><a
					href="writeForm?boardid=${boardid}">[글쓰기]</a></td>
			</tr>

		</table>
	</div>
</div>