<%@ page language="java" import="com.selfpackage.action.OpenFunctionAction" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>  

<%
	OpenFunctionAction openFunction = OpenFunctionAction.getOpenFunctionAction();
%>

<!-- 帐户信息 -->
<div class="info_bg"><!-- 背景 -->
	<div class="info_top"><!-- 背景上图 -->
		<div class="info_bom"><!-- 背景下图 -->
			<div class="info_title">帐户信息</div>
			<div class="info_text">
			<!-- 2011/11/14帐号更改为账号 -->
			账号：<span class="account">${ GLOBAL_SESSION_USER.fldusername }(${ GLOBAL_SESSION_USER.flduserrealname })</span><br>
			套餐：<span class="service"></span><br>
			余额：<span class="redtext"><span class="redtextl"></span></span> (<span class="urltext"><a href="nav_Rcard">快速充值</a></span>)<br>
			状态：<span class="greentext">
					<span class="greentextl"></span><input type="hidden" id="userStatus" value="${GLOBAL_SESSION_USER.flduseflag}"/>
				 </span>
				 &nbsp;&nbsp;&nbsp;<span class="greentext21">在线(<a href="#" onclick="outofline()">强制离线</a>)</span><span class="greentext20">离线</span><br>
			防伪信息：<span class="checkcode1"><a href="nav_changeUserInfo">未设置</a></span>
					 <span class="checkcode2">${GLOBAL_SESSION_USER.tblregisteconfig.fldcheckcode}</span>
			</div>
			<input type="button" id="logout" name="Submit" class="button" value="退 出"/>
		</div>
	</div>
</div>
<!-- 类目 -->
<div class="leftmenu_bg"><!-- 背景 -->
	<div class="leftmenu_bom"><!-- 背景下图 -->
		<div class="leftmenu_top"><!-- 背景上图 -->
			<ul class="menu">
				<li serial="0"><a href="nav_main">首页导航</a></li>
				<li serial="1"><a href="nav_webAd">通知公告</a></li>
				<%if (openFunction.isSelectFlag()) {%>
					<li serial="2"><a href="nav_mainQuery">查询服务</a></li>
				<%} %>
				<%if (openFunction.isBusinessFlag()) {%>
					<li serial="3"><a href="nav_business">业务办理</a></li>
				<%} %>
				<li serial="4"><a href="nav_GroupInfo">资费介绍</a></li>
				<li serial="5"><a href="nav_userComplain">自助报障</a></li>
			</ul>
		</div>
	</div>
</div>