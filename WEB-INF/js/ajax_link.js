
$(window).ready(function(){
	alert('a');
	var aArr = $('#menu a');
	for(var a in aArr){
		console.log(aArr[a]);
	}
});

.click(function(this){bind_links(this)});
function bind_links(alink){ 
	alert(alink);
	$.ajax({  
		type: "post",
		//data: "member_id="+$("#"+member_id).attr('value')+"&member_password="+$("#"+member_password).attr('value') ,
		dataType: "text",  
		url: "http://hitit.chonbuk.ac.kr:8080/page/contents_hitit.jspf",
		success: function(text) {  
			$('#contents').html(text);
		},   
		error: function(xhr, status, error) {  
			console.log("bind_links() error");
		}  
	});  
}