/*----------
 * 本脚本为 自服务3.0.1.0版 换肤功能脚本
 * 一、为保证换肤功能的正常,须遵循以下规则
 * 1.页面中与换肤相关的资源必须添加 skin="true"用skinResource="指向资源文件的文件名" 两个属性。
 *   如<link skinResource="css/main.css" rel="stylesheet" type="text/css" skin="true" />
 * 2.浏览器没有禁用cookies
 * 3.注意皮肤包的格式,应包含icon.gif图标,css文件夹,images文件夹
 * 4.此脚本基于jquery.js包
 * 
 * 二、添加一套皮肤,只需要将格式正确的皮肤包置于 WEB-INF/style/ 目录下,刷新界面即可看到该皮肤的选项
 * 
 -----------*/
$(function(){
	var skin_close = true;
	$.setSkin();
	$("html").mouseup(function(){
		if(skin_close){
			$("#skinSelector").fadeOut("slow");
		}
	});
	$("#skinSelector").mouseover(function(){
		skin_close = false;
	});
	$("#skinSelector").mouseout(function(){
		skin_close = true;
	});
	$("#skinBtn").mouseover(function(){
		skin_close = false;
		$("#skinSelector").fadeIn("slow");
		var offset = $("#skinBtn").offset();
		$("#skinSelector").offset({ top: offset.top + 20, left: (offset.left - $("#skinSelector").width() + 12) });
		$.markSkin();
	});
	$("#skinBtn").mouseout(function(){
		skin_close = true;
	});
	$.getSkinList();
});
$.extend({
	DEFAULT_SKIN : "style/blue/",
	VIEW_SKIN : "",
	getSkin : function(){
		var skin = $.cookie("mySkin");
		if(skin == null || skin == "" || skin == "null"){
			skin = $.DEFAULT_SKIN;
		}
		return skin;
	},
	markSkin : function(){
		$("#skin_context img").each(function(){
			var temp = "style/" + $(this).attr("skin") + "/";
			if(temp == $.getSkin()){
				var offset = $(this).offset();
				$("#currentSkin_icon").offset({ top: offset.top + 50, left: offset.left + 30 });
				$("#skin_context img").attr("class", "skin_img_general");
				$(this).attr("class", "skin_img_mouseover");
			}
		});
	},
	setSkin : function(){
		$("body").hide();
		$("link").filter("[skin='true']").attr("href", function(){
			var skin = $.getSkin();
			if($.VIEW_SKIN != null && $.VIEW_SKIN != ""){
				skin = $.VIEW_SKIN;
			}
			return skin + $(this).attr("skinResource");
		});
		$("img").filter("[skin='true']").attr("src", function(){
			var skin = $.getSkin();
			if($.VIEW_SKIN != null && $.VIEW_SKIN != ""){
				skin = $.VIEW_SKIN;
			}
			return skin + $(this).attr("skinResource");
		});
		$("body").show();
	},
	getSkinList : function(){
		$.getJSON("getSkinList", function(data){
			var html = "";
			for(var i = 0; i < data.note.length; i++){
				html += "<img src='style/"+ data.note[i] +"/icon.gif' class='skin_img_general' skin='"+ data.note[i] +"'/>";
			}
			$("#skin_context").html(html);
			$("#skin_context img").mouseover(function(){
				$(this).attr("class", "skin_img_mouseover");
				$.VIEW_SKIN = "style/" + $(this).attr("skin") + "/";
				$.setSkin();
			});
			$("#skin_context img").mouseout(function(){
				var temp = "style/" + $(this).attr("skin") + "/";
				if(temp != $.getSkin()){
					$(this).attr("class", "skin_img_general");
				}
				$.VIEW_SKIN = "";
				$.setSkin();
			});
			$("#skin_context img").click(function(){
				$.cookie("mySkin", "style/" + $(this).attr("skin") + "/", { expires: 365 });
				$.markSkin();
				$.setSkin();
			});
		});
	}
});