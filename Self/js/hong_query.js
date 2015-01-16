$(document).ready(function(){
	$("#crrdate").click(function(){
		$("[name='type']").attr("value", "1");	//当天
		$("#form").submit();
	});
	$("#crrmonth").click(function(){
		$("[name='type']").attr("value", "2");	//当月
		$("#form").submit();
	});
	$("#btnM").click(function(){
		$("[name='type']").attr("value","3");	//按月
		$("#form").submit();
	});
	$("#btnD").click(function(){
		$("[name='type']").attr("value","4");	//按日期
		$("#form").submit();
	});
	
	$.getJSON("getdate", function(json){
		var date =json.serverDate;
		//$("#startDate").attr("value", date.getFullYear() + "-" + (date.getMonth() + 1) + "-1");
		//$("#endDate").attr("value", date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate());
		$("#startDate").attr("value", date.substring(0,8)+"01");
		$("#endDate").attr("value", date);
	});
});