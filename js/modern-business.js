/*------------------------------래선수정------------------------------*/

function checkId() {
//	alert("function in "+ id);
	var id = $('#inputId').val();
	$.ajax({
		url : 'http://hitit.jbnu.ac.kr:8080/idCheck.me',
		type : 'POST',
		data : {
			"id" : id
		},
		dataType : 'html',
		success : function(data) {
//			alert(data); // 결과 텍스트를 경고창으로 보여준다.
			if (data == -1) {
				$('.checkedBox').html("You can't use this name");
				setTimeout("makehiddent()", 1000 * 2);
                                } else if(data == 1){
				$('.checkedBox').html("Good");
				setTimeout("makehiddent()", 1000 * 2);
			}
		}
	});
}


function joinChk() {
	var check = document.getElementById('joinForm');

	if (check.id.value=="") {
		alert("아이디를 입력하세요");
		check.member_id.focus();
		return false;
	}

	if (check.pw.value=="") {
		alert("비밀번호를 입력하세요");
		check.member_password.focus();
		return false;
	}

	if (check.major.value == "") {
		alert("전공을 입력하세요");
		check.major.focus();
		return false;
	}

	if (check.name.value == "") {
		alert("이름을 입력해 주세요");
		check.name.focus();
		return false;
	}

	if (check.email.value == "") {
		alert("주민등록번호를 입력하세요");
		check.email.focus();
		return false;
	}
	check.submit();
}
/* 폼체크를 모두 통과하면 폼을 submit 한다. */ 
/*------------------------------래선수정 끝------------------------------*/


// Activates the Carousel
$('.carousel').carousel({
  interval: 5000
})

// Activates Tooltips for Social Links
$('.tooltip-social').tooltip({
  selector: "a[data-toggle=tooltip]"
})

// bind

$('#loginForm').ready(function () {
	var login =  function (e) {
		var id = document.getElementById("id").value;
		var pw = document.getElementById("pw").value;
		if(e.keyCode==13){
			$.ajax({
				url: "http://hitit.chonbuk.ac.kr:8080/hitit_w/ajax_login.jsp",
				type: "POST",
				data: { "id": id , "pw":pw },   
				dataType: "text",
				contentType: "application/text; charset=utf-8",
				success: function (response) {
					if(response == 1){
						console.log("로그인 성공");
						$("#loginForm").parent()[0].innerHTML = "<a href>"+ response+" 님이 로그인 하셨습니다. [ 내 정보 ]";
					} else {
						console.log("로그인 실패");
					}
				},
				error: function (response) {
					console.log("통신자체가 안됨 서버에러");
				}
			});
		}
	}

	$("#id").bind("keypress", login);
	$("#pw").bind("keypress", login);

});

function modifyboard(){
	modifyform.submit();
}

function replyboard(){
	boardform.submit();
}

function addboard(){
	boardform.submit();
}




function layer_open(el){

	var temp = $('#' + el);
	var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수

	if(bg){
		$('.layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
	}else{
		temp.fadeIn();
	}

	// 화면의 중앙에 레이어를 띄운다.
	if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
	else temp.css('top', '0px');
	if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
	else temp.css('left', '0px');

	temp.find('a.cbtn').click(function(e){
		if(bg){
			$('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
		}else{
			temp.fadeOut();
		}
		e.preventDefault();
	});

	$('.layer .bg').click(function(e){	//배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
		$('.layer').fadeOut();
		e.preventDefault();
	});

}		

