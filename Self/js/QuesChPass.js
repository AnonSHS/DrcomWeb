function MD5Encrypt(id) {
	var psw = document.getElementById(id).value;
	var temp = psw.replace(/(^\s*)|(\s*$)/g, "");
	if (temp == "" || temp == null) return;
	drcom.Cipher(temp, function(data) {
		document.getElementById(id).value = data;
	});
}

function check() {
	var maxlenght=$("#maxlenght").text();
	var A=$("#A").val();
	var B=$("#B").val();
	
	var temp = A.replace(/(^\s*)|(\s*$)/g, "");
	if(temp == "" || temp == null){
	     alert("请输入新密码！");
	     $("#A")[0].focus();    
	     return false;  
	}
	if(A.length > maxlenght+1 || A.length < 7){
	    alert("请使用6-"+maxlenght+"位长度的密码！");
	    $("#A")[0].focus();     
	    return false;  
	}
	temp = B.replace(/(^\s*)|(\s*$)/g, "");
	if(temp == "" || temp == null){
		alert("请再次输入新密码！");
		$("#B")[0].focus();    
	    return false;  
	}
	if(A!=B){
	    alert("新密码两次输入不正确！");
	    $("#A")[0].focus();     
	    return false;  
	}
}