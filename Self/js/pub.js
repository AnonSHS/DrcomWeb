$(function() {
	$.getJSON("refreshaccount?t="+Math.random(), function(json){
		//$(".account").text(json.note.welcome);
		$(".redtextl").text(json.note.leftmoeny);
		$(".service").text(json.note.service);
		$(".greentextl").text(json.note.status);
		
		if ($.trim($(".checkcode2").text())!=""){
			$(".checkcode1").hide();
		}
		
		if (json.note.onlinestate=="1"){
			$(".greentext20").hide();
		}else{
			$(".greentext21").hide();
		}
	});
	$("#logout").click(function(){
		var answer = confirm("确定要离开当前页面？");
		if (answer){
			window.location.href = "LogoutAction.action"; 
		}
	});
	$("[name='openOrStopNow']").click(function(){
		var status = $("#userStatus").val();
		var str = "";
		var url = "";
		if(status == "1"){//正常
			//2011/11/14 修改为：锁定--报停、解锁--复通
			str = "您现在的状态是：正常\n确定要将账号报停吗\?";
			url = "nav_selfstopNow";
		} else {//停机
			str = "您现在的状态是：停机\n确定要将账号复通吗\?";
			url = "nav_SelfReopenNow";
		}
		if(confirm(str)){
			window.location.href = url; 
		}
	});
	$(".menu li").removeClass();
	//$(".menu li:eq("+$("#leftflag").val()+")").addClass("now");
	$(".menu li:[serial='"+$("#leftflag").val()+"']").addClass("now");
});

function outofline(){
	var answer = confirm("确定要强制离线吗？");
	if (!answer){
		return; 
	}
	$.getJSON("outofline?t="+Math.random(), function(json){
		if(json.outmessage=="true"){
			$(".greentext20").show();
			$(".greentext21").hide();
			alert("强制离线成功!");
		}else{
			alert("强制离线失败!");
		}
	});
}