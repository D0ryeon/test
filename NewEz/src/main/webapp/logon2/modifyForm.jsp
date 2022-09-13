<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "ez.logon.*" %>
<%@ include file="color.jsp"%> 

<html>
<head>
<title>회원정보수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
<!-- <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    
                
                } else {
                    
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script> -->

<script language="JavaScript">
   
    function checkIt() {
        var userinput = eval("document.userinput");
              
        if(!userinput.passwd.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }        
      
        if(!userinput.name.value) {
            alert("사용자 이름을 입력하세요");
            return false;
        }
       
    }
   
   function zipCheck(){
   	url="ZipCheck.jsp?check=y";
   	window.open(url,"post","toolbar=no ,width=500 ,height=300 ,directories=no,status=yes,scrollbars=yes,menubar=no");
   }

</script>

<%
	String id = (String)session.getAttribute("memId");
	/* String id;
    if(request.getParameter("id") == null) {
    	id = (String)session.getAttribute("memId");
    }else{
    	id = request.getParameter("id");
    } */
	    
    LogonDBBean manager = LogonDBBean.getInstance();
    LogonDataBean c = manager.getMember(id);
    c.setId(id);

try{
%>

<body bgcolor="<%=bodyback_c%>">
<form method="post" action="modifyPro.jsp" name="userinput" onsubmit="return checkIt()">

  <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center">
    <tr >
      <td  colspan="2" height="39" bgcolor="<%=title_c%>" align="center">
     <font size="+1" ><b>회원 정보수정</b></font></td>
    </tr>
    <tr>
      <td colspan="2" class="normal" align="center">회원의 정보를 수정합니다.</td>
    </tr>
     <tr>
      <td width="200" bgcolor="<%=value_c%>"><b>아이디 입력</b></td>
      <td width="400" bgcolor="<%=value_c%>"> </td>
    <tr> 

    <tr>
      <td  width="200"> 사용자 ID</td>
      <td  width="400"><%=c.getId()%></td>
    </tr>
   
     <tr>
      <td width="200"> 비밀번호</td>
      <td width="400">
        <input type="password" name="passwd" size="10" maxlength="10" value="<%=c.getPasswd()%>">
      </td>
    <tr> 
    <tr>
      <td  width="200" bgcolor="<%=value_c%>"><b>개인정보 입력</b></td>
      <td width="400" bgcolor="<%=value_c%>"> </td>
    <tr> 
    <tr>
      <td   width="200">사용자 이름</td>
      <td  width="400">
        <input type="text" name="name" size="15" maxlength="20" value="<%=c.getName()%>">
      </td>
    </tr>
    <tr>
      <td width="200">주민등록번호</td>
      <td width="400">
        <%=c.getJumin1()%>-<%=c.getJumin2()%>
      </td>
    </tr>
   <tr>
      <td width="200">E-Mail</td>
      <td width="400">
    	<%if(c.getEmail()==null){%>
  			<input type="text" name="email" size="40" maxlength="30" >
		<%}else{%>
          	<input type="text" name="email" size="40" maxlength="30" value="<%=c.getEmail()%>">
		<%}%>
      </td>
    </tr>
    <tr>
      <td width="200">Blog</td>
      <td width="400">
    	<%if(c.getBlog()==null){%>
  			<input type="text" name="blog" size="60" maxlength="50" >
		<%}else{%>
          	<input type="text" name="blog" size="60" maxlength="50" value="<%=c.getBlog()%>">
		<%}%>
      </td>
    </tr> 
    
    <tr> 
       <td width="200">우편번호</td>
       <td> 
			<%if(c.getZipcode()==null){%>
		       <input type="text" name="zipcode" size="7">
		    <%}else{%>
		       <input type="text" name="zipcode" size="7" value="<%=c.getZipcode() %>">
		    <%}%>
            <input type="button" value="우편번호찾기" onClick="zipCheck()">
               우편번호를 검색 하세요.
       </td>
     </tr>
    
    <tr> 
       <td>주소</td>
       <td>
	       <%if(c.getAddress()==null){%>
	       <input type="text" name="address" size="70">
	       <%}else{%>
	       <input type="text" name="address" size="70" value="<%=c.getAddress() %>">
	       <%}%>
       주소를 적어 주세요.</td>
    </tr>
	
    <%-- <tr> 
       <td width="200">우편번호</td>
       <td> 
       <%if(c.getZipcode()==null){%>
       <input type="text" name="zipcode" id="sample6_postcode" size="7">
       <%}else{%>
       <input type="text" name="zipcode" id="sample6_postcode" size="7" value="<%=c.getZipcode() %>">
       <%}%>
               <input type="button" value="우편번호찾기" onClick="zipCheck()">
               우편번호를 검색 하세요.<br>
               <input type="button" onclick="sample6_execDaumPostcode()" value="다음우편번호"><br></td>
          </tr>
    <tr>
    <tr> 
       <td>주소</td>
       <td>
       <%if(c.getAddress()==null){%>
       <input type="text" name="address" id="sample6_address" size="70">
       <br>
       <input type="text" name="address2" id="sample6_detailAddress" size="70">
       <%}else{%>
       <input type="text" name="address" id="sample6_address" size="70" value="<%=c.getAddress() %>">
       <br>
       <input type="text" name="address2" id="sample6_detailAddress" size="70">
       <%}%>
       주소를 적어 주세요.</td>
    </tr> --%>
	 
    <tr>
      <td colspan="2" align="center" bgcolor="<%=value_c%>">
       <input type="submit" name="modify" value="수   정" >
       <input type="button" value="취  소" onclick="javascript:window.location='main.jsp'">     
      </td>
    </tr>
  </table>
</form>
</body>
<%}catch(Exception e){}%>
</html>