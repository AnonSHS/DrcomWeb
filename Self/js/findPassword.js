$(document).ready(function() {
	loadimage();
	
	$.formValidator.initConfig( {
		formid : "form1",
		onerror : function(msg) {
			alert(msg)
		},
		onsuccess : function() {
			return true;
		}
	});

	$("#fldusername").formValidator( {
		onshow : "请输入帐号",
		onfocus : "帐号不能为空",
		oncorrect : "帐号输入正确"
	}).inputValidator( {
		min : 1,
		onerror : "帐号不能为空,请确认"
	});

	$("#flduseridnumber").formValidator( {
		onshow : "请输入证件号码",
		onfocus : "请输入证件号码",
		oncorrect : "输入正确"
	}).inputValidator( {
		min : 1,
		onerror : "证件号码不能为空,请确认"
	});

	$("#flduseremail").formValidator( {
		onshow : "请输入电子邮箱",
		onfocus : "请输入电子邮箱",
		oncorrect : "输入正确"
	}).regexValidator( {
		regexp : "email",
		datatype : "enum",
		onerror : "电子邮箱输入不正确"
	});
	
	$("#radomcode").formValidator( {
		onshow : "请输入验证码",
		onfocus : "验证码不能为空",
		oncorrect : "验证码输入正确"
	}).inputValidator( {
		min : 1,
		onerror : "验证码不能为空,请确认"
	});
})