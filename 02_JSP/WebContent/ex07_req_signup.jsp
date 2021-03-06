<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function send_go() {
		//alert("send_go() 시작");
		//alert(document.frm.name.value);
		if (document.frm.name.value.trim() == "") {
			alert("이름을 입력하세요");
			document.frm.name.value = "";
			document.frm.name.focus();
			return false;
		}
		let vForm = document.frm;
		if (vForm.id.value.trim().length < 1) {
			alert("아이디를 입력하세요")
			vForm.id.value = "";
			vForm.id.focus();
			return false;
		}
		if (vForm.pwd.value.trim().length < 1) { //암호값 입력여부 확인
			alert("암호를 입력하세요")
			vForm.pwd.value = "";
			vForm.pwd.focus();
			return false;
		}
		if (vForm.pwd2.value.trim().length < 1) { //암호확인값 입력여부 확인
			alert("확인암호를 입력하세요")
			vForm.pwd2.value = "";
			vForm.pwd2.focus();
			return false;
		}
		//암호 일치여부 확인
		if (vForm.pwd.value != vForm.pwd2.value) {
			alert("암호가 다릅니다.\n확인 후 다시 입력하세요");
			vForm.pwd.value = "";
			vForm.pwd2.value = "";
			vForm.pwd.focus();
			return false;
		}
		alert(">>>>회원가입 요청합니다")
		vForm.action = "ex07_resp.jsp";
		vForm.submit();
	}
</script>
</head>
<body>
	<h1>회원가입</h1>
	<form name="frm">
		<fieldset>
		<legend>회원가입</legend>
		<p>이름 : <input type="text" name="name" value="홍길동"></p>
		<p>아이디 : <input type="text" name="id"></p>
		<p>암호 : <input type="password" name="pwd"></p>
		<p>암호확인 : <input type="password" name="pwd2"></p>
		<p>이메일 : <input type="text" name="email"></p>
		<p>취미:
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="게임">게임
			<input type="checkbox" name="hobby" value="영화">영화
			<input type="checkbox" name="hobby" value="독서">독서
		</p>
		<input type="button" value="회원가입" onclick="send_go()">
		<input type='reset' value="초기화">
		</fieldset>
	</form>
</body>
</html>