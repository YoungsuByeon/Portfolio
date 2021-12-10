<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="Member.*" %>
<% request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck</title>
<script type="text/javascript" src="../HeaderJS/jquery.js"></script>
<style type="text/css">

	#wrap { width: 490px; text-align: center; margin: a auto 0 auto;}
	#chk {text-align: center;}
	#cancelBtn { visibility: visible;}

</style>
<script type="text/javascript">

	// 회원가입창의 아이디 입력란의 값을 가져온다.
	function pValue() {								// 부모창(회원가입화면)의 값
		document.getElementById("id").value = opener.document.joinForm.id.value;

	}
	
	function idCheck(){
		 
        var id = document.getElementById("id").value;

        if (!id) {
            alert("아이디를 입력하지 않았습니다.");
            return false;
        } 
        else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
            alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
            return false;
        }
    }
    
    
    // 사용하기 클릭 시 부모창으로 값 전달 
    function sendCheckValue(){
        // 중복체크 결과인 idCheck 값을 전달한다.
        opener.document.joinForm.idDuplication.value ="idCheck";
        // 회원가입 화면의 ID입력란에 값을 전달
        opener.document.joinForm.id.value = document.getElementById("id").value;
        
        if (opener != null) {
            opener.chkForm = null;
            self.close();
        }    
    }  
    
</script>
</head>
<body onload="pValue()">
	<jsp:useBean id="member" class="Member.MemberInfo" scope="request"/>
	<jsp:setProperty property="*" name="member"/>
	<jsp:useBean id="data" class="Member.MemberManagerDAO" scope="request"/>
	<div id="wrap">
		<br>
		<b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">
			<form id="checkForm"  method="post">
				<input type="text" name="idinput" id="id">
				<!-- <input type="button" value="중복확인" id="check" onclick="return idCheck(this)"> -->
			</form>
			<div id="idCheckText">
				<%
					String id = member.getId();
					int cnt = data.checkId(id);
					if(cnt == 0){
						out.print("<p>사용가능한 ID입니다.</p>");
						out.print("<input id='useBtn' type='button' value='사용하기' onclick='sendCheckValue()'>");
					}else{
						out.print("<p style='color: red'>이미 사용중인 ID입니다.</p>");
						out.print("<input id='cancelBtn' type='button' value='다시검색하기' onclick='window.close()'>");
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>