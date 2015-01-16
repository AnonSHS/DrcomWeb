<%@ page language="java" import="java.util.Properties,com.selfpackage.action.OpenFunctionAction" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/index.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
	</head>
	
	<%
		OpenFunctionAction openFunction = OpenFunctionAction.getOpenFunctionAction();
	%>
	
	<%if (openFunction.isBusinessPassQues()) {%>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				//var btip='<s:property value='btip'/>';
				var btip=$("#btip").val();
				if (btip=="true"){
					if(confirm("您还没有设置密码保护问题，现在设置吗？")){
						window.location.href="nav_Question";
					}
				}
				$("#btip").val("false");
			})
		</script>
	<%} %>
	<body style="display: none;">
	<div class="body2">
		<input type="hidden" value="0" id="leftflag"/>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a></div>
							</div>
							<div class="t_boxin"><!-- 内边框 -->
								<s:hidden name="btip"></s:hidden>
								<div class="iconmenu">
									<div class="boxspacing">
										<div class="info"><span class="fl"><a href="nav_webAd"><img skinResource="images/notice.gif" title="通知公告" border="0" skin="true"/></a></span> 
											<span class="fr"> <b><a href="nav_webAd">通知公告</a></b>为您提供查看最新通知、公告消息。</span>
										</div>
										<ul>
											<li>&nbsp;</li>
										</ul>
									</div>
								</div>
								<%if (openFunction.isSelectFlag()) {%>
									<div class="iconmenu">
										<div class="boxspacing">
											<div class="info"><span class="fl"><a href="nav_mainQuery"><img skinResource="images/inquiry.gif" title="查询服务" border="0" skin="true"/></a></span>
												<span class="fr"> <b><a href="nav_mainQuery">查询服务/inquiry service</a></b>为您提供上网清单等多项查询服务。</span>
											</div>
											<ul>
												<%if (openFunction.isSelectUserInfo()) {%>
													<li>·<a href="nav_getUserInfo">个人资料</a></li>
												<%} %>
												<%if (openFunction.isSelectBill()) {%>
													<li>·<a href="nav_monthPay">扣费账单</a></li>
												<%} %>
												<%if (openFunction.isSelectOperationLog()) {%>
													<li>·<a href="nav_operatorLog">业务办理记录</a></li>
												<%} %>
												<%if (openFunction.isSelectCharge()) {%>
													<li>·<a href="nav_Payment">交费情况</a></li>
												<%} %>
												<%if (openFunction.isSelectLoginLog()) {%>
													<li>·<a href="nav_loginLog">上网详单/details</a></li>
												<%} %>
											</ul>
										</div>
									</div>
								<%} %>
								<%if (openFunction.isBusinessFlag()) {%>
									<div class="iconmenu">
										<div class="boxspacing">
											<div class="info"><span class="fl"><a href="nav_business"><img skinResource="images/handle.gif" title="业务办理" border="0" skin="true"/></a></span> 
											<!-- 2011/11/14 修改为：锁定--报停、解锁--复通 -->
												<span class="fr"> <b><a href="nav_business">业务办理</a></b>为您提供预约报停、预约套餐等多项服务。</span>
											</div>
											<ul>
												<%if (openFunction.isBusinessUserInfo()) {%>
													<li>·<a href="nav_changeUserInfo">修改资料</a></li>
												<%} %>
												<%if (openFunction.isBusinessPassword()) {%>
													<li>·<a href="nav_changePsw">修改密码</a></li>
												<%} %>
												<%if (openFunction.isBusinessStopOpen()) {%>
													<li>·<a href="nav_selfStopReopen">预约报停/复通</a></li>
												<%} %>
												<%if (openFunction.isBusinessNowStopOpen()) {%>
													<li>·<a href="#" name="openOrStopNow">立即报停/复通</a></li>
												<%} %>
												<%if (openFunction.isBusinessMaxUser()) {%>
													<%-- <li>·<a href="nav_installmentflag">预设限额</a></li> --%>
												<%} %>
												<%if (openFunction.isBusinessGroup()) {%>
													<li>·<a href="nav_servicedefaultbook">预约套餐</a></li>
												<%} %>
												<%if (openFunction.isBusinessCharge()) {%>
													<li>·<a href="nav_Rcard">充值卡充值</a></li>
												<%} %>
												<%if (openFunction.isBusinessPassQues()) {%>
													<li>·<a href="nav_Question">设置密码保护</a></li>
												<%} %>
											</ul>
										</div>
									</div>
								<%} %>
								<div class="iconmenu">
									<div class="boxspacing">
										<div class="info"><span class="fl"><a href="nav_GroupInfo"><img skinResource="images/tariff.gif" title="资费介绍" border="0" skin="true"/></a></span> 
											<span class="fr"> <b><a href="nav_GroupInfo">资费介绍</a></b>为您提供套餐服务及资费介绍。</span>
										</div>
										<ul>
											<li>&nbsp;</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 温馨提示 -->
					<div class="tips_bg"><!-- 背景 -->
						<div class="tips_top"><!-- 背景上图 -->
							<div class="tips_bom"><!-- 背景下图 -->
								<div class="tips_title">温馨提示：</div>
								<div class="tips_text">宽带自助服务系统为您提供如下功能：<br/>
									1. 查看最新的通知、公告消息；<br/>
									2. 自助查询个人资料、充值缴费、上网详单、扣费账单、业务办理等记录；<br/>
									3. 自助办理修改密码、个人资料变更、报停、复通、变更套餐及相关预约业务的申请等；<br/>
									4. 查看宽带产品的资费信息，方便您选用合适的套餐。<br/>
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