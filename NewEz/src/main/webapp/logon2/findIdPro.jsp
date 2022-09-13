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
	String name = request.getParameter("name");
	String jumin1 = request.getParameter("jumin1");
	String jumin2 = request.getParameter("jumin2");
	System.out.println(name);
	System.out.println(jumin1);
	System.out.println(jumin2);

	LogonDBBean manager = LogonDBBean.getInstance();
	
	String id = request.getParameter("id");
	
	LogonDataBean member = manager.findId(name, jumin1, jumin2); 
	
	if(member!=null){
%>
<body>
<table width="500" border="1" cellspacing="0" cellpadding="5" align="center">

	<tr>
		<td colspan="2" height="39" align="center" bgcolor="<%= title_c %>">
		<font size="+1"><b>ID/PW 찾기</b></font></td>
	</tr>
	<tr>
		<td colspan="2" width="200" bgcolor="<%=value_c%>"><b>아이디를 찾았습니다.</b></td>	
	</tr>
	<tr>
		<td width="200">아이디</td>
		<td width="300"><%=member.getId()%></td>
	</tr>
	

</table>
</body>
<%
	}else{
%>
<script>
	alert("아이디가 없습니다.");
	history.go(-1)
</script>
<%
	}
%>
</html>