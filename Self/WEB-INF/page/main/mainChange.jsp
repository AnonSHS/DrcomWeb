<%@ page language="java" import="java.util.Properties,com.selfpackage.action.OpenFunctionAction" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-业务办理</title>
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
		<input type="hidden" value="3" id="leftflag"/>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; 业务办理</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<div class="iconlist">
								<!-- 修改个人资料--><!-- 2011/11/14 “修改个人资料” 改为“修改资料” -->
								<%if (openFunction.isBusinessUserInfo()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_changeUserInfo"><img skinResource="images/icon1.gif" title="修改资料" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_changeUserInfo">修改资料</a></div>修改详细资料
									</div>
								<%} %>
								<!-- 修改密码--><!-- 2011/11/14 “修改个人密码” 改为“修改密码” -->
								<%if (openFunction.isBusinessPassword()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_changePsw"><img skinResource="images/icon2.gif" title="修改密码" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_changePsw">修改密码</a></div>修改您宽带账号的密码
									</div>
								<%} %>
								<!-- 2011/11/14 修改为：锁定--报停、解锁--复通 -->
								<!-- 预约报停-->
								<%if (openFunction.isBusinessStopOpen()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_selfStopReopen"><img skinResource="images/icon3.gif" title="预约报停" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_selfStopReopen">预约报停/复通</a></div>在预约日的次日凌晨自动报停/复通账号
									</div>
								<%} %>
								<!-- 立即复通-->
								<%if (openFunction.isBusinessNowStopOpen()) {%>
									<div class="iconinfo"><span class="fl"><a href="#" name="openOrStopNow"><img skinResource="images/icon5.gif" title="立即复通" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="#" name="openOrStopNow">立即报停/复通</a></div>立即将自己的账号报停/复通
									</div>
								<%} %>
								<!-- 预设限额-->
								<%if (openFunction.isBusinessMaxUser()) {%>
									<%--<div class="iconinfo"><span class="fl"><a href="nav_installmentflag"><img skinResource="images/icon6.gif" title="预约套餐" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_installmentflag">预设限额</a></div> 预设最高流量计费金额（不含套餐费）
									</div>--%>
								<%} %>
								<!-- 预约套餐-->
								<%if (openFunction.isBusinessGroup()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_servicedefaultbook"><img skinResource="images/icon6.gif" title="预约套餐" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_servicedefaultbook">预约套餐</a></div>预约选择您下月将要使用的新套餐
									</div>
								<%} %>
								<%if (openFunction.isBusinessCharge()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_Rcard"><img skinResource="images/icon7.gif" title="充值卡充值" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_Rcard">充值卡充值</a></div>使用充值卡为您的账号充值
									</div>
								<%} %>
								<%if (openFunction.isBusinessPassQues()) {%>
									<div class="iconinfo"><span class="fl"><a href="nav_Question"><img skinResource="images/icon9.gif" title="密码安全问题" border="0" skin="true" /></a></span>
										<div class="bigfont"><a href="nav_Question">设置密码保护</a></div>通过密码保护可以重置密码
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