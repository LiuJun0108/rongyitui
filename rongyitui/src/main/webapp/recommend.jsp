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
	$(document).ready(function() {
		$(".top_close").click(function() {
			$(".top_tian").css("display", "none");
		});
		
		listRecommendTask();
	});
	
	// 取官方推荐任务
	function listRecommendTask() {
		$.post('recommend.do', function(data) {
			if(data) {
				$.each(data, function(index, task) {
					var imageUrl = 'images/task_20150320.jpg';
					if(task.imageUrl != null) {
						imageUrl = task.imageUrl;
					}
					var officialCandidates = '[官方推荐]';
					if(task.officialCandidates == false) {
						officialCandidates = '-';
					}
					var html = '<li>'+
									'<dd>'+
										'<a href="task_deta.html?id='+task.id+'"><img src="'+imageUrl+'" width="200px"></a>'+
									'</dd>'+
									'<dd style="margin-top: 0px;">'+
										'<span><a href="">'+task.title+'</a></span><br />'+ 
										'<span>任务奖励:<e>'+task.singmoney+'</e>元 </span><br /> '+
										'<span>领取：'+task.receiveCount+' 次</span><br /> '+
										'<span>审核时间：2 天</span> '+
										'<span>'+
											'<a href=""><input type="button" value="立即领取"></a>'+
										'</span>'+
									'</dd>'+
								'</li>'
					$('.commd_b1_d').append(html);
				})
			}
		},'json');
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

a:hover {
	text-decoration: none;
}
</style>

</head>
<body>
	<iframe src="top.jsp" width="100%" height="98" scrolling="no"
		frameborder="0" target="rightFrame"> </iframe>
	<div style="margin: 0px auto; width: 1000px;">
		<div class="bod_tit_dang">
			<span>当前位置：</span> <a href="inde.jsp">首页 > </a>
			<ins style="text-decoration: none;">推荐任务</ins>
		</div>

		<div class="commd_b1">
			<div class="body_l_tit">
				<li class="body_l_tit_xx"></li>
				<li class="body_l_tit_dd">推荐任务</li>
			</div>
			<ul class="commd_b1_d">
			</ul>
		</div>
	</div>
	<div class="foot">
		<li><a href="">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">用户公约</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="">意见反馈</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">帮助中心</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="">友情链接</a></li>
		<li class="foot_i1">版权所有：XXX信息传媒有限公司<a href="">粤ICP备12008262号-2</a><a>增值电信业务经营许可证
				粤B2-20120564 </a>
		</li>
		<li class="foot_i2"><img src="images/ft_img1.png"> <img
			src="images/ft_img2.png"> <img src="images/ft_img3.png">
			<img src="images/ft_img4.png"></li>
	</div>

</body>
</html>

