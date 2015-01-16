<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	
	<style type="text/css">
		.blue { color: blue; }
	
		dl dd {
			margin-left: 10px;
		}

		dl dt {
			font-weight: bold;
		}

		dl {
			/*border: 1px solid black;*/
			margin: 5px;
		}
	</style>
	<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#faq").find("dd").hide().end().find("dt").click(function() {
				//取得当前元素的下一个对象
				var answer = $(this).next().toggleClass("blue");
				//如果这个对象是可见的就slideUp()向上滑动隐藏起来;
				//否则就向下滑动显示出来
				if (answer.is(":visible")) {
					answer.slideUp(500);
				} else {
					answer.slideDown(500);
				}
			});
		});
	</script>
	</head>
<body style="display: none;">
	<div id="main">
		<dl id="faq">
			<!-- 问题描述 -->
			<dt>问题1</dt>
			<!-- 解决方法 -->
			<dd>描述1</dd>
			
			<dt>问题2</dt>
			<dd>描述2</dd>
			
			<dt>问题3</dt>
			<dd>描述3</dd>
			
			<dt>问题4</dt>
			<dd>描述4</dd>
			
			<dt>问题5</dt>
			<dd>描述5</dd>
			
			<dt>问题6</dt>
			<dd>描述6</dd>
			
			<dt>问题7</dt>
			<dd>描述7</dd>
			
			<dt>问题8</dt>
			<dd>描述8</dd>
			
			<dt>问题9</dt>
			<dd>描述9</dd>
			
			<dt>问题10</dt>
			<dd>描述10</dd>
			
			<dt>问题11</dt>
			<dd>描述11</dd>
			
			<dt>问题12</dt>
			<dd>描述12</dd>
			
			<dt>问题13</dt>
			<dd>描述13</dd>
			
			<dt>问题14</dt>
			<dd>描述14</dd>
			
			<dt>问题15</dt>
			<dd>描述15</dd>
			
			<dt>问题16</dt>
			<dd>描述16</dd>
			
			<dt>问题17</dt>
			<dd>描述17</dd>
			
			<dt>问题18</dt>
			<dd>描述18</dd>
		</dl>	
	</div>
</body>
</html>
