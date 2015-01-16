<%@ page language="java" import="java.util.Properties" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-资费介绍</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link rel="stylesheet" type="text/css" skinResource="css/userGroup.css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
	</head>
	<body style="display: none;">
	<div class="body2">
		<input type="hidden" value="4" id="leftflag"/>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; 资费介绍</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<div class="tarifftitle">
								<font class="bigfont">校园网收费标准</font>
								<br>
								（字[2011]1号文件规定）
							</div>
							<center>
								<table class="tarifftable" border="0" cellspacing="0"	cellpadding="0">
									<tr class="headbanner">
										<td align="center">项目名称</td>
										<td align="center">类型</td>
										<td align="center">收费标准</td>
										<td align="center">备注</td>
									</tr>
									<tr>
										<td colspan="4" class="secondbanner">基本费</td>
									</tr>
									<tr>
										<td class="t_l">端口费</td>
										<td class="t_l">&nbsp;</td>
										<td class="t_l">400元/端口</td>
										<td class="t_r">新端口启用时收取，学生免收。</td>
									</tr>
									<tr>
										<td class="t_l">开户费</td>
										<td class="t_l">&nbsp;</td>
										<td class="t_l">100元/帐户</td>
										<td class="t_r">学生减半</td>
									</tr>
									<tr>
										<td rowspan="3" class="t_l">月租费</td>
										<td class="t_l">学生</td>
										<td class="t_l">10元/月</td>
										<td class="t_r">限6G流量</td>
									</tr>
									<tr>
										<td class="t_l">教工</td>
										<td class="t_l">20元/月</td>
										<td class="t_r">限10G流量</td>
									</tr>
									<tr>
										<td class="t_l">临时帐户</td>
										<td class="t_l">30元/月</td>
										<td class="t_r">限6G流量</td>
									</tr>
									<tr>
										<td colspan="4">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="4" class="secondbanner">超额计费</td>
									</tr>
									<tr>
										<td rowspan="9" class="t_l">流量费</td>
										<td rowspan="3" class="t_l">学生</td>
										<td class="t_l">20元/15G</td>
										<td rowspan="9" class="t_r">
											1.各档计费标准内，均含月基本费。
											<br>
											2.超出部分按0.005元/M计费。
											<br>
											3.各档每人每月原则上使用流量最多不超过100GB。
											<br />
											4.半月费用处理规则说明:
											<br />
											每月20日以后启用扣月租一半，当月基本用量也相应减半；即 当月无月租扣费账单且20日以后（不含20号）启用，复通，转组
											出账则扣一半月租 ，基本用量也相应减半 例 您的套餐组为 10元包6G套餐 账号在
											20日以后（不含20号）启用则只需扣除半月月租（5元） ， 基本用量相应减半（3G)超过3G用量则按超限流量规则处理
										</td>
									</tr>
									<tr>
										<td class="t_l">40元/30G</td>
									</tr>
									<tr>
										<td class="t_l">70元/45G</td>
									</tr>
									<tr>
										<td rowspan="3" class="t_l">教工</td>
										<td class="t_l">30元/15G</td>
									</tr>
									<tr>
										<td class="t_l">50元/30G</td>
									</tr>
									<tr>
										<td class="t_l">80元/45G</td>
									</tr>
									<tr>
										<td rowspan="3" class="t_l">临时帐户</td>
										<td class="t_l">40元/15G</td>
									</tr>
									<tr>
										<td class="t_l">60元/30G</td>
									</tr>
									<tr>
										<td class="t_l">90元/45G</td>
									</tr>
								</table>
								<div style="width: 100%; text-align: center;">
									<!--<img title="返回" src="images/back.gif"
										onclick="javascript:history.go(-1)"
										style="cursor: pointer;">-->
									<input type="button" name="backBtn" class="but" value="返回" onclick="history.go(-1)" />
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