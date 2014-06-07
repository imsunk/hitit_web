<%@ page errorPage="error.jsp" contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %><!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>전북대 웹동아리 Hit IT</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/index.css">
		<link rel="stylesheet" href="css/menu.css">
		<jsp:include page="./templete/script.jspf" />

		<script type="text/javascript">
			$(window).ready(function(){
				link_match("ul#menu li a","#contents");
				link_match("#contents a","#contents");
			});
			function link_match(source, target){ // css selector
				var recentArr = $(source);
				for(var i = 0 ; i < recentArr.length ; i++){
					var tmp = $(recentArr[i]);
					if(tmp.attr('href').toLowerCase().indexOf("javascript") >= 0){
						console.log(tmp.attr('href').toLowerCase().indexOf("javascript"));
					} else {
						tmp.unbind('click');
						tmp.bind('click',
							function(){
								console.log(this);
								$.ajax({  type: "post",	dataType: "html", url: this,	
									success: function(text) {  
										$(target).fadeOut('fast',function(){
											$(target).html(text);
											$(target).fadeIn('fast');
											link_match(source, target);
										});
									},   
									error: function(xhr, status, error) {  
										console.log("ajax_alink() error : "+source);
									}
								});  
								return false;
							}
						);
					}
				}
			}

		/* 	function onPopup(){
			    popup = window.open('http://hitit.chonbuk.ac.kr:8080/unicorn3/article/notice/136263307945201', '공지사항','width=600,height=600,scrolling=no, scrollbars=no');
			    popup.focus();
			}
			onPopup(); */
		</script>
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="./templete/header.jspf" />
			<jsp:include page="./templete/navigator_ajax.jspf" />
			<div id="contents">
				<div id="board">
					<div id="board_left">
						<jsp:include page="board/board_list_recent.jsp" flush="true">
							<jsp:param name="category" value="xe" />
						</jsp:include>
						<jsp:include page="board/board_list_recent.jsp" flush="true">
							<jsp:param name="category" value="knowhow" />
						</jsp:include>
					</div>
					<div id="board_mid">
						<jsp:include page="board/board_list_recent.jsp" flush="true">
							<jsp:param name="category" value="group3" />
						</jsp:include>
						<jsp:include page="board/board_list_recent.jsp" flush="true">
							<jsp:param name="category" value="notice" />
						</jsp:include>
					</div>
					<jsp:include page="./page/contents_index.jspf" />
				</div>
				<div id="contest">
					<a href="./chat/chat.jsp" data-role="button">채팅방 1 준비중</a><br />
					<a href="./member/joinForm.jsp">회원가입 폼</a><br />
					<a href="./member/loginForm.jsp">회원로그인 폼</a><br />
					<a href="./member/member_info.jsp">회원사용자정보</a><br />
					<a href="./member/member_list.jsp">회원목록</a><br />
				</div>
			</div><!--div contents-->
			<jsp:include page="./templete/footer.jspf" />
			<jsp:include page="./templete/banner.jspf" />
		</div>
	</body>
</html>
