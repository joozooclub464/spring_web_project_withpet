<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/board/deleteForm.jsp --%>


<link rel="stylesheet"
   href="<%=request.getContextPath()%>/assets/css/board.css" />

<div id="bodystyle" class="bodystyle">


   <div class="content">
      <form action="delete" name="f" method="post">
         <input type="hidden" name="b_num" value="${b_num}">
         <table>
            <caption>FAQ 게시글 삭제</caption>
            <tr>
               <td>게시글 비밀번호</td>
               <td><input type="password" name="pass"></td>
            </tr>
            <tr>
               <td colspan="2"><input type="submit" value="게시글삭제"></td>
            </tr>
         </table>
      </form>
   </div>
</div>