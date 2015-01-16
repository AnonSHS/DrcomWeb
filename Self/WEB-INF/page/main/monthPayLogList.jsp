<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>扣费账单</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<link skinResource="css/table.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" src="js/dtable.js"></script>
		<style type="text/css" title="currentStyle"　>
			@import "css/demo_page.css";
			@import "css/demo_table.css";
		</style>
  </head>
	<body style="display: none;">
		<table class="table1" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td class="t_l">汇总统计--时间段(<s:property value="monthPayStc.field8"/>)</td>
				<td class="t_r">&nbsp;</td>
				<td class="t_r">
					<s:form id="form" action="ExMonthPayAction" method="post" theme="simple" namespace="/">
						<s:hidden name="year"></s:hidden>
						<a href="#" onclick='$("#form").submit();'>导出Excel</a>
					</s:form>
				</td>
			</tr>
		</table>
		<table class="table2"  border="0" cellspacing="0" cellpadding="0">    
			<tr>
				<td align="right">基本月租(元)</td>
				<td align="right" ><font class="redtext"><s:property value="monthPayStc.field1"/></font></td>
				<td align="right">时长/流量计费（元）</td>
				<td align="right"　><font class="redtext"><s:property value="monthPayStc.field4"/></font></td>
				<td align="right">使用时长(分钟)</td>
				<td align="right"　><font class="redtext"><s:property value="monthPayStc.field3"/></font></td>
				<td align="right">流量(MB)</td>
				<td align="right"><font class="redtext"><s:property value="monthPayStc.field2"/></font></td>
			</tr>
		</table>
		<br/><br/>
		<table class="table4"  border="0" cellspacing="0" cellpadding="0" id="example">
			<thead>
				<tr>
					<th>账单开始时间</th>
					<th>账单结束时间</th>
					<th>套餐</th>
					<th>基本月租(元)</th>
					<th>时长/流量计费（元）</th>
					<th>使用时长(分钟)</th>
					<th>使用流量(MB)</th>
					<th>出账时间</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="monthPayList" var="monthPay">
			  	<tr>
					<td><s:date name="#monthPay[0]" format="yyyy-MM-dd"/></td>
					<td><s:date name="#monthPay[1]" format="yyyy-MM-dd"/></td>
					<td>
						<s:property value="#monthPay[2]"/>
					</td>
					<td class="number" align="right">
          	<s:text name="global.format.money">
							<s:param value="#monthPay[3]"/>
						</s:text>
					</td>
					<td class="number" align="right">
          	<s:text name="global.format.money">
							<s:param value="#monthPay[4]"/>
						</s:text>
					</td>
					<td class="number" align="right">
						<s:text name="global.format.min">
							<s:param value="#monthPay[5]"/>
						</s:text>
					</td>
					<td class="number" align="right">
          	<s:text name="global.format.flow">
							<s:param value="#monthPay[6]"/>
						</s:text>
					</td>
					<td><s:date name="#monthPay[7]" format="yyyy-MM-dd HH:mm:ss"/></td>
			  	</tr>
				</s:iterator>
			</tbody>
		</table>
  </body>
</html>
