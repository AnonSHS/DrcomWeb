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
	
	$("#fldComplainText").formValidator( {
		onshow : "用5-300个字符详细描述您的故障情况",
		onfocus : "用5-300个字符详细描述您的故障情况",
		oncorrect : "输入正确"
	}).inputValidator( {
		min : 5,
		max : 300,
		onerror : "用5-300个字符详细描述您的故障情况"
	});
	
	$("#fldtitle").formValidator( {
		onshow : "用5-50个字符简单描述您的故障情况（汉字占两个字符）",
		onfocus : "用5-50个字符简单描述您的故障情况（汉字占两个字符）",
		oncorrect : "输入正确"
	}).inputValidator( {
		min : 5,
		max : 100,
		onerror : "用5-50个字符简单描述您的故障情况"
	});
	
	$("#fldcontactor").formValidator( {
		onshow : "联系人为必填项且不能超过50个字符",
		onfocus : "联系人为必填项且不能超过50个字符",
		oncorrect : "输入正确"
	}).inputValidator( {
		min : 1,
		max : 50,
		onerror : "联系人为必填项且不能超过50个字符"
	});
	
	$("#fldcontactphone").formValidator( {
		onshow : "联系电话为必填项且不能超过50个字符",
		onfocus : "联系电话为必填项且不能超过50个字符",
		oncorrect : "输入正确"
	}).inputValidator( {
		min : 1,
		max : 50,
		onerror : "联系电话为必填项且不能超过50个字符"
	});
})