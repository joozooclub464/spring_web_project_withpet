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
      <form action="update" method="post" enctype="multipart/form-data" name="f">
      <input type="hidden" name="b_num" value="${board.b_num}">
        <table><caption>${board.boardid==1?"FAQ":(board.boardid==2?"Q&A":"��������")}</caption>
			<tr><td>�۾���</td><td>
			<input type = "text" name = "id" value="${board.id}">
			</td></tr>
			
			<tr><td>��й�ȣ</td><td>
			<input type = "password" name = "pass">
			</td></tr>
			<tr><td>����</td><td>
			<input type = "text" name = "subject" value="${board.subject}">
			</td></tr>
			<tr><td>����</td><td>
			<textarea rows = "15" name = "content">  ${board.content}</textarea>
			</td></tr>
			
			<tr><td>÷������</td>
			<td style = "text-align:left">
			
				<c:if test="${board.file1 != null && board.file1 ne ''}"> 
				
				<div id = "file_desc">
				<a href = "javascript:file_delete()">[÷������ ����]</a></div>
				
				</c:if>
				
				<input type="file" name="uploadfile"></td></tr>
			<tr><td colspan = "2">
			<input type="submit" value="[�Խù�����]">
			</td></tr>
		</table>
		</form>
      </div>
      </div>
      

