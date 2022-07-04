<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link rel="stylesheet"
   href="<%=request.getContextPath()%>/assets/css/board.css" />

   


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

    <div id="bodystyle" class="bodystyle">
       <div>
      <ul class="nav">
         <li><a class="active" href="list?boardid=1">FAQ</a></li>
			<li><a class="active" href="list?boardid=2">Q & A</a></li>
			<li><a class="active" href="list?boardid=3">공지사항</a></li>
      </ul>
   </div>

      <div class="content">
      <form action="update" method="post" enctype="multipart/form-data" name="f">
      <input type="hidden" name="b_num" value="${board.b_num}">
        <table><caption>${board.boardid==1?"FAQ":(board.boardid==2?"Q&A":"공지사항")}</caption>
			<tr><td>글쓴이</td><td>
			<input type = "text" name = "id" value="${board.id}">
			</td></tr>
			
			<tr><td>비밀번호</td><td>
			<input type = "password" name = "pass">
			</td></tr>
			<tr><td>제목</td><td>
			<input type = "text" name = "subject" value="${board.subject}">
			</td></tr>
			<tr><td>내용</td><td>
			<textarea rows = "15" name = "content">  ${board.content}</textarea>
			</td></tr>
			
			<tr><td>첨부파일</td>
			<td style = "text-align:left">
			
				<c:if test="${board.file1 != null && board.file1 ne ''}"> 
				
				<div id = "file_desc">
				<a href = "javascript:file_delete()">[첨부파일 삭제]</a></div>
				
				</c:if>
				
				<input type="file" name="uploadfile"></td></tr>
			<tr><td colspan = "2">
			<input type="submit" value="[게시물수정]">
			</td></tr>
		</table>
		</form>
      </div>
      </div>
      

