function mine(){
	var tmp = prompt("Enter size(m, n)", "4 5");
	var token = storage.split(" ");
	var storage = new Array(token[0]);

	for (var i = 0; i < token[1]; i++ ){
		tmp = prompt("Enter Mine");
		storage[i] = new Array(token[1]);
		storage[i] = tmp.split(" ");
	}

	result = new Array(token[0]);

	for (i = 0; i < token[1]; i++ ){
		result[i] = new Array(token[1]);
		
		for(j = 0; j < token[2]; i++){
			result[i][j] = result[i][j];
		}
	}

	for(i = 0; i < token[0]; i++){
		for(j = 0; j < token[1]; i++){
			if(storage[i] == '*'){
				result[i][j] = '*'
			}else{
				search(i, j);
			}	
		}
	}

	for(i = 0; i < token[0]; i++){
		for(j = 0; j < token[1]; i++){
			document.write(result[i][j]);
		}
		document.write('<br />');
	}
}

function search(i, j){
	var row = i;
	var col = j;

	if((result[i-1][j-1] != null) && (result[i-1][j-1] != '*')){
		result[i-1][j-1] = result[i-1][j-1] + 1;
	}
	if((result[i-1][j] != null) && (result[i-1][j] != '*')){
		result[i-1][j] = result[i-1][j] + 1;
	}
	if((result[i-1][j+1] != null) && (result[i-1][j+1] != '*')){
		result[i-1][j+1] = result[i-1][j+1] + 1;
	}

	if((result[i][j-1] != null) && (result[i][j-1] != '*')){
		result[i][j-1] = result[i][j-1] + 1;
	}
	if((result[i][j] != null) && (result[i][j] != '*')){
		result[i][j] = result[i][j] + 1;
	}
	if((result[i][j+1] != null) && (result[i][j+1] != '*')){
		result[i][j+1] = result[i][j+1] + 1;
	}

	if((result[i+1][j-1] != null) && (result[i+1][j-1] != '*')){
		result[i+1][j-1] = result[i+1][j-1] + 1;
	}
	if((result[i+1][j] != null) && (result[i+1][j] != '*')){
		result[i+1][j] = result[i+1][j] + 1;
	}
	if((result[i+1][j+1] != null) && (result[i+1][j+1] != '*')){
		result[i+1][j+1] = result[i+1][j+1] + 1;
	}
}
