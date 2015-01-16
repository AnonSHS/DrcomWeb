$(document).ready(function() {
	$("#formTable tr:odd").addClass("tr2");
	//$("#formTable tr:even").addClass("");
	
	$.formValidator.initConfig( {
		formid : "form1",
		onerror : function(msg) {
			alert(msg)
		},
		onsuccess : function() {
			return true;
		}
	});
	$("#fldcheckcode").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	}).inputValidator( {
		min : 5,
		max : 10,
		onerror : "防伪信息必须是5-10个字符,请确认"
	})
	$("#userphone").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	}).inputValidator( {
		min : 1,
		onerror : "联系电话1不能为空,请确认"
	}).regexValidator( {
		regexp : "tel",
		datatype : "enum",
		onerror : "联系电话1格式不正确"
	});
	$("#contactphone").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	}).inputValidator( {
		min : 1,
		onerror : "联系电话2不能为空,请确认"
	}).regexValidator( {
		regexp : "tel",
		datatype : "enum",
		onerror : "联系电话2格式不正确"
	});
	$("#idnumber").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	})
	$("#email").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	}).regexValidator( {
		regexp : "email",
		datatype : "enum",
		onerror : "电子邮箱输入有误"
	});
	$("#usercompany").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	}).inputValidator( {
		min : 1,
		onerror : "布线资料不能为空,请确认"
	});
	$("#installlocal").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	}).inputValidator( {
		min : 1,
		onerror : "安装地址不能为空,请确认"
	});
	$("#useraddress").formValidator( {
		empty : true ,
		onshow : null,
		onfocus : null,
		oncorrect : null,
		onempty : null
	})
})

function check(){
	var message="";
	$("#formTable tr").each(function(){
		var desc = $.trim($(this).find("td:eq(0)").text());
		if (desc.length>=1){
			if(desc.substring(desc.length-1,desc.length)=="*"){
				var input=$(this).find("td:eq(1)").find("input");
				if(input.val()==null || $.trim(input.val())==""){
					message+=desc.replace("*","")+"为必填项!\r";
				}
			}
		}
	});
	
	if (message!=""){
		alert(message);
		return false;
	}
	return true;
}