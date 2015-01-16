<%@ page language="java" import="java.util.Properties" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-个人详细资料</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/information.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_mainQuery">查询服务</a> &gt; 个人资料</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							
                          <div class="tabcontent">
							<div class="titlebanner">个人资料</div>
							<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="profile">
								<tr>
									<td class="t_l">余额（元）</td>
									<td class="t_r1" >
										&nbsp;
										<font class="redtext">
											<s:text name="global.format.money">
												<s:param value="user.fldleftmoney"/>
											</s:text>
										</font>
									</td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr class="tr2">
									<td class="t_l">本月时长（分钟）</td>
									<td class="t_r1">
										&nbsp;
										<s:text name="global.format.min">
											<s:param value="user.fldusetime"/>
										</s:text>
									</td>
									<td class="t_r2">&nbsp;</td>
							  </tr>
							  <tr>
									<td class="t_l">本月流量（MB）</td>
									<td class="t_r1">
										&nbsp;
										<s:text name="global.format.flow">
											<s:param value="user.flduseflow"/>
										</s:text>
									</td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr class="tr2">
									<td class="t_l">时长/流量计费（元）</td>
									<td class="t_r1" >
										&nbsp;
										<s:text name="global.format.money">
											<s:param value="user.fldusemoney"/>
										</s:text>
									</td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr>
									<td class="t_l">用户类别</td>
									<td class="t_r1">&nbsp;<s:property value="user.fldbandcardid"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<%--<tr class="tr2">
									<td class="t_l">学院/单位</td>
									<td class="t_r1">&nbsp;<s:property value="user.fldbandcardid"/></td>
									<td class="t_r2">&nbsp;</td>
							  </tr>--%>
							  <%--<tr>
									<td class="t_l">年级</td>
									<td class="t_r1">&nbsp;<s:property value="user.fldcmbrand"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>--%>
								<tr class="tr2">
									<td class="t_l">安装地址</td>
									<td class="t_r1">&nbsp;<s:property value="user.fldinstalllocal"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr>
									<td class="t_l">布线资料</td>
									<td class="t_r1">&nbsp;<s:property value="user.fldusercompany"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr class="tr2">
									<td class="t_l">联系电话1</td>
									<td class="t_r1">&nbsp;<s:property value="user.flduserphone"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr>
									<td class="t_l">联系电话2</td>
									<td class="t_r1">&nbsp;<s:property value="user.fldcontactphone"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr class="tr2">
									<td class="t_l">证件号码</td>
									<td class="t_r1">&nbsp;<s:property value="user.flduseridnumber"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr>
									<td class="t_l">电子邮箱</td>
									<td class="t_r1">&nbsp;<s:property value="user.flduseremail"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr class="tr2">
									<td class="t_l">账单地址</td>
									<td class="t_r1">&nbsp;<s:property value="user.flduseraddress"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
								<tr>
									<td class="t_l">失效日期</td>
									<td class="t_r1">&nbsp;<s:date name="user.fldinvaliddate" format="yyyy-MM-dd"/></td>
									<td class="t_r2">&nbsp;</td>
								</tr>
							</table>
							<div class="centerbut">
								<input type="button" name="backBtn" class="but" value="返回" onclick="history.go(-1)" /> 
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