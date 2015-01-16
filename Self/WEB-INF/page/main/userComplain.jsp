<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-自助报障</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/userComplain.js" charset="UTF-8"></script>
	</head>
	<body style="display: none;">
	<div class="body2">
		<input type="hidden" value="5" id="leftflag"/>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; 自助报障 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<div class="memobg">
							<s:form action="saveUserComplain.action" method="post" id="form1"	name="form1">
								<table border="0" cellpadding="2"	cellspacing="2" width="100%">
									<tr>
										<td class="titleCol" width="50px">故障类型</td>
										<td class="titleCol" width="200px">
											<s:select list="tblcomplaindescribeList" 
												listValue="fldcomplaindescribe" listKey="fldcomplaindescribe" 
												name="bean.fldcomplaindescribe" theme="simple"></s:select>
										</td>
										<td class="titleCol">&nbsp;</td>
									</tr>
									
									<tr>
										<td class="titleCol">故障标题</td>
										<td class="titleCol">
											<s:textfield name="bean.fldtitle" maxlength="50" id="fldtitle" theme="simple"></s:textfield>
										</td>
										<td class="titleCol">
											<div id="fldtitleTip" style="width:100%"></div>
										</td>
									</tr>
									
									<tr>
										<td class="titleCol">联系人</td>
										<td class="titleCol">
											<s:textfield name="bean.fldcontactor" maxlength="50" id="fldcontactor" theme="simple"></s:textfield>
										</td>
										<td class="titleCol">
											<div id="fldcontactorTip" style="width:100%"></div>
										</td>
									</tr>
									
									<tr>
										<td class="titleCol">联系电话</td>
										<td class="titleCol">
											<s:textfield name="bean.fldcontactphone" maxlength="50" id="fldcontactphone" theme="simple"></s:textfield>
										</td>
										<td class="titleCol">
											<div id="fldcontactphoneTip" style="width:100%"></div>
										</td>
									</tr>
									
									<tr>
										<td class="titleCol">故障描述</td>
										<td class="titleCol">
											<s:textarea name="bean.fldcomplaintext" id="fldComplainText" 
												cols="36" rows="10"
												theme="simple" cssClass="inputLeftb"></s:textarea>
										</td>
										<td class="titleCol">
											<div id="fldComplainTextTip" style="width:100%"></div>
										</td>
									</tr>
									<tr>
										<td class="titleCol" colspan="3" align="center">
											<input type="submit" name="Submit" class="but" value="提 交" />
											<input type="button" name="backBtn" class="but" value="返回" onclick="history.go(-1)" />
										</td>
									</tr>
								</table>
									<span>&nbsp;&nbsp;您还可以查看：<a href="userComplainLog" target="_blank">报障记录</a></span>
							</s:form>
						</div>
					</div>
					</div>
					<!-- 温馨提示 -->
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