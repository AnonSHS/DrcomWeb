<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-忘记密码</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/questionlogin.js" charset="UTF-8"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_login">登录页</a> &gt; 忘记密码 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<form action="QuesChPassAction" method="post" id="form1" name="form1" autocomplete="off">
								<table width="500px;" border="0" align="center" cellpadding="2" cellspacing="1">
									<tr>
										<td width="50px;">账号</td>
										<td width="250px;">
											<s:textfield name="account" id="account" theme="simple" cssClass="text_background1" readonly="true"></s:textfield>    	
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>问题1</td>
										<td>
											<s:select list="tblpasswordquestionlist" listValue="fldvalue" listKey="fldid" id="passwordquestion1" name="tblpasswordanwser.fldquestion1" cssClass="selecttext" theme="simple" cssStyle="display:none"></s:select>
											<span id="question1"></span>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>答案1</td>
										<td>
											<s:textfield name="tblpasswordanwser.fldanswer1" cssClass="text_background1" theme="simple"></s:textfield>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>问题2</td>
										<td>
											<s:select list="tblpasswordquestionlist" listValue="fldvalue" listKey="fldid" id="passwordquestion2" name="tblpasswordanwser.fldquestion2" cssClass="selecttext" theme="simple" cssStyle="display:none"></s:select>
											<span id="question2"></span>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>答案2</td>
										<td>
											<s:textfield name="tblpasswordanwser.fldanswer2" cssClass="text_background1" theme="simple"></s:textfield>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>问题3</td>
										<td>
											<s:select list="tblpasswordquestionlist" listValue="fldvalue" listKey="fldid" id="passwordquestion3" name="tblpasswordanwser.fldquestion3" cssClass="selecttext" theme="simple" cssStyle="display:none"></s:select>
											<span id="question3"></span>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>答案3</td>
										<td>
											<s:textfield name="tblpasswordanwser.fldanswer3" cssClass="text_background1" theme="simple"></s:textfield>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>验证码</td>
										<td>
											<s:textfield name="code" id="code" theme="simple" cssClass="text_background1" cssStyle="width: 60px"></s:textfield>
											<img id="codeimage" align="absbottom"/>
											<a href="javascript: loadimage();"><font class="rowtext">换一张</font></a>
										</td>
										<td>&nbsp;</td>
									</tr>
									<tr align="center">
										<td colspan="2">
											<input type="submit" name="Submit" onclick="return check();" class="but" value="确定" />
											<input type="button" name="backBtn" class="but" value="返回" onclick="window.location.href='nav_login'" /> 
										</td>
										<td>&nbsp;</td>
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
								<div class="tips_text">
									通过密码安全问题可以重置密码。<br/>
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
