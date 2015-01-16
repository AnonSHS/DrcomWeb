<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>套餐变更</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link rel="stylesheet" type="text/css" href="css/default/main.css">
	<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
	<script language="javascript" type="text/javascript" src="My97DatePicker4.7/WdatePicker.js"></script>
	
	<style type="text/css">

	#AddMessage {
		width: 600px;
		height: 300px;
		margin-left: 15px;
		margin-top: 20px;
		border: 1px solid #999;
		font-family: "宋体", Times, serif;
		font-size:13px;
		color:#186777;
	}
	#querycommit {	
		border: 1px solid #999;
		background-color: #CCC;
		width: 55px;
	}

	</style>
  </head>
  
  <body style="display: none;">
    <div id="box">
		 <jsp:include page="top.jsp"></jsp:include><!-- 引入导航栏 -->	
     <div id="nav_location"><div id="locationtext" class="text">首页&nbsp;&gt;&nbsp;办理业务&nbsp;&gt;&nbsp;套餐变更<span>${note}</span></div></div>
     <div id="content">
       <div id="left">
       		<jsp:include page="left.jsp"></jsp:include><!-- 引入左边导航 -->
       </div>
          <div id="right">
            <div id="AddMessage">
                <br/>
               &nbsp;&nbsp;&nbsp; 请选择一个套餐，我们会根据您选择的套餐为您的账号作出修改，这是立即生效的。<br/><br/>
               &nbsp;&nbsp;&nbsp;&nbsp;您当前使用的套餐是：<s:property value="servicename"/>
            <!--&nbsp;&nbsp;&nbsp;&nbsp;您当前使用的资费是：<s:property value="groupname"/>--> 
               <form action="selfserviceAction" method="post"><br/>
                  &nbsp;&nbsp;&nbsp;选择套餐：
                  <%--<input class="Wdate" type="text" name="startDate" id="d4311" onFocus="WdatePicker({maxDate:'',readOnly:true})"/>
                  <s:select list="servicedefaultList" listValue="flddefaultname" listKey="fldid" name="serid" theme="simple"></s:select>
                 --%>
                 <select name="serid" id="serid" style="width:250px;">
                                <s:iterator value="servicedefaultList" var="service">
                                  <option value="<s:property value="#service[0]"/>"><s:property value="#service[1]"/>-----描述：<s:property value="#service[3]"/></option> 
                                </s:iterator> 
                             </select>
                   &nbsp;&nbsp;<input name="" type="submit" value="提交" id="querycommit"/>
               </form>
            </div>        
        </div>
  </div>
  <div id="bottom"></div>
</div>
  </body>
</html>
