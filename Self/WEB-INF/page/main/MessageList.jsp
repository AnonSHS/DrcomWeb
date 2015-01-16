<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link rel="stylesheet" href="css/default/MessageList.css" type="text/css"/>
	<link rel="stylesheet" href="css/default/blue/style.css" type="text/css"/>
	<script type="text/javascript" src="js/jquery-latest.js"></script>
	<script type="text/javascript" src="js/jquery.tablesorter.js"></script>
	<script type="text/javascript" src="addons/pager/jquery.tablesorter.pager.js"></script>
	<script type="text/javascript" src="js/chili/chili-1.8b.js"></script>
	<script type="text/javascript" src="js/docs.js"></script>
	<script type="text/javascript">
	$(function() {
		$("table")
			.tablesorter({widthFixed: true, widgets: ['zebra']})
			.tablesorterPager({container: $("#pager")});
	});
	</script>
  </head>
  
  <body style="display: none;">
     <div id="main"> 
       <table style="" id="" class="tablesorter">
       	<thead>
	      <tr>
	      	<th>留言日期</th>
	      	<th>留言标题</th>
	        <th>留言类别</th>
	        <th>联系电话</th>
	        <th>回复日期</th>
	        <th>回复人员</th>
	        <th>处理结果</th>
	        <th>信息状态</th>
	      </tr>
        </thead>
        <tbody>
        	<s:if test="messageList == null || messageList.size() == 0">
        		<tr></tr>
        	</s:if>
        	<s:else>
        		<s:iterator value="messageList">
        			<tr>
        				<td><s:date name="fldcreatedate" format="yyyy-MM-dd HH:mm:ss"/></td>
        				<td><s:property value="fldtitle"/></td>
								<td><s:property value="messageType.fldname"/></td>
								<td><s:property value="fldconnectphone"/></td>
								<td><s:date name="fldreturndate" format="yyyy-MM-dd HH:mm:ss"/></td>
								<td><s:property value="fldreturner"/></td>
								<td><s:property value="fldreturnword"/></td>
								<td><s:property value="messageStatus.fldname"/></td>
        			</tr>
        		</s:iterator>
        	</s:else>
				</tbody>
        </table>
        <div id="pager" class="pager">
							<form>
								<img src="addons/pager/icons/first.png" class="first"/>
								<img src="addons/pager/icons/prev.png" class="prev"/>
								<input type="text" class="pagedisplay" readonly="readonly"/>
								<img src="addons/pager/icons/next.png" class="next"/>
								<img src="addons/pager/icons/last.png" class="last"/>
								<select class="pagesize">
									<option  value="10" selected="selected">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option  value="40">40</option>
								</select>
							</form>
						</div>
    </div>
  </body>
</html>
