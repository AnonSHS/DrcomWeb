function loadimage() {
	var imgCode = document.getElementById('codeimage');
	imgCode.setAttribute('src', 'RandomCodeAction.action?randomNum=' + Math.random());
}