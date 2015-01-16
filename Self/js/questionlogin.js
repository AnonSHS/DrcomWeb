$(document).ready(function() {
	loadimage();
	//显示密码保护问题
	$("#question1").text($("#passwordquestion1").find("option:selected").text());
	$("#question2").text($("#passwordquestion2").find("option:selected").text());
	$("#question3").text($("#passwordquestion3").find("option:selected").text());
})

function check(){
	var passwordquestion1=$("#passwordquestion1").val();
	var passwordquestion2=$("#passwordquestion2").val();
	var passwordquestion3=$("#passwordquestion3").val();
	
	var fldanswer1=$.trim($("[name='tblpasswordanwser.fldanswer1']").val());
	var fldanswer2=$.trim($("[name='tblpasswordanwser.fldanswer2']").val());
	var fldanswer3=$.trim($("[name='tblpasswordanwser.fldanswer3']").val());
	
	var code=$.trim($("#code").val());
	
	var message="";
	if(passwordquestion1==null){
		message+="请选择问题1\n";
	}
	if(passwordquestion2==null){
		message+="请选择问题2\n";
	}
	if(passwordquestion3==null){
		message+="请选择问题3\n";
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
	if(code==null ||code==""){
		message+="请输入验证码\n";
	}
	
	if(message!=""){
		alert(message);
		return false;
	}
	return true;
}