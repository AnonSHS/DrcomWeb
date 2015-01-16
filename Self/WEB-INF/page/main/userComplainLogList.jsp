<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>自助报障记录</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<script type="text/javascript" language="javascript" src="js/jquery-1.6.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" src="js/dtable.js"></script>
		<link skinResource="css/table.css" rel="stylesheet" type="text/css" skin="true" />
		<script type="text/javascript" src="js/jqueryCookie.js"></script>
		<script type="text/javascript" src="js/skin.js"></script>
		<style type="text/css" title="currentStyle">
			@import "css/demo_page.css";
			@import "css/demo_table.css";
		</style>
  </head>
  <body style="display: none;">
  <table class="table4" cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
					<th>报障日期</th>
					<th>故障类型</th>
					<th>故障标题</th>
					<th>联系人</th>
					<th>联系电话</th>
					<th>故障描述</th>
					<th>处理状态</th>
					<th>状态日期</th>
					<th>状态操作员</th>
					<th>状态备注</th>
					<th>维修人员</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="tblUserComplainList">
					<tr>
						<td><s:date name="fldcomplaindate" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td><s:property value="fldcomplaindescribe"/></td>
						<td><s:property value="fldtitle"/></td>
						<td><s:property value="fldcontactor"/></td>
						<td><s:property value="fldcontactphone"/></td>
						<td><s:property value="fldcomplaintext"/></td>
						<td>
							<s:if test="fldstatus == 0">
								未处理
							</s:if>
							<s:elseif test="fldstatus == 1">
								处理中
							</s:elseif>
							<s:else>
								处理完成
							</s:else>
						</td>
						<td><s:date name="fldstatusdate" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td><s:property value="fldstatusworkername"/></td>
						<td><s:property value="fldstatusreason"/></td>
						<td><s:property value="fldrepairworkname"/></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
  </body>
</html>