$(document).ready(function() {
				$('#example').dataTable({
						"bAutoWidth" : false, // 不自动计算列宽度
			//	"bStateSave": true,
			    "bLengthChange":true,
				"bProcessing": true,
				"sPaginationType": "full_numbers",
				"iDisplayLength" :100,
				"aLengthMenu": [[50,100,150,200, -1], [50,100,150,200, "全部"]],
				"sDom": '<"top"iflp<"clear">>rt<"bottom"iflp<"clear">>',
				"aaSorting": [[ 0, "desc" ]],
				"oLanguage" : { // 汉化
						"sLengthMenu" : "调整每页显示 _MENU_ 条记录",
						"sZeroRecords" : "没有检索到数据",
						"sInfo" : "当前数据为从第 _START_ 到第 _END_条；总共有 _TOTAL_ 条记录,",
						"sInfoEmpty" : "当前共0条记录",
						"sProcessing" : "正在加载数据...",
						"sSearch": "模糊过滤条件",
						"sInfoFiltered": "(总共从 _MAX_ 条信息得到过滤)",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前页",
							"sNext" : "后页",
							"sLast" : "尾页"
						}
					}
				});
			} );