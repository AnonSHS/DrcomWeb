<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>用户自助服务系统-修改密码</title>
		<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
		<link skinResource="css/password.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/pub.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/interface/drcom.js'></script>
		<script type="text/javascript">
			function check() {
				var pass= document.getElementById("password");
				var A= document.getElementById("A");
				var B= document.getElementById("B");
				var temp = pass.value.replace(/(^\s*)|(\s*$)/g, "");
			  if(temp == "" || temp == null){
			     alert("请输入密码！");
			     pass.focus();    
			     return false;  
			  }
			  temp = A.value.replace(/(^\s*)|(\s*$)/g, "");
			  if(temp == "" || temp == null){
			     alert("请输入新密码！");
			     A.focus();    
			     return false;  
			  }
			  if(A.value.length > <s:property value="openFunction.passwordLength"/>+1 || A.value.length < 7){
				    alert("请使用6-<s:property value="openFunction.passwordLength"/>位长度的密码！");
				    A.focus();     
				    return false;  
				  }
			  temp = B.value.replace(/(^\s*)|(\s*$)/g, "");
			  if(temp == "" || temp == null){
			     alert("请再次输入新密码！");
			     B.focus();    
			     return false;  
			  }
			  if(A.value!=B.value){
			    alert("新密码两次输入不正确！");
			    A.focus();     
			    return false;  
			  }
			 }
			 
			function MD5Encrypt(id) {
			  var psw = document.getElementById(id).value;
			  var temp = psw.replace(/(^\s*)|(\s*$)/g, "");
			  if (temp == "" || temp == null) return;
				drcom.Cipher(temp, function(data) {
					document.getElementById(id).value = data;
				});
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
								<div class="banner_r">您现在的位置：<a href="nav_main">首页导航</a> &gt; <a href="nav_business">业务办理</a> &gt; 修改密码 </div>
							</div>
						</div>
						<div class="t_boxin"><!-- 内边框 -->
							<div class="tabcontent">
							<s:form action="ChangePswAction" namespace="/" method="post" theme="simple" onsubmit="return check();">							
									<!-- 修改密码 -->
									<div class="row">
										<label>当前密码:</label>
										<s:password name="user.flduserpassword" maxlength="16" required="true" cssClass="text" id="password" onfocus="this.value = '';" onblur="MD5Encrypt(this.id);"></s:password>
									</div>
									<div class="row">
										<label>新 密 码:</label>
										<s:password name="user.fldmd5hehai" maxlength="16" required="true" cssClass="text" id="A" onfocus="this.value = '';" onblur="MD5Encrypt(this.id);"></s:password>
										<font class="redtext">请使用6-<s:property value="openFunction.passwordLength"/> 位长度的密码。</font>
									</div>
									<div class="row">
										<label>再次输入新密码:</label>
										<s:password name="user.fldextend" maxlength="16" required="true" cssClass="text" id="B" onfocus="this.value = '';" onblur="MD5Encrypt(this.id);"></s:password>
									</div>
									
									<label></label>
									<input type="submit" name="Submit" class="but" value="提 交" />
									<input type="button" name="backBtn" class="but" value="返回" onclick="location.href = 'nav_business'"/> 
								</div>
							</s:form>
						</div>
					</div>
					<!-- 温馨提示 -->
					<div class="tips_bg"><!-- 背景 -->
						<div class="tips_top"><!-- 背景上图 -->
							<div class="tips_bom"><!-- 背景下图 -->
								<div class="tips_title">温馨提示：</div>
								<!-- 2011/11/14帐号更改为账号 -->
								<div class="tips_text">为了您的账号安全，建议使用英文字母、数字的组合，提升帐户安全度。<br/><br/>
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