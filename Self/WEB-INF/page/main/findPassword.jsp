<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-找回密码</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/findPassword.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/random.js"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_login">登录页</a> &gt; 找回密码 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<form action="saveFindPassword.action" method="post" id="form1" name="form1">
								<table width="500px;" border="0" align="center" cellpadding="2" cellspacing="1">
									<tr>
										<td width="150px;"   height="35px;" scope="row" class="title">账号</td>
										<td width="250px;">
											<span class="content">  
												<s:textfield name="user.fldusername" id="fldusername" theme="simple" cssClass="text"></s:textfield>    	
											</span> 
										</td>
										<td><div id="fldusernameTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">证件号码</td>
										<td>
											<span class="content">
												<s:textfield name="user.flduseridnumber" id="flduseridnumber" theme="simple" cssClass="text"></s:textfield>
											</span>
										</td>
										<td><div id="flduseridnumberTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">电子邮箱</td>
										<td>
											<span class="content">
												<s:textfield name="user.flduseremail" id="flduseremail" theme="simple" cssClass="text"></s:textfield>
											</span>
										</td>
										<td><div id="flduseremailTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">验证码</td>
										<td>
											<span class="content">
												<s:textfield name="radomcode" id="radomcode" theme="simple" cssClass="text" cssStyle="width: 60px"></s:textfield>
												<img id="codeimage" align="absbottom"/>
												<a href="javascript: loadimage();"><font class="rowtext">换一张</font></a>
											</span>
										</td>
										<td><div id="radomcodeTip" style="width:200px"></div></td>
									</tr>
									<tr align="center">
										<td colspan="3">
											<input type="submit" name="Submit" class="but" value="提 交" />
											<input type="button" name="backBtn" class="but" value="返回" onclick="window.location.href='nav_login'" /> 
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<!-- 温馨提示 -->
					<div class="tips_bg"><!-- 背景 -->
						<div class="tips_top"><!-- 背景上图 -->
							<div class="tips_bom"><!-- 背景下图 -->
								<div class="tips_title">温馨提示：</div>
								<!-- 2011/11/14帐号更改为账号 -->
								<div class="tips_text">
									1、输入的证件号码和邮箱必须与用户资料的保持一致；<br/>
									2、通过验证后密码将邮件发送至您的邮箱。<br/>
									<br/>
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
