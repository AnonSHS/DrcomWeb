<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>公告信息</title>
<link href="css/default/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/nav_show.js"></script>
<style type="text/css">
<!--
#right #publicMsn {
	margin-top: 25px;
	width: 600px;
}
#right #publicMsn ul {
	list-style-type: decimal;
}
#right #publicMsn ul li {
	margin-bottom: 8px;
}
dt dd{
	font-family: "宋体", sans-serif;
	font-size: 14px;
	color: #333;
}
-->
</style>
</head>

<body style="display: none;">
<div id="box">
		 <jsp:include page="top.jsp"></jsp:include><!-- 引入导航栏 -->	
     <div id="nav_location"><div id="locationtext" class="text">首页导航</div></div>
     <div id="content">
       <div id="left">
       		<jsp:include page="left.jsp"></jsp:include><!-- 引入左边导航 -->
       </div>
       <div id="right">
            <div id="publicMsn">
            	<!--
            	<s:iterator value="lastNoticesList">
                <ul>
                     <li><s:property value="fldtitle"/></li>
                     <li><s:property value="fldmemo"/></li>
                     <li><s:date name="fldcreatedate" format="yyyy-MM-dd"/></li>
                </ul>
                </s:iterator>
            	
            	-->
            	<dl>
            		<s:iterator value="lastNoticesList">
            		<dt><s:property value="fldtitle" /></dt>
            		<dd><s:property value="fldmemo" /></dd>
            		<dd><s:date name="fldcreatedate" format="yyyy-MM-dd" /></dd>
            		</s:iterator>
            	</dl>
            	
            </div>
                   
                   
       </div>
  </div>
  <div id="bottom"></div>
</div>
</body>
</html>