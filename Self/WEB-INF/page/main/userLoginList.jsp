<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>上网详单</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<link skinResource="css/table.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" language="javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" src="js/dtable.js"></script>
		<style type="text/css" title="currentStyle">
			@import "css/demo_page.css";
			@import "css/demo_table.css";
		</style>
  </head>
  
  <body style="display: none;">
  <s:form id="form" action="ExUserLoginLogAction" method="post" theme="simple" namespace="/">
  	<s:hidden name="type"></s:hidden>
  	<s:hidden name="month"></s:hidden>
  	<s:hidden name="startDate"></s:hidden>
  	<s:hidden name="endDate"></s:hidden>
  <table class="table1"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="t_l">汇总统计--时间段：(<s:property value="loginStc.field8"/>)</td>
    <td class="t_r"></td>
    <td class="t_r"><a href="#" onclick='$("#form").submit();'>导出Excel</a></td>
  </tr>
	</table>
	</s:form>
	  <table class="table2"  border="0" cellspacing="0" cellpadding="0">
			<tr>
			   <td>国际上行(MB)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field1"/></font></td>
			   <td>国际下行(MB)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field2"/></font></td>
			   <td>国内上行(MB)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field3"/></font></td>
			   <td>国内下行(MB)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field4"/></font></td>
			   <td>使用流量(MB)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field5"/></font></td>
			   <td>计费金额(元)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field6"/></font></td>
			   <td>使用时长(分)</td>
			   <td align="right"><font class="redtext"><s:property value="loginStc.field7"/></font></td>
			</tr>
	  </table>
	  <br/><br/>
    <table class="table4" cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
					<th>上线时间</th>
     			<th>下线时间</th>
     			<th>使用时长(分钟)</th>
     			<th>使用流量(MB)</th>
     			<th>计费金额(元)</th>
     			<th>国际上行流量(MB)</th>
     			<th>国际下行流量(MB)</th>
     			<th>国内上行流量(MB)</th>
     			<th>国内下行流量(MB)</th>
     			<th>登录所在IP</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="userLoginLogList">
					<tr>
						<td><s:date name="fldlogintime" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td><s:date name="fldlogouttime" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td class="number" align="right">
							<s:text name="global.format.min">
								<s:param value="fldtime"/>
							</s:text>
						</td>
						<td class="number" align="right">
							<s:text name="global.format.flow">
								<s:param value="fldflow"/>
							</s:text>
						</td>
						<td class="number" align="right">
							<s:text name="global.format.money">
								<s:param value="fldcostmoney"/>
							</s:text>
						</td>
						<td class="number" align="right">
							<s:text name="global.format.flow">
								<s:param value="fldinternetupflow"/>
							</s:text>
						</td>
						<td class="number" align="right">
							<s:text name="global.format.flow">
								<s:param value="fldinternetdownflow"/>
							</s:text>
						</td>
						<td class="number" align="right">
							<s:text name="global.format.flow">
								<s:param value="fldchinanetupflow"/>
							</s:text>
						</td>
						<td class="number" align="right">
							<s:text name="global.format.flow">
								<s:param value="fldchinanetdownflow"/>
							</s:text>
						</td>
						<td><s:property value="flduserip"/></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
  </body>
</html>
