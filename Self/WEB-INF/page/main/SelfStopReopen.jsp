<%@ page language="java" import="java.util.Properties" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- 2011/11/14 修改为：锁定--报停、解锁--复通 -->
		<title>用户自助服务系统-预约报停/复通 </title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/password.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script language="javascript" type="text/javascript" src="My97DatePicker4.7/WdatePicker.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				var status = ${GLOBAL_SESSION_USER.flduseflag};
				$("#selfStopActionDiv").hide();
				$("#SelfReopenActionDiv").hide();
				if(status == 1){
					$("#selfStopActionDiv").show();
				} else {
					$("#SelfReopenActionDiv").show();
				}
			});
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_business">业务办理</a> &gt; 预约报停/复通 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
						 <div class="tabcontent">				
							${tip}
							<div id="SelfReopenActionDiv">
								<p>您现在的状态是：<font style="color:red;">报停</font></p>
								<form action="SelfReopenAction" method="post">
									<div class="password-data">
										<div class="row">
											<label class="locking">请选择预约复通日期:</label>
											<input class="Wdate" type="text" name="startDate" class="Wdate" onFocus="WdatePicker({minDate:'%y-%M-%d',readOnly:true})"/>
										</div>
										<br/>
										<input type="submit" name="Submit" class="but" value="提 交" />
										<input type="button" name="backBtn" class="but" value="返回" onclick="location.href = 'nav_business'"/> 
									</div>
								</form>
							</div>
							<div id="selfStopActionDiv">
							<p>您现在的状态是：<font style="color:red;">正常</font></p>			
								<form action="selfStopAction" method="post">
									<div class="password-data">
										<div class="row">
											<label class="locking">请选择预约报停日期:</label>
											<input class="Wdate" type="text" name="startDate" class="Wdate" onFocus="WdatePicker({minDate:'%y-%M-%d',readOnly:true})"/>
										</div>
										<br/>
										<input type="submit" name="Submit" class="but" value="提 交" />
										<input type="button" name="backBtn" class="but" value="返回" onclick="location.href = 'nav_business'"/> 
									</div>
								</form>
							</div>
							<br/><br/>
							<span>您还可以查看：<a href="nav_preStopLogAction" target="_blank">预约报停日志</a>&nbsp;&nbsp;<a href="nav_preReopenLogAction" target="_blank">预约复通日志</a></span>
						</div>
					</div>
				</div>
				<!-- 温馨提示 -->
				<div class="tips_bg"><!-- 背景 -->
					<div class="tips_top"><!-- 背景上图 -->
						<div class="tips_bom"><!-- 背景下图 -->
							<div class="tips_title">温馨提示：</div>
							<div class="tips_text">
							1.系统将在您所选日期的凌晨对您的账号进行预约报停或预约复通操作。<br/>
							2.所选日期必须在当日之后（含当日）。<br/>
							3.如果所选日期为当日，则系统将在明日凌晨对您的账号进行预约报停或预约复通操作。<br/>
							4.您可以多次进行预约报停或预约复通操作，系统将以最后一次预约操作为准进行处理。 <br/>
							</div>
						</div>
					</div>
				</div>
				<div class="tips_bom2"></div>
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