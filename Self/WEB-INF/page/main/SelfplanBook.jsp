<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户自助服务系统-预约套餐</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/password.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_business">业务办理</a> &gt; 预约套餐 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<div class="tabcontent">
							<form action="selfservicebookAction" method="post">
								<div class="password-data">
									<div class="row">
										您已预约的套餐是:<b class="">${selfsevicebook}</b>
									</div>
									<br>
									<div class="row">预约选择您下月将要使用的新套餐:</div>
									<div class="row">
										<table id="t1" border="0" cellspacing="0" cellpadding="0">
											<thead>
												<tr class="tableheader">
													<td>套餐</td>
													<td>描述</td>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="servicedefaultList" var="service">
													<tr>
														<td>
															<input type="radio" name="serid" id="serid"
																value="<s:property value="#service.fldid"/>">
															<s:property value="#service.flddefaultname" />
														</td>
														<td class="smalltext">
															<s:property value="#service.fldextend" />
															<br />
														</td>
													</tr>
												</s:iterator>
											</tbody>
										</table>
									</div>
									<div class="centerbut">
										<input type="submit" name="Submit" class="but" value="提 交" />
										<input type="button" name="backBtn" class="but" value="返回" onclick="location.href = 'nav_business'"/> 
									</div>
								</div>
							</form>
							<span>您还可以查看：<a href="nav_preChangeGroupLogAction" target="_blank">预约套餐日志</a></span>
							</div>
						</div>
					</div>
					<!-- 温馨提示 -->
					<div class="tips_bg"><!-- 背景 -->
						<div class="tips_top"><!-- 背景上图 -->
							<div class="tips_bom"><!-- 背景下图 -->
								<div class="tips_title">温馨提示：</div>
								<div class="tips_text">
								1.如果您下个月想使用不同于当月的计费套餐，请选择新的计费套餐类型。<br>
								2.新的计费套餐将在下月1日系统结算时自动生效并按新套餐扣取月基本费。<br>
								3.您可以多次预约套餐，系统将以最后一次预约操作为准进行处理。
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