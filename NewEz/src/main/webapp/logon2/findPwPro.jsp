<%@page import="ez.logon.LogonDataBean"%>
<%@page import="ez.logon.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String jumin1 = request.getParameter("jumin1");

	LogonDBBean manager = LogonDBBean.getInstance();
	
	String passwd = request.getParameter("passwd");
	
	LogonDataBean member = manager.findPasswd(id, name, jumin1); 
	
	if(member!=null){
%>
<body>
<table width="500" border="1" cellspacing="0" cellpadding="5" align="center">

	<tr>
		<td colspan="2" height="39" align="center" bgcolor="<%= title_c %>">
		<font size="+1"><b>ID/PW 찾기</b></font></td>
	</tr>
	<tr>
		<td colspan="2" width="200" bgcolor="<%=value_c%>"><b>비밀번호를 찾았습니다.</b></td>	
	</tr>
	<tr>
		<td width="200">비밀번호</td>
		<td width="300"><%=member.getPasswd()%></td>
	</tr>
	

</table>
</body>
<%
	}else{
%>
<script>
	alert("정보가 없습니다.");
	history.go(-1)
</script>
<%
	}
%>
</html>