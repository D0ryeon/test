<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="<%= bodyback_c %>">

<table width="500" border="1" cellspacing="0" cellpadding="5" align="center">
<form method="post" action="findIdPro.jsp">
	<tr>
		<td colspan="2" height="39" align="center" bgcolor="<%= title_c %>">
		<font size="+1"><b>ID/PW ã��</b></font></td>
	</tr>
	<tr>
		<td colspan="2" width="200" bgcolor="<%=value_c%>"><b>�ֹε�Ϲ�ȣ�� ID ã��</b></td>	
	</tr>
	<tr>
		<td width="200">�̸�</td>
		<td width="300">
			<input type="text" name="name" size="15" maxlength="10">
		</td>
	</tr>
	<tr>
		<td width="200">�ֹε�Ϲ�ȣ</td>
		<td width="300">
			<input type="text" name="jumin1" size="10" maxlength="6">-
			<input type="text" name="jumin2" size="10" maxlength="7">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center" bgcolor="<%=value_c%>">
			<input type="submit" name="confirm" value="ã��" >
			<input type="button" value="���" onclick="javascript:window.location='main.jsp'">
		</td>
	</tr>
</form>
<form method="post" action="findPwPro.jsp">
	<tr>
		<td colspan="2" width="200" bgcolor="<%=value_c%>"><b>������Ϸ� ��й�ȣ ã��</b></td>
	</tr>
	<tr>
		<td width="200">ID</td>
		<td width="300">
		<input type="text" name="id" size="10" maxlength="12">
	</td>
	</tr>
	<tr>
		<td width="200">�̸�</td>
		<td width="300">
			<input type="text" name="name" size="15" maxlength="10">
		</td>
	</tr>
	<tr>
		<td width="200">�������</td>
		<td width="300">
			<input type="text" name="jumin1" size="10" maxlength="6">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center" bgcolor="<%=value_c%>">
			<input type="submit" name="confirm" value="ã��" >
			<input type="button" value="���" onclick="javascript:window.location='main.jsp'">
		</td>
	</tr>
</form>
</table>
</body>
</html>