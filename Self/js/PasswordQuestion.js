$(document).ready(function() {
	$("#formTable tr:odd").addClass("tr2");
})

function check(){
	var password=$.trim($("#password").val());
		
	var passwordquestion1=$("#passwordquestion1").val();
	var passwordquestion2=$("#passwordquestion2").val();
	var passwordquestion3=$("#passwordquestion3").val();
	
	var fldanswer1=$.trim($("[name='tblpasswordanwser.fldanswer1']").val());
	var fldanswer2=$.trim($("[name='tblpasswordanwser.fldanswer2']").val());
	var fldanswer3=$.trim($("[name='tblpasswordanwser.fldanswer3']").val());
	
	var message="";
	if(password==null ||password==""){
		message+="请输入密码\n";
	}
	if(passwordquestion1==null){
		message+="请选择问题1\n";
	}
	if(passwordquestion2==null){
		message+="请选择问题2\n";
	}
	if(passwordquestion3==null){
		message+="请选择问题3\n";
	}
	if(passwordquestion1==passwordquestion2 || passwordquestion2 == passwordquestion3 || passwordquestion1 == passwordquestion3){
		message+="密码安全问题不能重复，请选择三个不同的问题\n";
	}
	if(fldanswer1==null ||fldanswer1==""){
		message+="请输入答案1\n";
	}
	if(fldanswer2==null ||fldanswer2==""){
		message+="请输入答案2\n";
	}
	if(fldanswer3==null ||fldanswer3==""){
		message+="请输入答案3\n";
	}
	
	if(message!=""){
		alert(message);
		return false;
	}
	return true;
}

function MD5Encrypt(id) {
	var psw = document.getElementById(id).value;
	var temp = psw.replace(/(^\s*)|(\s*$)/g, "");
	if (temp == "" || temp == null) return;
	drcom.Cipher(temp, function(data) {
		document.getElementById(id).value = data;
	});
}