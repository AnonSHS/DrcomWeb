<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<style type="text/css">
#tips {
	background-image: url(images/systemtip.gif);
	background-repeat: no-repeat;
	height: 220px;
	width: 540px;
	margin-top: 25px;
	margin-right: auto;
	margin-left: auto;
}
#texttip {
	margin-top: 80px;
	margin-left: 50px;
	font-size: 12px;
}
 #tips #texttip ul {
	list-style-type: none;
}
#tips #texttip ul li {
	padding-bottom: 7px;
	text-align:center;
}
</style>
</head>
<body style="display: none;">
	<div id="tips">
    	<br style="line-height:0;"/> 
        <div id="texttip">
        <ul>
        	<li><p><s:property value="systemTip.message" /></p></li>
        </ul>
        </div>
    </div>
  </body>
</html>