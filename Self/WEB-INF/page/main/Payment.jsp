<%@ page language="java" import="java.util.Properties" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-查询服务-交费情况</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/password.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/hong_query.js"></script>
		<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
	</head>
	<body style="display: none;">
	<div class="body2">
		<input type="hidden" value="2" id="leftflag"/>
		<div class="outbox">
			<!-- 页头 -->
			<div class="header"><img skinResource="images/logo/logo.gif" skin="true"/>
				<span class="skin">
					<a href="##">
						<img id="skinBtn" skinResource="images/skin.gif" skin="true" border="0" title="换肤"/>
					</a>
				</span>
			</div>
			<div id="skinSelector" class="skin_boxout">
				<div class="skin_boxin">
					<div id="skin_context" class="skin_context">
						<img src="images/loading.gif" title="加载中"/>
					</div>
				</div>
				<img id="currentSkin_icon" src="images/done-square.gif"/>
			</div>
			<!-- 内容 -->
			<div class="content_bg">
			<div class="content_top">
			<div class="content_bom">
				<!-- 左栏 -->
				<div class="leftbox">
					<jsp:include page="left.jsp"></jsp:include>　　<!-- 导入我的帐户页面 -->
				</div>
				<!-- 右栏 -->
				<div class="rightbox">
					<!-- 首页模块 -->
					<!-- 透明外边 -->
					<div class="t_boxout">
						<div class="banner_bg">
							<div class="banner_l">
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_mainQuery">查询服务</a> &gt; 交费情况</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
						 <div class="tabcontent" style="padding-top:30px;">						
								<s:form id="form" action="UserPayAction" method="post" theme="simple" namespace="/" target="_blank">
									<input type="hidden" name="type" value="1"/>
									<div class="row">
											<a id="crrdate" href="javascript:void(0);">当日</a>
											<a id="crrmonth" href="javascript:void(0);">本月</a></li>
									</div>								
									<div class="row">
											历史月份&nbsp;&nbsp;<s:select list="tableList" name="month" listKey="key" listValue="value" ></s:select>
											<%--<input type="button" id="btnM" value="查询"/>--%>
											<input id="btnM" type="button" class="but" value="查询">
									</div>								
									<div class="row">
											开始日期&nbsp;&nbsp;<input type="text" id="startDate" name="startDate" 
												onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}'})" readOnly="readOnly" class="Wdate"/>
											&nbsp;&nbsp;结束日期&nbsp;&nbsp;<input type="text" id="endDate" name="endDate" 
													onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'startDate\')}',maxDate:'%y-%M-%d'})" readOnly="readOnly" class="Wdate" />
											<%--<input type="button" id="btnD" value="查询"/>--%>
											<input id="btnD" type="button" class="but" value="查询">
									</div>								
									<div class="centerbut">
										<input type="button" name="backBtn" class="but" value="返回" onclick="location.href = 'nav_mainQuery'" /> 
									</div>								
								</s:form>
							</div>
						</div>
					</div>
					<div class="tips_bom2"></div>
				</div>
			</div>
			<!-- 中下 -->
			<div class="cenbom"></div>
		</div>
		</div>
		</div>
		<!-- 页脚 -->
		<div class="footer"><s:text name="copyright"/></div>
	</div>
	</body>
</html>