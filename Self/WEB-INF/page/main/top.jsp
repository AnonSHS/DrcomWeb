<%@ page language="java" import="com.selfpackage.util.PropertiesLoader,java.util.Properties"   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>用户自助服务系统</title>

<link href="css/default/main.css" rel="stylesheet" type="text/css" />
<script type="text/default/javascript" src="js/nav_show.js"></script>
<script type="text/javascript" src="js/logout.js"></script>
</head>
<%
PropertiesLoader objpro = new PropertiesLoader();
String path = "com.selfpackage.util.config";
Properties pro = objpro.getProperties(path);
String nowstop = pro.getProperty("nowstop");
String stop    = pro.getProperty("stop");
String reopen  = pro.getProperty("reopen");
String nowreopen = pro.getProperty("nowreopen");
String serivce   = pro.getProperty("serivce");
String nowserivce= pro.getProperty("nowserivce");

String changpassword = pro.getProperty("changpassword");
String changperson = pro.getProperty("changperson");
String recard = pro.getProperty("recard");
%>
<body style="display: none;">

         <div id="logo">
             <div id="fun" style="margin-top:40px;">
                 <ul id="funTop" >
                        <!--   <li><img src="images/help.jpg" style="cursor:pointer;"/></li>                      
                          <li><img src="images/about.jpg" style="cursor:pointer;"/></li>
                          <li><img src="images/logout.jpg" style="cursor:pointer;" onclick="logout()"/></li>                             
                                  -->                
                 </ul>
                  <ul id="funBottom" style="text-align:right;">
                      <!--   <li><a href="#">帮助</a></li>
                        <li><a href="#">关于</a></li>--> 
                        <li><a href="#" onClick="logout()">注销</a></li>
                  </ul>
           </div>
        </div> <!-- end logo -->
  <div id="nav_main">
    <ul id="nav_menu">
            
                  <li><a href="nav_main" title="">首页导航</a></li>
                  
                   <li><a href="nav_webAd" title="">公告</a>
                               <ol>
                                  <li><a href="#"></a></li>
                                  <li class=""><a href="#"></a></li>
                               </ol>
                         </li>
                       
                        <li><a href="nav_mainQuery" title="">查询业务</a>
                              <ol>
                                 <li><a href="nav_monthPay">扣费账单</a></li>
                                 <li><a href="nav_operatorLog">业务办理记录</a></li>
                                 <li><a href="nav_loginLog">上网详单</a></li>
                                 <li class=""><a href="nav_Payment">交费情况</a></li>
                             </ol>           
                        </li>
                        <li><a href="nav_business" title="">办理业务</a>
                              <ol>
                                 <%if(recard.equals("1")){ %> 
                                 <li><a href="nav_Rcard">充值卡充值</a></li>
                                <% }%>                   
                                <%if(changperson.equals("1")){ %>
                                 <li><a href="nav_getUserInfo">个人资料</a></li>
                                <% }%> 
                                <%if(changpassword.equals("1")){ %> 
                                <!-- 2011/11/14 “修改个人密码” 改为“修改密码” -->
                                 <li><a href="nav_changePsw">修改密码</a></li>
                                <% }%>
                                 <%if(stop.equals("1")){ %> 
                                 <!-- 2011/11/14 修改为：锁定--报停、解锁--复通 -->
                                 <li><a href="nav_selfstop">预约报停</a></li>
                                <% }%>
                                 <%if(reopen.equals("1")){ %> 
                                 <li><a href="nav_SelfReopen">预约复通</a></li>
                                <% }%>
                                  <%if(serivce.equals("1")){ %> 
                                 <li><a href="nav_servicedefaultbook">预约套餐</a></li>
                                <% }%>
                              </ol>
                       </li>
                          <li><a href="nav_GroupInfo" title="">资费介绍</a>
                               <ol>
                                  <li><a href="#"></a></li>
                                  <li class=""><a href="#"></a></li>
                               </ol>
                         </li>
                      <!--  
                        <li><a href="#" title="">常见故障</a></li>
                        
                         <li><a href="nav_userComplain" title="">自助报障</a></li>
                         -->
                         <%--
                         
                        <li><a href="#" title="">自助留言</a>
                            <!--  
                             <ol>
                                 <li><a href="nav_addMessage">添加留言</a></li>
                                 <li><a href="nav_showMessage">显示留言</a></li>                             
                             </ol> 
                             --><%--
                              <ol>
                                 <li><a href="#">添加留言</a></li>
                                 <li><a href="#">显示留言</a></li>                             
                             </ol> 
                        </li>--%>
                       <!-- <li class=""><a href="nav_mainNotice" title="">公告信息</a></li>  
                       <li class=""><a href="#" title="">公告信息</a></li>-->
               </ul>
              
    </div><!-- end nav_main -->
     <%--<div id="ad"></div>--%>
     
     
    

</body>
</html>