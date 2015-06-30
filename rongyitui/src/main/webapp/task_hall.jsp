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
		
		pageUserTask();
	});
	
	function pageUserTask() {
		alert('aaaaa');
		var type;
		var reward;
		var cycle;
		$.each($('.taskhall_ul li'), function(index, li) {
			var span = $(li).find('span[class=\'taskhall_ul_qb\']');
			if(index == 0) {
				type = span.attr('value');
			} else if(index == 1) {
				reward = span.attr('value');
			} else {
				cycle = span.attr('value');
			}
		});
		
		$.post('pageUserTask.do',{
			type : type,
			reward : reward,
			cycle : cycle
		},function(data) {
			if(data) {
				console.info(data);
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
			<span>当前位置：</span> <a href="">首页 > </a>
			<ins style="text-decoration: none;">任务大厅</ins>
		</div>
		<div class="commdtask_b1">
			<div class="taskhall_b1">
				<ul class="body_l_tit">
					<li class="body_l_tit_xx"></li>
					<li class="body_l_tit_dd">任务筛选</li>
				</ul>
				<ul class="taskhall_ul">
					<li><a>任务类型：</a><span class="taskhall_ul_qb" value="0">全部</span><span value="1">填写问卷</span><span value="2">体验任务</span><span value="3">看广告</span></li>
					<li><a>任务奖励：</a><span class="taskhall_ul_qb" value="0">全部</span><span value="1">5元以下</span><span value="2">5-10元之间</span><span value="3">11-50元之间</span><span value="4">51元以上</span></li>
					<li><a>任务周期：</a><span class="taskhall_ul_qb" value="0">全部</span><span value="1">7天之内</span><span value="2">7-10天之间</span><span value="3">11-14天之间</span><span value="4">15天以上</span></li>
				</ul>
			</div>
			<div class="commdtask_b1_x1">
				<ul class="body_l_tit">
					<li class="body_l_tit_xx"></li>
					<li class="body_l_tit_dd">任务大厅</li>
				</ul>
				<table class="body_l_d2_tab">
					<tr class="body_l_d2">
						<td style="width: 44%">任务标题</td>
						<td style="width: 10%">奖励佣金</td>
						<td style="width: 10%">任务数量</td>
						<td style="width: 10%">剩余佣金</td>
						<td style="width: 14%">截止时间</td>
						<td style="width: 12%">任务状态</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img1.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img1.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img1.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img1.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr class="body_l_d2_t">
						<td style="text-align: left;"><dd class="body_l_d2_t_dd">
								<img src="images/tou_img2.jpg">
							</dd>
							<dd class="body_l_d2_t_dd1">
								<a href="#" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
							</dd></td>
						<td style="color: #FF5A00">￥200</td>
						<td>20</td>
						<td style="color: #FF5A00">￥100</td>
						<td style="">2014-12-12</td>
						<td style="color: #008001">进行中</td>
					</tr>
					<tr>
						<td colspan="8" class="fenye_span">
							<dd>
								<span title="上一页">上一页</span> <span
									style="background-color: #03a9f4; color: #fff;">1</span> <span>2</span>
								<span>3</span> <span>4</span> <span>5</span> <a>...</a> <span>87</span>
								<span>88</span> <span title="下一页">下一页</span>
							</dd>
						</td>
					</tr>
				</table>
			</div>

		</div>
		<div class="commdtask_b2"
			style="border-width: 0px; background-color: #eeeeee;">
			<div class="task_hall_b1">
				<div class="body_l_tit">
					<li class="body_l_tit_xx"></li>
					<li class="body_l_tit_dd">收入排行榜</li>
				</div>
				<p class="taskhall_b2_ul_p">
					<span>排名</span><span>用户名</span><span>获得奖励</span>
				</p>
				<ul class="taskhall_b2_ul">
					<li><span>1</span><span>139118***</span><span
						style="color: red;">888888</span></li>
					<li><span>2</span><span>139118***</span><span
						style="color: red;">88888</span></li>
					<li><span>3</span><span>139118***</span><span
						style="color: red;">8888</span></li>
					<li><span>4</span><span>139118***</span><span
						style="color: red;">888</span></li>
					<li><span>5</span><span>139118***</span><span
						style="color: red;">88</span></li>
					<li><span>6</span><span>139118***</span><span
						style="color: red;">87</span></li>
					<li><span>7</span><span>139118***</span><span
						style="color: red;">68</span></li>
					<li><span>8</span><span>139118***</span><span
						style="color: red;">58</span></li>
					<li><span>9</span><span>139118***</span><span
						style="color: red;">48</span></li>
					<li><span>10</span><span>139118***</span><span
						style="color: red;">38</span></li>
					<li><span>11</span><span>139118***</span><span
						style="color: red;">28</span></li>
					<li><span>12</span><span>139118***</span><span
						style="color: red;">18</span></li>
					<li><span>13</span><span>139118***</span><span
						style="color: red;">14</span></li>
					<li><span>14</span><span>139118***</span><span
						style="color: red;">8</span></li>
					<li><span>15</span><span>139118***</span><span
						style="color: red;">1</span></li>
				</ul>
			</div>
			<div class="body_d_r_xb">
				<div class="bod_r_b2">
					<p>正在发生</p>
					<ul id="list_ul">
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
						<li><dd>
								<img src="images/tou_img2.jpg" width="54px">
							</dd>
							<dd>
								<span>都干什***么呢额</span><br />提现：<a>999</a> 元
							</dd></li>
					</ul>
				</div>
			</div>
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
	<script>
		var c, _ = Function;
		with (o = document.getElementById("list_ul")) {
			innerHTML += innerHTML;
			onmouseover = _("c=1");
			onmouseout = _("c=0");
		}
		(F = _("if(#%18||!c)#++,#%=o.scrollHeight>>1;setTimeout(F,#%68?10:1500);"
				.replace(/#/g, "o.scrollTop")))();
	</script>
</body>
</html>

