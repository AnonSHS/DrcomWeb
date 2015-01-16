$(document).ready(function() {
	$.formValidator.initConfig( {
		formid : "form1",
		onerror : function(msg) {
			alert(msg)
		},
		onsuccess : function() {
			return true;
		}
	});

	$("#fldaccount").formValidator( {
		onshow : "请输入帐号",
		onfocus : "帐号不能为空",
		oncorrect : "帐号输入正确"
	}).inputValidator( {
		min : 1,
		onerror : "帐号不能为空,请确认"
	});

	$("#fldusername").formValidator( {
		onshow : "请输入用户名称",
		onfocus : "用户名称不能为空",
		oncorrect : "用户名称输入正确"
	}).inputValidator( {
		min : 1,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror : "两边不能有空符号"
		},
		onerror : "用户名称不能为空,请确认"
	});

	$("#fldinstalllocal").formValidator( {
		onshow : "请输入地址",
		onfocus : "地址不能为空",
		oncorrect : "地址输入正确"
	}).inputValidator( {
		min : 1,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror : "两边不能有空符号"
		},
		onerror : "地址不能为空,请确认"
	});

	$("#flduseridnumber").formValidator( {
		onshow : "请输入证件号码",
		onfocus : "请输入证件号码",
		oncorrect : "输入正确"
	}).regexValidator( {
		regexp : "intege",
		datatype : "enum",
		onerror : "输入不正确"
	});

	$("#fldcontactphone").formValidator( {
		onshow : "请输入您的联系电话",
		onfocus : "请输入您的联系电话",
		oncorrect : "联系电话输入正确"
	}).inputValidator( {
		min : 1,
		max : 50,
		onerror : "联系电话为必填项且不能超过50个字符"
	});
	
	$("#flduseraddress").formValidator( {
		onshow : "请输入账单地址",
		onfocus : "账单地址不能为空",
		oncorrect : "账单地址输入正确"
	}).inputValidator( {
		min : 1,
		empty : {
			leftempty : false,
			rightempty : false,
			emptyerror : "两边不能有空符号"
		},
		onerror : "账单地址不能为空,请确认"
	});
})