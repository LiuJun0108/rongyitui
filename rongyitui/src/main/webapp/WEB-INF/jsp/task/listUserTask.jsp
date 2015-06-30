<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />

<script src="js/jquery-1.9.1.js" type="text/javascript"></script>

<title></title>

<script type="text/javascript">
	var type = 0;
	var pageNo = 1;
	var pageSize = 5;
	var pageCount = 1;
	$(function() {
		ajaxListTask(type, pageNo, pageSize);
		ajaxCountTask(type);
	});
	
	function ajaxCountTask(type) {
		$.post('countUserTask.do', {
			type : type
		}, function(data) {
			if(data) {
				console.info(data);
				$('.zhxx_b1_ul_li1 span a').each(function(index) {
					$(this).text(data[index]);
				});
			}
		},'json');
	}
	
	function ajaxListTask(type, pageNo) {
		if(pageNo < 1) {
			return ;
		}
		if(pageNo > pageCount) {
			return ;
		}
		$.post('listUserTask.do', {
			type : type,
			pageNo : pageNo,
			pageSize : pageSize
		},function(data) {
			if(data) {
				$('.zhmx_b1_tab1').empty();
				$('.zhmx_b1_tab1').append('<tr style="background-color: #f7f7f7"><th width="10%">任务编号</th><th width="25%">任务标题</th><th width="10%">任务总价</th><th width="15%">完成进度</th><th width="10%">剩余金额</th><th width="15%">到期时间</th><th width="15%">任务状态</th></tr>');
				$.each(data.list, function(index, task) {
					var html = '<tr>' + 
						'<td>188888</td>' + 
						'<td style="text-align: left;">'+task.title+'</td>' + 
						'<td>'+task.allmoney+'</td>' + 
						'<td><span style="color: #83bb4a;">5</span> / 20</td>' + 
						'<td><span style="color: red">666.66</span></td>' + 
						'<td>'+task.endtime+'</td>' + 
						'<td>已结束</td>' +
					'</tr>';
					$('.zhmx_b1_tab1').append(html);
				});
				pageCount = data.pageCount;
				var pageHtml = '<tr>' +
					'<td colspan="7" style="border-bottom: 0px;" class="tab_fenye">' + 
						'<span style="color: #00c0e4" title="首页" onclick="ajaxListTask('+type+');">首页</span>' + 
						'<span style="color: #00c0e4" title="上一页" onclick="ajaxListTask('+type+','+(data.pageNo-1)+');">上一页</span>' + 
						'<a>'+data.pageNo+'</a><a>/</a><a style="color: red;">'+data.pageCount+'</a>' + 
						'<span style="color: #00c0e4" title="下一页" onclick="ajaxListTask('+type+','+(data.pageNo+1)+');">下一页</span>' + 
						'<span style="color: #00c0e4" title="末页" onclick="ajaxListTask('+type+','+(data.pageCount)+');">末页</span>' + 
					'</td>' + 
				'</tr>';
				$('.zhmx_b1_tab1').append(pageHtml);
			}
		},'json');
	}
	
	function tabClick(type, obj) {
		$('.zhxx_b3_ul1 li').removeAttr("style");
		$(obj).css({ 'background-color' : '#fff', 'color' : '#000', 'border-bottom' : 'solid 1px #fff', 'margin-left' : '36px' });
		ajaxListTask(type);
	}
	
</script>
<style>
body {
	font-family: '微软雅黑';
	width: 100%;
	background-color: #eeeeee;
	font-size: 12px;
	color: #666;
}

.zhmx_b1_tab1 {
	width: 90%;
	margin: 0px auto;
}

.zhmx_b1_tab1 tr td {
	text-align: center;
	line-height: 32px;
	border-bottom: dashed 1px #ececec;
}

.zhmx_b1_tab1 tr th {
	line-height: 32px;
}

.tab_fenye span {
	margin-left: 16px;
	cursor: pointer;
	line-height: 60px;
}

.tab_fenye a {
	margin-left: 12px;
	color: #333;
}
</style>

</head>
<body>
	<div class="center_b">
		<div class="bod_tit_dang">
			<span>当前位置：</span> <a href="inde.jsp">首页 > </a><a href="account.html"
				target="rightFrame">个人中心 > </a>
			<ins style="text-decoration: none;">发布的任务</ins>
		</div>
		<div class="cen_body">
			<div style="float: left; width: 202px;">
				<iframe src="left.html" width="202px" height="800px;" scrolling="no"
					frameborder="0" name="rightFrame" id="rightFrame"
					title="rightFrame"> </iframe>
				<!--left_form-->
			</div>
			<div class="cen_body_right">

				<div class="center_tit_d">
					<p class="center_tit_dtit">我发布的任务</p>
					<ul class="sjwvip_ul1">
						<li class="zhxx_b1_ul_li1">任务状态： 
						<span>全部任务 （<a href="">0</a>） 个
						</span><span>进行中的 （<a href="">0</a>） 个
						</span><span>未审核 （<a href="">0</a>） 个
						</span><span>已审核 （<a href="">0</a>） 个
						</span><span>已结束任务 （<a href="">0</a>） 个
						</span></li>
					</ul>

					<ul class="zhxx_b3_ul1">
						<li onclick="tabClick(0, this)" style="background-color: #fff; color: #000; border-bottom: solid 1px #fff; margin-left: 36px;">全部任务</li>
						<li onclick="tabClick(1, this)">进行中的</li>
						<li onclick="tabClick(2, this)">未审核</li>
						<li onclick="tabClick(3, this)">已审核</li>
						<li onclick="tabClick(4, this)">已结束任务</li>
					</ul>
					<table class="zhmx_b1_tab1">
						<!-- <tr style="background-color: #f7f7f7">
							<th width="10%">任务编号</th>
							<th width="25%">任务标题</th>
							<th width="10%">任务总价</th>
							<th width="15%">完成进度</th>
							<th width="10%">剩余金额</th>
							<th width="15%">到期时间</th>
							<th width="15%">任务状态</th>
						</tr>
						<tr>
							<td>188888</td>
							<td style="text-align: left;">完成XXX事件</td>
							<td>888.88</td>
							<td><span style="color: #83bb4a;">5</span> / 20</td>
							<td><span style="color: red">666.66</span></td>
							<td>2015-3-30 18:08</td>
							<td><span style="color: #00c0e4;">进行中</span></td>
						</tr>
						<tr>
							<td colspan="7" style="border-bottom: 0px;" class="tab_fenye">
								<span style="color: #00c0e4" title="首页">首页</span>
								<span style="color: #00c0e4" title="上一页">上一页</span>
								<a id="pageNo"></a><a>/</a><a style="color: red;" id="pageCount"></a>
								<span style="color: #00c0e4" title="下一页">下一页</span>
								<span style="color: #00c0e4" title="末页">末页</span>
							</td>
						</tr> -->
					</table>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
