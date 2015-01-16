<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>留言显示</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="css/default/main.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	#problems {
		width: 600px;
		height: 300px;
		margin-left: 20px;
		margin-top: 30px;
		border: 1px solid #999;
	}
	</style>
  </head>
  
  <body style="display: none;">
    <div id="box">
		 <jsp:include page="top.jsp"></jsp:include><!-- 引入导航栏 -->	
     <div id="nav_location"><div id="locationtext" class="text">首页&nbsp;&gt;&nbsp;常见故障<span>${note}</span></div></div>
     <div id="content">
       <div id="left">
       		<jsp:include page="left.jsp"></jsp:include><!-- 引入左边导航 -->
       </div>
          <div id="right">
            <div id="problems">
                	<!-- 数据显示-->
                	<iframe src="nav_FAQList" width="100%" height="328px" frameborder="0"></iframe>
         	</div>        
        </div>
  </div>
  <div id="bottom"></div>
</div>
  </body>
</html>
