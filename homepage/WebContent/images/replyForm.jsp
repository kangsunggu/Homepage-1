<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	ImagesDTO dto = idao.readReply(no);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">

</style>
<link href="<%=root %>/css/style.css" rel="Stylesheet" type="text/css">
</head>
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top2.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">답글 등록</DIV>

<FORM name='frm' method='POST' action='./replyProc.jsp' enctype='multipart/form-data'>
	<!-- 답변 등록을 위한 태그 -->
	<input type="hidden" name="grpno" value="<%=dto.getGrpno() %>">
	<input type="hidden" name="indent" value="<%=dto.getIndent() %>">
	<input type="hidden" name="ansnum" value="<%=dto.getAnsnum() %>">
	<!-- 페이지와 검색 유지를 위한 태그 -->
	<input name="col" value="<%=request.getParameter("col") %>" type="hidden">
	<input name="word" value="<%=request.getParameter("word") %>" type="hidden">
	<input name="nowPage" value="<%=request.getParameter("nowPage") %>" type="hidden">
	<!-- 부모글 삭제를 막기 위한 태그 -->
	<input name="no" value="<%=no %>" type="hidden">
  <TABLE>
    <TR>
      <TH>성명</TH>
      <TD><input type='text' name="wname" size='40'></TD>
    </TR>
    <TR>
      <TH>제목</TH>
      <TD><input type='text' name="title" size='40' value="<%=dto.getTitle() %>"></TD>
    </TR>
    <TR>
      <TH>내용</TH>
      <TD>
      <textarea name='content' rows="10" cols="40"></textarea>
      </TD>
    </TR>
    <TR>
      <TH>비밀번호</TH>
      <TD><input type='password' name="passwd" size='40'></TD>
    </TR>
    <TR>
      <TH>파일명</TH>
      <TD><input type='file' name='fname'></TD>
    </TR>
  </TABLE>
  
  <DIV class="title">
    <input class='ct-btn white' type='submit' value='등록'>
    <input class='ct-btn white' type='button' value='취소' onclick="history.back();">
  </DIV>
</FORM>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 

