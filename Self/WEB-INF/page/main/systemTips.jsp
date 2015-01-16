<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-提示</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/error.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
	</head>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; 系统提示</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<center>
								<div class="tabcontent">
									<!-- 系统提示-->
									<div class="titlebanner">[系统提示]</div>
									<div class="errortext">
										<div class="efont">
											<s:property value="systemTip.message" />
										</div>
									</div>
									<div class="centerbut">
										<s:if test="#request.tag==1">
											<a href="##" onclick="javascript: window.location.href = 'nav_changeMessageActionContinute';">
												<!--<img src="images/but_submit.gif" border="0">-->
												<input type="submit" class="but" value="提交" />
											</a>
											<a href="##" onclick="javascript: window.location.href = '<s:property value='systemTip.url'/>'">
												<!--<img src="images/back.gif" border="0">-->
												<input type="button" name="backBtn" class="but" value="返回"/>
											</a>
										</s:if>
										<s:else>
											<a href="<s:property value='systemTip.url'/>" onclick="javascript: window.location.href = '<s:property value='systemTip.url'/>'">
												<input type="button" name="backBtn" class="but" value="返回"/>
											</a>
										</s:else>
									</div>
								</div>
							</center>
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