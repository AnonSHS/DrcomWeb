<%@ page language="java" import="com.selfpackage.util.*,java.util.Properties,com.selfpackage.action.OpenFunctionAction"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>用户自助服务系统</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<link rel="stylesheet" type="text/css" skinResource="css/login.css" skin="true" >
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/interface/drcom.js'></script>
		<script type='text/javascript' src='js/md5.js'></script>
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/random.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript">
			function check(){  
				var account= document.getElementById("account");
				var pass= document.getElementById("pass");
				var radomcode= document.getElementById("radomcode");
				var name =  account.value;
				var names=name.replace(/(^\s*)|(\s*$)/g, "");		
				if(names==null || names==""){
					alert("账号为空请正确填写！");   
					account.focus();
					return false;			
				}
				var password = pass.value;
				var passwords=password.replace(/(^\s*)|(\s*$)/g, "");
				if(passwords==null ||passwords==""){
					alert("密码为空请正确填写！");   
					pass.focus();
					return false;			
				}
				var code = radomcode.value;
				codes=code.replace(/(^\s*)|(\s*$)/g, "");
				if(!$("#tr_random").is(':hidden')){
					if(codes==null ||codes==""){
						alert("随机码为空请正确填写！");   
						radomcode.focus();
						return false;			
					}
				}
				<% 
					session.removeAttribute("loginRandom");
					session.setAttribute("loginRandom", EasyStr.makeStr(6) + EasyStr.makeNum(6));
				%>
				loginRandom ="<%=session.getAttribute("loginRandom")%>";
			} 	
			function MD5Encrypt(psw) {
				var temp = psw.replace(/(^\s*)|(\s*$)/g, "");
				if (temp == "" || temp == null) return;
					drcom.Cipher(temp, callBackMD5);
				}
			function callBackMD5(data) {
				document.getElementById("pass").value = data;
			} 
			$(document).ready(function(){
				loadimage();
			});

			$(function(){
				$("#fielderror1").html($("#fielderror2").text());
			});

			function questionlogin(){
				var account= document.getElementById("account");
				var name =  account.value;
				var names=name.replace(/(^\s*)|(\s*$)/g, "");		
				if(names==null || names==""){
					alert("账号为空请正确填写！");   
					account.focus();
					return;			
				}
				window.location.href="nav_QuestionLogin?account="+name;
			}

			$(document).ready(function(){
				var checkcode="<%=session.getAttribute("checkcode")%>";
				$("#checkcode").val(checkcode);
				
		    	var trytimes="<%=session.getAttribute("trytimes")%>";

		    	if(parseInt(trytimes)>=3){
					$("#tr_random").show();
		        }
			});
		</script>
	</head>
	
	<%
		OpenFunctionAction openFunction = OpenFunctionAction.getOpenFunctionAction();
	%>
	
	<body style="display: none;">
		<div class="body2">
			<div class="l_outbox">
				<div class="top_space"></div>
				<div class="l_logo"></div>
				<div class="l_content">
					<div class="content">
						<div class="tabcontent">
							<form name="loginform" method="post" action="LoginAction.action" id="loginform" onsubmit="return check();">
								<div class="e-space"></div>
								<div class="redtext">
									<div id="fielderror1"></div>
									<div id="fielderror2" style="display: none;"><s:property value="errormessage"/></div>
								</div>
								<div class="row">
									<label>账号 Account</label>
									<input type="text" name="account" id="account" value="${account }" size="25" class="text" tabindex="1"/>
								</div>
								<div class="row">
									<label>密码 Password</label>
									<input type="password" name="password" id="pass" value="" size="25" class="text" onfocus="this.value = '';" onblur="MD5Encrypt(this.value);" tabindex="2"/>
									<%if (openFunction.isBusinessPassQues()) {%><font class="yellowtext"><a href="#" onclick="questionlogin()" tabindex="5">忘记密码</a></font><%} %>
								</div>
								<div class="row"  style="display: none;" id="tr_random">
									<label>验证码 code</label>
									<input type="text" name="code" id="radomcode" value="" size="4" class="text" style="width: 60px" tabindex="3"/> 
									<input type="text" name="checkcode" id="checkcode" style="display: none;"/>
									<img id="codeimage" align="absbottom"/>
									<a href="javascript: loadimage();" tabindex="6"><font class="rowtext">看不清？换一张</font></a>
								</div>
								<div class="row">
									<label>&nbsp;</label>
									<input type="submit" name="Submit" class="but" value="登 录Login" tabindex="4"/>
								</div>
								<div class="s_text">
									<s:text name="copyright"/>
								</div>
							</form>
						</div>
						<%--<div class="rightann">
							<div class="anntitle">
								公告栏
							</div>
							<div class="anntext">
								请使用您登录INTERNET的账号密码登录自助服务系统 请使用您登录INTERNET的账号密码登录自助服务系统
								请使用您登录INTERNET的账号密码登录自助服务系统 请使用您登录INTERNET的账号密码登录自助服务系统
								请使用您登录INTERNET的账号密码登录自助服务系统 请使用您登录INTERNET的账号密码登录自助服务系统
								请使用您登录INTERNET的账号密码登录自助服务系统 请使用您登录INTERNET的账号密码登录自助服务系统
								请使用您登录INTERNET的账号密码您登录INTERNET的账号密码登录自助服务系统 请使用您登录INTERNET的账号密码
							</div>
						</div>--%>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>