<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- /WebContent/chap08_member/pictureimg.jsp
   1. ���� ���ε��ϱ�
           ���ε� ��ġ��  chap08_member/img/ �� ���� 
   2. ������ ������ opener�� ����ϱ�. ���� ������� close ��        
--%>

<script>
   img1 = opener.document.getElementById("pic${pic}");
   img2 = opener.document.getElementById("p_img${pic}");
   img1.src = "<%=request.getContextPath() %>/img/${filename}";  //���ε�� �̹��� ȸ������ ȭ�鿡 ���
   img2.value="${filename}"; //�Ķ���Ϳ� �����̸� ����
   self.close();
</script>
<script>
   img = opener.document.getElementById("pic");
   img.src = "<%=request.getContextPath() %>/img/${filename}";  //���ε�� �̹��� ȸ������ ȭ�鿡 ���
   opener.document.f.picture.value="${filename}"; //�Ķ���Ϳ� �����̸� ����
   self.close();
</script>