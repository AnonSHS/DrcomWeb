<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>交费情况</title>
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
	<s:form id="form" action="ExUserPayAction" method="post" theme="simple" namespace="/">
		<s:hidden name="type"></s:hidden>
  	<s:hidden name="month"></s:hidden>
  	<s:hidden name="startDate"></s:hidden>
  	<s:hidden name="endDate"></s:hidden>
   <table class="table1"  border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td class="t_l">汇总统计--时间段(<s:property value="paymodel.field8"/>)</td>
	    <td class="t_r"></td>
	    <td class="t_r"><a href="#" onclick='$("#form").submit();'>导出Excel</a></td>
	  </tr>
	</table>
	</s:form>
		<table class="table2"  border="0" cellspacing="0" cellpadding="0">
 			<tr>
				<td>金额(元)</td>
				<td><font class="redtext"><s:property value="paymodel.field1"/></font></td>
			</tr>
		</table>
  	<table class="table4" cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
			   	<th style="width: 150px;">交费时间</th>
			    <th>金额</th>
			    <th>交费类型</th>
			    <th>受理终端</th>
			    <th style="width: 350px;">备注</th>
			  </tr>
			</thead>
			<tbody>
				<s:iterator value="userPayList" var="pay">
					<tr>
						<td style="width: 150px;"><s:date name="#pay[0]" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td style="width: 50px;" class="number" align="right">
							<s:text name="global.format.money">
								<s:param value="#pay[2]"/>
							</s:text>
						</td>
						<td style="width: 100px;"><s:property value="#pay[1]" /></td>
						<td style="width: 100px;"><s:property value="#pay[3]" /></td>
						<td style="width: 400px;"><s:property value="#pay[4]" /></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
  </body>
</html>