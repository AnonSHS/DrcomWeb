$(document).ready(function() {
	$.getJSON("LastLoginNoticeAction.action",
		function(data) {
			$("#title").text(data[0].fldtitle);
			$("#notice").text(data[0].fldmemo);
		});
		
	
});
