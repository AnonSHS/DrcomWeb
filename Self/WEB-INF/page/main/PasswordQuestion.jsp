<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- 2011/11/14 “修改个人资料” 改为“修改资料” -->
		<title>用户自助服务系统-设置密码保护</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/information.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/PasswordQuestion.js" charset="UTF-8"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_business">业务办理</a> &gt; 设置密码保护</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
						 <div class="tabcontent">				
							<s:form action="ChangeQuestionAction" namespace="/"
								method="post" validate="true" theme="simple" id="form1" autocomplete="off">
								<div class="profilecontent">
									
									<!-- 2011/11/14 “修改个人资料” 改为“修改资料” -->
									<div class="titlebanner">密码安全问题</div>
									<table width="100%" border="0" cellspacing="0" cellpadding="0" class="profile" id="formTable">
										<tr>
											<td class="t_l">密码</td>
											<td class="t_r1">
												<s:password name="user.flduserpassword" maxlength="16" required="true" cssClass="text" id="password" onfocus="this.value = '';" onblur="MD5Encrypt(this.id);" cssClass="text_background1"></s:password>
											</td>
											<td class="t_r2">&nbsp;<font class="redtext">密码认证正确才能修改密码安全问题</font></td>
										</tr>
										<tr>
											<td class="t_l">问题1</td>
											<td class="t_r1">
												<s:select list="tblpasswordquestionlist" listValue="fldvalue" listKey="fldid" id="passwordquestion1" name="tblpasswordanwser.fldquestion1" cssClass="selecttext" theme="simple"></s:select>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
										<tr>
											<td class="t_l">答案1</td>
											<td class="t_r1">
												<s:textfield name="tblpasswordanwser.fldanswer1" cssClass="text_background1" maxlength="50"></s:textfield>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
										<tr>
											<td class="t_l">问题2</td>
											<td class="t_r1">
												<s:select list="tblpasswordquestionlist" listValue="fldvalue" listKey="fldid" id="passwordquestion2" name="tblpasswordanwser.fldquestion2" cssClass="selecttext" theme="simple"></s:select>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
										<tr>
											<td class="t_l">答案2</td>
											<td class="t_r1">
												<s:textfield name="tblpasswordanwser.fldanswer2" cssClass="text_background1" maxlength="50"></s:textfield>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
										<tr>
											<td class="t_l">问题3</td>
											<td class="t_r1">
												<s:select list="tblpasswordquestionlist" listValue="fldvalue" listKey="fldid" id="passwordquestion3" name="tblpasswordanwser.fldquestion3" cssClass="selecttext" theme="simple"></s:select>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
										<tr>
											<td class="t_l">答案3</td>
											<td class="t_r1">
												<s:textfield name="tblpasswordanwser.fldanswer3" cssClass="text_background1" maxlength="50"></s:textfield>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
									</table>
									<div class="centerbut">
										<input type="submit" name="Submit" onclick="return check();" class="but" value="提 交" />
										<input type="button" name="backBtn" class="but" value="返回" onclick="location.href = 'nav_business'" />
									</div>
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