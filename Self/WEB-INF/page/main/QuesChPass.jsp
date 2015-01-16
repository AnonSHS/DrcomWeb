<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-修改密码</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/QuesChPass.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/random.js"></script>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/interface/drcom.js'></script>
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
				<!-- 右栏 -->
				<div class="rightbox" style="margin-left: 100px;">
					<!-- 透明外边 -->
					<div class="t_boxout">
						<div class="banner_bg">
							<div class="banner_l">
								<div class="banner_r">您现在的位置：<a href="nav_login">登录页</a> &gt; 忘记密码 &gt; 修改密码 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<form action="QuesChangePassAction" method="post" id="form1" name="form1">
								<s:hidden name="checkstring"></s:hidden>
								<table width="500px;" border="0" align="center" cellpadding="2" cellspacing="1">
									<tr>
										<td align="right">账号</td>
										<td width="200px;">
											<s:textfield name="account" id="account" theme="simple" cssClass="text_background1" readonly="true"></s:textfield>    	
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td align="right">新密码</td>
										<td>
											<s:password name="password" maxlength="16" required="true" cssClass="text" id="A" theme="simple"  onfocus="this.value = '';" onblur="MD5Encrypt(this.id);" cssClass="text_background1"></s:password>   	
										</td>
										<td>&nbsp;<font class="redtext">请使用6-<span id="maxlenght"><s:property value="openFunction.passwordLength"/></span>位长度的密码。</font></td>
									</tr>
									<tr>
										<td align="right">再次输入新密码</td>
										<td>
											<s:password name="password1" maxlength="16" required="true" cssClass="text" id="B" theme="simple"  onfocus="this.value = '';" onblur="MD5Encrypt(this.id);" cssClass="text_background1"></s:password>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr align="center">
										<td colspan="2">
											<input type="submit" name="Submit" onclick="return check();" class="but" value="确定" />
											<input type="button" name="backBtn" class="but" value="返回" onclick="window.location.href='javascript:history.back();'" /> 
										</td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</form>
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