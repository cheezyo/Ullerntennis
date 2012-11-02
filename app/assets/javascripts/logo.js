function change(id) {
	var s = document.getElementById(id);
	var num = Math.floor((Math.random()*4)+1);
	var pic;
	
	if(num == 1){
		pic = "https://dl.dropbox.com/u/7238474/Ullerntennisbilder/incourt2.png";
	}else if(num == 2){
		pic = "https://dl.dropbox.com/u/7238474/Ullerntennisbilder/incourt.png";
	}else if (num == 3){
		pic = "https://dl.dropbox.com/u/7238474/Ullerntennisbilder/incourt3.png";
	}else if(num == 4){
		pic = "https://dl.dropbox.com/u/7238474/Ullerntennisbilder/incourt4.png";
	}
	 document[id].src = pic;
}
