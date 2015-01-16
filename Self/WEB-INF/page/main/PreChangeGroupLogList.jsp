<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>预约套餐日志</title>
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
  <table class="table4" cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
     			<th>操作时间</th>
     			<th>生效日期</th>
     			<th>原套餐</th>
     			<th>预约套餐</th>
     			<th>状态</th>
     			<th>状态变更时间</th>
     			<th>备注</th>
     		</tr>
			</thead>
			<tbody>
				<s:iterator value="changeGroupBeanList">
					<tr>
						<td><s:date name="fldchangedate" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td><s:date name="fldexcutedate" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td><s:property value="flddefaultname1"/></td>
						<td><s:property value="flddefaultname2"/></td>
						<td>
							<s:if test="fldstate==1">
								有效
							</s:if>
							<s:else>
								置废
							</s:else>
						</td>
						<td><s:date name="fldstatedate" format="yyyy-MM-dd HH:mm:ss"/></td>
						<td><s:property value="fldextend"/></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
  </body>
</html>