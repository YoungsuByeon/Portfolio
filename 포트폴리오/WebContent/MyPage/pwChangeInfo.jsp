<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChangePwInfo</title>
<style type="text/css">

	body {text-align: center;}
	div { margin-top: 50px;}
	input {margin-top: 10px;}
	#changeBtn {margin-top: 10px; height: 35px; width: 150px;
		background: #0bff; color: #fff; border: none;
		cursor: pointer; box-shadow: 0 14px 30px rgba(0,0,0,0.15);}

</style>
<script type="text/javascript">

function check_pw(){
    var pw = document.getElementById('changePw').value;
    var SC = ["!","@","#","$","%"];
    var check_SC = 0;

    if(pw.length < 6 || pw.length>16){
        window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
        document.getElementById('pw').value='';
    }
    for(var i=0;i<SC.length;i++){
        if(pw.indexOf(SC[i]) != -1){
            check_SC = 1;
        }
    }
    if(check_SC == 0){
        window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
        document.getElementById('pw').value='';
        form.pw.focus();
    }
}

</script>
</head>
<body>
	<div>
		<h2>비밀번호 변경하기</h2>
		<hr size="1" width="460">
		<form action="pwChangePro.jsp" method="post">
			<input type="text" placeholder="아이디" name="id"><br>
			<input id="changePw" type="password" placeholder="새로운 비밀번호" onchange="check_pw()" name="pw"><br>
			<input type="submit" value="수정하기" id="changeBtn">
		</form>
	</div>
</body>
</html>