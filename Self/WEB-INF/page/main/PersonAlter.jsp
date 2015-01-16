<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- 2011/11/14 “修改个人资料” 改为“修改资料” -->
		<title>用户自助服务系统-修改资料</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/information.css" rel="stylesheet" type="text/css" skin="true" />
		<link type="text/css" rel="stylesheet" href="css/validator.css"></link>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" src="js/formValidator.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/formValidatorRegex.js" charset="UTF-8"></script>
		<script type="text/javascript" src="js/personInfoEdit.js" charset="UTF-8"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_business">业务办理</a> &gt; 修改资料</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
						 <div class="tabcontent">				
							<s:form action="ChangeUserMessageAction" namespace="/"
								method="post" validate="true" theme="simple" id="form1">
								<div class="profilecontent">
									
									<!-- 2011/11/14 “修改个人资料” 改为“修改资料” -->
									<div class="titlebanner">修改资料</div>
									<table width="100%" border="0" cellspacing="0" cellpadding="0" class="profile" id="formTable">
										<tr>
											<td class="t_l">用户名称</td>
											<td class="t_r1">
												<s:textfield name="user.flduserrealname" cssClass="text" readonly="true"></s:textfield>
											</td>
											<td class="t_r2">&nbsp;</td>
										</tr>
										<s:if test="openFunction.changeCheckcode>=1">
											<tr>
												<td class="t_l">防伪信息<s:if test="openFunction.noNullCheckcode==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeCheckcode==2 || user.tblregisteconfig==null || user.tblregisteconfig.fldcheckcode==null">
														<s:textfield name="user.tblregisteconfig.fldcheckcode" id="fldcheckcode" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.tblregisteconfig.fldcheckcode" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="fldcheckcodeTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changePhone>=1">
											<tr>
												<td class="t_l">联系电话1<s:if test="openFunction.noNullPhone==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changePhone==2 || user.flduserphone==null">
														<s:textfield name="user.flduserphone" id="userphone" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.flduserphone" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="userphoneTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changePhone>=1">
											<tr>
												<td class="t_l">联系电话2<s:if test="openFunction.noNullTele==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeTele==2 || user.fldcontactphone==null">
														<s:textfield name="user.fldcontactphone" id="contactphone" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.fldcontactphone" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="contactphoneTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changeUserIDNumber>=1">
											<tr>
												<td class="t_l">证件号码<s:if test="openFunction.noNullUserIDNumber==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeUserIDNumber==2 || user.flduseridnumber==null">
														<s:textfield name="user.flduseridnumber" id="idnumber" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.flduseridnumber" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="idnumberTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changeEmail>=1">
											<tr>
												<td class="t_l">电子邮箱<s:if test="openFunction.noNullEmail==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeEmail==2 || user.flduseremail==null">
														<s:textfield name="user.flduseremail" id="email" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.flduseremail" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="emailTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changeUsercompany>=1">
											<tr>
												<td class="t_l">布线资料<s:if test="openFunction.noNullUsercompany==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeUsercompany==2 || user.fldusercompany==null">
														<s:textfield name="user.fldusercompany" id="usercompany" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.fldusercompany" cssClass="text" readonly="true"></s:textfield>
													</s:else>	
												</td>
												<td class="t_r2"><div id="usercompanyTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changeAddress>=1">
											<tr>
												<td class="t_l">安装地址<s:if test="openFunction.noNullAddress==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeAddress==2 || user.fldinstalllocal==null">
														<s:textfield name="user.fldinstalllocal" id="installlocal" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.fldinstalllocal" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="installlocalTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
										<s:if test="openFunction.changeCardNo>=1">
											<tr>
												<td class="t_l">账单地址<s:if test="openFunction.noNullCardNo==true">*</s:if></td>
												<td class="t_r1">
													<s:if test="openFunction.changeCardNo==2 || user.flduseraddress==null">
														<s:textfield name="user.flduseraddress" id="useraddress" cssClass="text_background"></s:textfield>
													</s:if>
													<s:else>
														<s:textfield name="user.flduseraddress" cssClass="text" readonly="true"></s:textfield>
													</s:else>
												</td>
												<td class="t_r2"><div id="useraddressTip" style="width:200px"></div>&nbsp;</td>
											</tr>
										</s:if>
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