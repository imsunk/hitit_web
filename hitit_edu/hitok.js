function getData(name,msg) { 
	$.ajax({  
		type: "get",  
		dataType: "xml",  
		url: "http://hitit.chonbuk.ac.kr:8080/hitit_edu/room.jsp"+"name="+name+"&msg="+msg,
		success: function(xml) { 
			var result = '';
			var albumNum = $(xml).find('hitok').find('hitok_item').length;
			if( albumNum  > 0) {
				$(xml).find('hitok').find('hitok_item').each( function() { 
				result += $(this).find('msg').text()
				result += ' : ';
				result += $(this).find('name').text() 
				result += '<br />';
				});
				$('#result').html(result);
				console.log(result);
			} else { 
				$('#album .slide_controller').html("");
				$('#album .slide_controller').css({'width':'145px'}).append(msgError);
			}
			//현재 페이지와 페이지수를 초기화
		},   
		error: function(xhr, status, error) {  
			//alert("오류가 발생했습니다. 잠시후 다시 시도해주세요"); 
			//$('#album .slide_controller').css({'width':'145px'}).html(msgError);
		}  
	});  
}
