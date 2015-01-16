<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>更换计费方式</title>
<link href="css/default/main.css" rel="stylesheet" type="text/css" />
<link href="css/default/changpassword.css" rel="stylesheet" type="text/css" />
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
			//alert(data);
			document.getElementById(id).value = data;
		});
	}
</script>
</head>

<body style="display: none;">
<div id="box">
  <jsp:include page="top.jsp"></jsp:include><!-- 引入导航栏 -->
  <div id="nav_location">
       <div id="locationtext" class="text">首页 &nbsp;&gt;&nbsp;办理业务&nbsp;&gt;&nbsp;更换计费方式<span>${note}</span></div></div>
     <div id="content">
     			<div id="left">
         		<jsp:include page="left.jsp"></jsp:include><!-- 引入左边导航 -->
       		</div>
          <div id="right">
              <div id="changPassword">
                         <fieldset style=" border:1px solid #999; width:500px; height:300px;"><legend>更换计费方式</legend>
                         	
                      <s:form action="ChangeGroupSaveAction" namespace="/" method="post" theme="simple" >

                              <table width="80%" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="35%" height="40" align="center">当前计费方式：</td>
                                        <td width="77%">                                        
                                          <s:property value="groupName"/>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="40" align="center">目标计费方式：</td>
                                        <td>                                        
                                        	<s:select list="userGroupList" listValue="fldusergroupname" listKey="fldusergroupid" name="groupid" theme="simple"></s:select>
                                        </td>
                                      </tr>
                                      
                                      <tr>
                                        <td height="40">&nbsp;</td>
                                        <td><label>
                                       
                                          <input type="submit" value="提交" class="button"/>
                                        </label></td>
                                      </tr>
                             </table>
                         	</s:form>
                         </fieldset>
              </div>
                
       </div>
  </div>
  <div id="bottom"></div>
</div>
</body>
</html>