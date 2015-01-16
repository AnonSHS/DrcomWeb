function confirmforward(str,url) {
  var answer = confirm(str);
  if (answer){
	  window.location.href = url; 
  }
}