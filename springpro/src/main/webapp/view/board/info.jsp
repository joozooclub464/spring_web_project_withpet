<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
function like(b_num) {
	location.href="plike?b_num="+b_num
}
function like0(b_num) {
	location.href="plike?b_num="+b_num
}
function like1(b_num) {
	location.href="mlike?b_num="+b_num
}
</script>

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
      <table>
         <caption>${board.boardid==1?"FAQ":(board.boardid==2?"Q&A":"공지사항")} 게시물 상세보기</caption>
         <tr>
            <td width="20%">글쓴이</td>
            <td width="72%" style="text-align: left">${board.id}</td>
            <td width="8%" style="text-align: left"><input type="button" class="like${lcount}" onclick="like${lcount}(${board.b_num})"></button></td>
         </tr>
         <tr>
            <td>제목</td>
            <td colspan="2" style="text-slign: left">${board.subject}</td>
         </tr>
         <tr>
            <td>내용</td>
            <td colspan="2">
               <table style="width: 100%; height: 250px;">
                  <tr>
                     <td
                        style="border-width: 0px; vertical-align: top; text-align: left;">
                        ${board.content}</td>
                  </tr>
               </table>
            </td>
         </tr>
         <tr>
            <td>첨부파일</td>
            <td colspan="2" style="text-align: left;"><c:if
                  test="${ board.file1 == null || board.file1.trim()eq''}">
                &nbsp; 
                </c:if> <c:if
                  test="${ board.file1 != null && board.file1.trim()ne''}">
                  <a href="file/${board.file1 }"> 첨부파일 </a>
               </c:if></td>
         </tr>
         <tr>
            <td colspan="3"><a href="updateForm?b_num=${board.b_num}">[수정]</a>
               <a href="deleteForm?b_num=${board.b_num}">[삭제]</a> <a
               href="list?boardid=${board.boardid}">[목록]</a></td>
         </tr>
      </table>
<%-- 
      <!--### 댓글 입력창 ### -->
      <form action="insert" name="f" method="post">
         <input type="hidden" name="commentboard" value="${b_num}">
         <table>
            <caption>댓글</caption>
            <tr>
               <td>아이디</td>
               <td><input type="text" name="comment_id"></td>
               <!-- <td>비밀번호</td>
                <td><input type = "password" name = "pass"></td>
            </tr> -->
            <tr>
               <td>댓글</td>
               <td colspan="2"><textarea rows="5" cols="80"
                     id="COMMENT_CONTENT" name="comment_content"
                     placeholder="댓글을 작성하세요"></textarea></td>
               <td><input type="submit" value="댓글입력"></td>
            </tr>

         </table>
      </form>

      <!--  #######댓글 받아오기 ############ -->
      <table>
         <c:forEach var="bc" items="${list}">
            <tr>
               <td width="15%">작성자 아이디</td>
               <td width="20%">작성자아이디 받아와서 찍기</td>
               <td width="15%">댓글내용</td>
               <td width="50%">댓글내용 받아와서 찍기</td>
            </tr>
         </c:forEach>
      </table> --%>
   </div>
</div>