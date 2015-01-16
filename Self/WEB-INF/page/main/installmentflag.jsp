<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- 2011/11/14 “修改个人密码” 改为“修改密码” -->
		<title>用户自助服务系统-修改密码</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript">
			function comf(){
				var installment=$("#installmentflag").val();
				
				var regNum =/^\d*$/;
			    if (installment==null || installment=="" || regNum.test(installment)==false){
				    alert("请输入0或正整数");
					return;	
				}
				
				if(confirm("确认后提交")){
					$("form").eq(0).submit();
				}
			}
		</script>
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_business">业务办理</a>  &gt; 预设限额</div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<s:form action="InstallmentflagMessageAction" namespace="/" method="post" validate="true" theme="simple" >
								<div style="margin: 50px;">
									<div>
										<label class="locking">预设限额:</label>
										<input type="text" class="text" name="installmentflag" id ="installmentflag" value="${user.fldinstallmentflag }" maxlength="5" style="width: 80px;text-align: right"/> 元
										<%-- <a href="##"><img src="images/but_submit.gif" border="0" class="lockbut" onclick="comf();" align="absmiddle"></a>--%>
									</div>
									<div style="margin: 10px">
										<input type="button" name="button" class="but" onclick="comf();" value="提 交" />
									</div>
								</div>
							</s:form>
						</div>
					</div>
					<%--
					<!-- 温馨提示 -->
					<div class="tips_bg"><!-- 背景 -->
						<div class="tips_top"><!-- 背景上图 -->
							<div class="tips_bom"><!-- 背景下图 -->
								<div class="tips_title">温馨提示：</div>
								<div class="tips_text">
								1.当月您的套餐月基本费包含的流量用完之后，如果还想继续使用，将按0.005元/MB的计费标准进行实时计费。<br/>
								2.您可以预设当月最高流量计费金额，以满足您的费用支出计划。<br />
									示例：<br />
									学生套餐“月租20元包15GB流量”，当月15GB用完后，如果预设最高流量计费金额是0元，将无法继续使用。如果预设最高流量计费金额5元，则可以继续使用5/0.005=1000MB的流量。
									<br />注：<br/>预设的最高流量计费金额不含套餐月基本费。<br />
									如果从未预设过最高流量计费金额，系统将默认按0元处理。<br />
									3.如果本月预设了限额5元而未设置回0元，则下个月就默认为本月的限额值5元。
								</div>
							</div>
						</div>
					</div>
					 --%>
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