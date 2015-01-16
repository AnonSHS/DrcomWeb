<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-预注册</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/un.js" charset="UTF-8"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_login">登录页</a> &gt; 预注册 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<form action="saveunregister.action" method="post" id="form1" name="form1">
								<table width="500px;" border="0" align="center" cellpadding="2" cellspacing="1">
									<tr>
										<td width="150px;"   height="35px;" scope="row" class="title">账号</td>
										<td width="250px;">
											<span class="content">  
												<s:textfield name="unuser.fldaccount" id="fldaccount" theme="simple" cssClass="text"></s:textfield>    	
											</span> 
										</td>
										<td><div id="fldaccountTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">用户名称</td>
										<td>
											<span class="content">
												<s:textfield name="unuser.fldusername" id="fldusername" theme="simple" cssClass="text"></s:textfield>
											</span>
										</td>
										<td><div id="fldusernameTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">安装地址</td>
										<td>
											<span class="content">
												<s:textfield name="unuser.fldinstalllocal" id="fldinstalllocal" theme="simple" cssClass="text"></s:textfield>
											</span>
										</td>
										<td> <div id="fldinstallloctitleip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">证件号码</td>
										<td>
											<span class="content">
												<s:textfield name="unuser.flduseridnumber" id="flduseridnumber" theme="simple" cssClass="text"></s:textfield>
											</span>
										</td>
										<td><div id="flduseridnumberTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">联系电话</td>
										<td>
											<span class="content">
												<s:textfield name="unuser.fldcontactphone" id="fldcontactphone" theme="simple" cssClass="text"></s:textfield>
											</span>
										</td>
										<td> <div id="fldcontactphoneTip" style="width:200px"></div></td>
									</tr>
									<tr>
										<td scope="row"  height="35px;" class="title">账单地址</td>
										<td>
											<span class="content"> 
												<s:textfield name="unuser.flduseraddress" id="flduseraddress" theme="simple" cssClass="text"></s:textfield>     
											</span>
										</td>
										<td> <div id="flduseraddressTip" style="width:200px"></div></td>
									</tr>
									<tr align="center">
										<td colspan="3">
											<input type="submit" name="Submit" class="but" value="提 交" />
											<input type="button" name="backBtn" class="but" value="返回" onclick="history.go(-1)" /> 
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<br /><br />
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