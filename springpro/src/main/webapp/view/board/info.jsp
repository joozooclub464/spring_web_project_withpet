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
      <table>
         <caption>${board.boardid==1?"FAQ":(board.boardid==2?"Q&A":"��������")} �Խù� �󼼺���</caption>
         <tr>
            <td width="20%">�۾���</td>
            <td width="72%" style="text-align: left">${board.id}</td>
            <td width="8%" style="text-align: left"><input type="button" class="like${lcount}" onclick="like${lcount}(${board.b_num})"></button></td>
         </tr>
         <tr>
            <td>����</td>
            <td colspan="2" style="text-slign: left">${board.subject}</td>
         </tr>
         <tr>
            <td>����</td>
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
            <td>÷������</td>
            <td colspan="2" style="text-align: left;"><c:if
                  test="${ board.file1 == null || board.file1.trim()eq''}">
                &nbsp; 
                </c:if> <c:if
                  test="${ board.file1 != null && board.file1.trim()ne''}">
                  <a href="file/${board.file1 }"> ÷������ </a>
               </c:if></td>
         </tr>
         <tr>
            <td colspan="3"><a href="updateForm?b_num=${board.b_num}">[����]</a>
               <a href="deleteForm?b_num=${board.b_num}">[����]</a> <a
               href="list?boardid=${board.boardid}">[���]</a></td>
         </tr>
      </table>
<%-- 
      <!--### ��� �Է�â ### -->
      <form action="insert" name="f" method="post">
         <input type="hidden" name="commentboard" value="${b_num}">
         <table>
            <caption>���</caption>
            <tr>
               <td>���̵�</td>
               <td><input type="text" name="comment_id"></td>
               <!-- <td>��й�ȣ</td>
                <td><input type = "password" name = "pass"></td>
            </tr> -->
            <tr>
               <td>���</td>
               <td colspan="2"><textarea rows="5" cols="80"
                     id="COMMENT_CONTENT" name="comment_content"
                     placeholder="����� �ۼ��ϼ���"></textarea></td>
               <td><input type="submit" value="����Է�"></td>
            </tr>

         </table>
      </form>

      <!--  #######��� �޾ƿ��� ############ -->
      <table>
         <c:forEach var="bc" items="${list}">
            <tr>
               <td width="15%">�ۼ��� ���̵�</td>
               <td width="20%">�ۼ��ھ��̵� �޾ƿͼ� ���</td>
               <td width="15%">��۳���</td>
               <td width="50%">��۳��� �޾ƿͼ� ���</td>
            </tr>
         </c:forEach>
      </table> --%>
   </div>
</div>