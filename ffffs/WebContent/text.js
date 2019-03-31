function text() {
	var text = document.getElementById("input_text").value;
	var nedan = document.getElementById("nedan");
	nedan.innerHTML = text; // 내용입력
	nedan.style.color = document.getElementById("colorset").value;// 색
	var fontSize = document.getElementById("sizeset").value * 100;// 크기 
	nedan.style.fontSize = fontSize + "%";
	bugaop(nedan, fontSize);//추가옵션
}
function bugaop(nedan, fontSize) {
	var settei = document.getElementsByName("settei");
	var hiritu = 90;//100으로 하면 축소떄 사라짐;
	nedan.style.textDecorationLine = null;
	nedan.style.fontWeight = null;
	nedan.style.fontStyle = null;
	nedan.style.textTransform = null;
	for (var i = 0; i < settei.length; i++) {
		if (!(settei[i].checked)) {
			continue;
		}
		var sentaku = settei[i].value;
		switch (sentaku) {
		case "line-through":
			nedan.style.textDecorationLine = sentaku;
			break;
		case "larger":
			fontSize += hiritu;
			nedan.style.fontSize = fontSize + "%";
			break;
		case "smaller":
			fontSize -= hiritu;
			nedan.style.fontSize = fontSize + "%";
			break;
		case "bold":
			nedan.style.fontWeight = sentaku;
			break;
		case "italic":
			nedan.style.fontStyle = sentaku;
			break;
		case "sup":
		case "sub"://<sub></sub>형식이 되도록
			nedan.innerHTML = "<" + sentaku + ">" + nedan.innerHTML + "</"+ sentaku + ">";
			break;
		case "lowercase":
			nedan.style.textTransform = sentaku;
			break;
		case "uppercase":
			nedan.style.textTransform = sentaku;

		}

	}

}