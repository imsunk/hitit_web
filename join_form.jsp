<%@ page errorPage="error.jsp" contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=3600000000"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>티켓모아 - 회원가입</title>
<!----   --->
<!--
<link rel="shortcut icon" href="img/favicon.ico"/>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/login.css">
-->
<!--<script type="text/javascript" src="http://sesangsokuro.cafe24.com/projectH/js/jquery-1.7.2.min.js"></script>-->
</head>
<body>
	<div id="wrapper">
		<div id="main_window">
			<div class="content">
				<form class="join_form" name="join_form" method="post" action="join_proc.jsp">
					<table summary="회원가입" class="regTB">
						<tr>
							<td>이메일</td>
							<td class="mid"><input type="text" id="email" name="email" required="required" /></td>
							<td>양식을 맞춰 주세요</td>
						</tr>
						<tr>
							<td>이름</td>
							<td class="mid"><input type="text" id="name" name="name" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td class="mid"><input type="text" id="nick" name="nick" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td class="mid"><input type="password" id="password" name="password" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>비밀번호확인</td>
							<td class="mid"><input type="password" id="password_chk" name="password_chk" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>연락처</td>
							<td class="mid"><input type="text" id="phone" name="phone" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>개인정보 이용 동의</td>
							<td class="mid"><input type="checkbox" id="personal_ok" name="personal_ok" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>문자 메세지 동의</td>
							<td class="mid"><input type="checkbox" id="message_ok" name="message_ok" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td>메일 동의</td>
							<td class="mid"><input type="checkbox" id="mail_ok" name="mail_ok" required="required" /></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td><button type="submit" id="btn_submit" class="btn_submit" onclick="javascript:return chk_form();">확인</button></td>
							<td></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$("#email")
			/*
			$("#btn_chk_id").bind("click", function(){
				chk_id_nick("id", $("#user_id").attr("value"));
			});
			$("#btn_chk_nick").bind("click", function(){
				chk_id_nick("nick", $("#user_nick").attr("value"));
			});
			*/
		});
		
		
		/*
		function chk_id_nick(type, obj){
			var post_data = "";
			if(type=="id") {
				post_data = "type=id&data="+obj;
			} else if(type=="nick") {
				post_data = "type=nick&data="+obj
			}
			
			$.ajax({
				type : "POST",
				url : "ajax/account_id_chk_ajax.jsp",
				data : post_data,
				success : function(response) {
					if(response == '\n\nSUCCESS') {
						alert("사용 가능합니다.")
					} else {
						alert("이미 존재합니다.");
					}
				},
				error : function() {
					alert("서버 접속에 실패했습니다. 잠시 후 다시 시도해주세요.");
				}
			});
		};
		*/
		
		/*
		function chk_form() {
			var id = $("#user_id").attr("value");
			var pw1 = $("#user_pw").attr("value");
			var pw2 = $("#user_pw_chk").attr("value");

			if(pw1 == pw2) {
				return true;
			} else {
				alert("입력한 비밀번호가 다릅니다.");
				return false;
			}
		};
		*/
	</script>
</body>
</html>
