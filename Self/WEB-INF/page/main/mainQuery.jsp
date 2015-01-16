<%@ page language="java" import="java.util.Properties,com.selfpackage.action.OpenFunctionAction" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-查询服务</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/index2.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
	</head>
	
	<%
		OpenFunctionAction openFunction = OpenFunctionAction.getOpenFunctionAction();
	%>
	
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; 查询服务</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<div class="iconlist">
							<!-- 2011/11/14 “修改个人资料” 改为“修改资料” -->
								<%if (openFunction.isSelectUserInfo()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_getUserInfo"><img skinResource="images/icon1.gif" title="修改资料" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_getUserInfo">个人资料</a></div>显示本人详细资料
									</div>
								<%} %>
								<!-- 2011/11/14 “修改个人密码” 改为“修改密码” -->
								<%if (openFunction.isSelectBill()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_monthPay"><img skinResource="images/icon2.gif" title="修改密码" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_monthPay">扣费账单</a></div>查询本人上网费用结算账单
									</div><!-- 2011/11/14 修改为：锁定--报停、解锁--复通 -->
								<%} %>
								<%if (openFunction.isSelectOperationLog()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_operatorLog"><img skinResource="images/icon3.gif" title="预约报停" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_operatorLog">业务办理记录</a></div> 查询本人业务办理记录
									</div>
								<%} %>
								<%if (openFunction.isSelectLoginLog()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_loginLog" ><img skinResource="images/icon5.gif" title="立即复通" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_loginLog">上网详单/details</a></div>查询本人上下网使用详单
									</div>
								<%} %>
								<%if (openFunction.isSelectCharge()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_Payment"><img skinResource="images/icon6.gif" title="预约套餐" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_Payment">交费情况</a></div>查询本人交费明细
									</div>
								<%} %>
							</div>
						</div>
					</div>
					<!-- 温馨提示 -->
					<div class="tips_bg"><!-- 背景 -->
						<div class="tips_top"><!-- 背景上图 -->
							<div class="tips_bom"><!-- 背景下图 -->
								<div class="tips_title">温馨提示：</div>
								<div class="tips_text">宽带自助服务系统为您提供如下功能：<br/>
									1. 查看最新的通知、公告消息；<br/>
									2. 自助查询个人资料、充值缴费、上网详单、扣费账单、业务办理等记录；<br/>
									3. 自助办理修改密码、个人资料变更、报停、复通、变更套餐及相关预约业务的申请等；<br/>
									4. 查看宽带产品的资费信息，方便您选用合适的套餐。<br/>
								</div>
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