function prob_execute1(){
	var reg = new Array(10);
	var ram = $('#input').val().split('\n');
	var pc = 0, count = 0;
	var mod100, mod10, mod1;	
	var output_tmp="", end = false;
	
	for(var i = 0; i < reg.length; i++){
		reg[i] = 0;
	}
	
	for(pc = 0; (pc < ram.length) && !end; pc++){
		//console.log(pc);
		
		mod100 = Math.floor(ram[pc] / 100);
		mod10 = Math.floor((ram[pc] % 100) / 10);
		mod1 = Math.floor((ram[pc] % 100) % 10);
		
		switch(mod100){
		case 1:
			end = true;
			break;
		case 2:
			reg[mod10] = mod1;
			break;
		case 3:
			reg[mod10] = reg[mod10] + mod1;
			break;
		case 4:
			reg[mod10] = reg[mod10] * mod1;
			break;
		case 5:
			reg[mod10] = reg[mod1];
			break;
		case 6:
			reg[mod10] = reg[mod10] + reg[mod1];
			break;
		case 7:
			reg[mod10] = reg[mod10] * reg[mod1];
			break;
		case 8:
			reg[mod10] = ram[reg[mod1]];
			break;
		case 9:
			ram[reg[mod1]] = reg[mod10];
			break;
		case 0:
			if(reg[mod1] != 0) pc = reg[mod10] - 1;
			//console.log(pc);
			break;
		}
			
		if(reg[mod10] > 999){
			reg[mod10] = reg[mod10] % 1000;
		}
		
		count++;
	}
	
	for(var i = 0; i < reg.length; i++){
		output_tmp += reg[i] + "   ";
	}
	
	output_tmp += count;
	
	$('#output').text(output_tmp);
}