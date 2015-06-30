<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/jd.css" />
<link rel="stylesheet" href="css/gdt-style.css" />

<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/jquery-powerSwitch.js"></script>
<title></title>

<script type="text/javascript">
	$(document).ready(function() {
		$(".top_close").click(function() {
			$(".top_tian").css("display", "none");
		});
		$(".folat_user,.rig_folat_l").mouseover(function() {
			$(".rig_folat_l").css("display", "block");
		});
		$(".folat_user,.rig_folat_l").mouseout(function() {
			$(".rig_folat_l").css("display", "none");
		});
		
		// 热门任务前6
		hotTask6();

	});
	
	//打开登陆窗口
	function showLoginWindow() {
		$("#box3_n").css("display", "block");
		$(".box1").css("display", "block");
	}
	//关闭登陆窗口
	function closeLoginWindow() {
		$("#box3_n").css("display", "none");
		$(".box1").css("display", "none");
	}
	
	function login() { // box3_n
		var error_li = $("#box3_n li[class='box_inpt_c']");
		//console.info(error_li);
		$(error_li).text('');
		
		var us_login = $("#box3_n input[name='us_login']").val();
		var us_password = $("#box3_n input[name='us_password']").val();
		
		if(us_login.length == 0) {
			//alert('登录名不能为空');
			$(error_li[0]).text('登录名不能为空');
			return;
		}
		if(us_password.length == 0) {
			//alert('密码不能为空');
			$(error_li[1]).text('密码不能为空');
			return;
		}
		
		$.post('login.do',{
			us_login : us_login,
			us_password : us_password
		},function(data) {
			if(data) {
				if(data.success) {
					location.reload();
				} else {
					if(data.obj == 1) {
						$(error_li[0]).text(data.message);
					} else if(data.obj == 2) {
						$(error_li[1]).text(data.message);
					} else {
						console.info('出错了');
					}
				}
			}
		},'json');
	}
	
	// 热门任务前6
	function hotTask6() {
		$.post('hotTasksTop6.do',function(data) {
			if(data) {
				$.each(data, function(index, task) {
					var imageUrl = 'images/task_20150320.jpg';
					if(task.imageUrl != null) {
						imageUrl = task.imageUrl;
					}
					var html = '<p>'+
									'<a href="recom_task.html">'+
										'<img src="'+imageUrl+'"/>'+
									'</a> '+
									'<a class="bod_lef_rw" href="recom_task.html">'+task.title+'</a><br />'+ 
									'<span style="line-height: 16px; margin-left: 5px; color: #999;">奖励佣金：'+
										'<a class="bod_lef_rw_je_a1">'+task.singmoney+'</a>元'+
									'</span><br /> '+
									'<span class="bod_lef_rw_je">领取次数：'+task.receiveCount +
										'<a class="bod_lef_rw_je_a">[官方推荐]</a>'+
									'</span>'+
								'</p>';
					$('.body_d_l_t1_1 div').append(html);
				});
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
	<div class="top_tian">
		<p class="top_tian_p1">
			为了登录更方便，请把 <span>XXX</span> 保存到桌面，或者 <span>Ctrl + D</span> 收藏网站！<input
				type="button" value="保存到桌面"><input type="button"
				value="收藏到书签">
		</p>
		<p class="top_close">关闭</p>
	</div>
	<iframe src="top.jsp" width="100%" height="98" scrolling="no"
		frameborder="0" target="rightFrame"> 
	</iframe>
	<div class="zxx_body">
		<div class="zxx_constr">
			<div class="jd_body">
				<div id="jdAdSlide" class="jd_ad_slide">
					<!--轮换图片-->
					<a href=""><img src="images/001.jpg" class="jd_ad_img"></a> <a
						href=""><img data-src="images/002.jpg" class="jd_ad_img"></a>
					<div id="jdAdBtn" class="jd_ad_btn"></div>
					<!-- add active -->
				</div>
			</div>
		</div>
	</div>
	<div>
		<div class="body_d">
			<div class="body_d_l">
				<div class="body_d_l_t1">
					<div class="body_l_tit">
						<li class="body_l_tit_xx"></li>
						<li class="body_l_tit_dd">热门任务</li>
					</div>
					<div class="body_d_l_t1_1">
						<div>
						</div>
						<p class="body_d_l_t1_1_gd_a">
							<a href="recommend.jsp">更多任务 >></a>
						</p>
					</div>
				</div>
				<div class="body_d_l_t1">
					<div class="body_l_tit">
						<li class="body_l_tit_xx"></li>
						<li class="body_l_tit_dd">任务大厅</li>
					</div>
					<div>
						<table class="body_l_d2_tab">
							<tr class="body_l_d2">
								<td style="width: 44%">任务标题</td>
								<td style="width: 10%">奖励佣金</td>
								<td style="width: 10%">稿件数量</td>
								<td style="width: 10%">剩余佣金</td>
								<td style="width: 14%">截止时间</td>
								<td style="width: 12%">任务状态</td>
							</tr>
							<tr class="body_l_d2_t">
								<td style="text-align: left;"><dd class="body_l_d2_t_dd">
										<img src="images/tou_img1.jpg">
									</dd>
									<dd class="body_l_d2_t_dd1">
										<a href="task_deta.html" title="任务1任务1任务任务1任务任务1">任务1任务1任务任务1任务任务1</a>
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
						</table>
					</div>
					<p class="body_d_l_t1_1_gd_a">
						<a href="task_hall.html">更多任务 >></a>
					</p>
				</div>
			</div>
			<div class="body_d_r">
				<div class="body_d_r_xb" style="border-radius: 14px 14px 0px 0px;">
					<div class="bod_r_b1">
						<!--登陆成功后信息的展示-->
						<!--<ul class="user_login_h">
                                            <li>
                                                <dd><img src="images/tou_img1.jpg" width="70"></dd>
                                                <dd style="margin-left:6px;">
                                                    <span><a href="" style="color:#333;margin-left:0px;">昵称昵称这样真的好吗？</a></span><br/>
                                                    账户金额：<br/><ei>999.00</ei> 元
                                                </dd><br/>
                                            </li>
                                            <li>总收入：<e>123.0</e>元  <a href="">明细</a></li>
                                            <li>总支出：<e>0.0</e>元 <a href="">明细</a></li>
                                            <li style="width:100%;border-top:dashed 1px #ddd;text-align: center;"><input type="button" value="提现"><input type="button" value="充值"></li>
                                        </ul>-->

						<!--未登陆-->
						<ul style="height: 163px;">
							<li class="bod_r_b1_inp">
								<input type="text" value="邮箱" onfocus="if(this.value=='邮箱') this.value=''" onblur="if(this.value=='')this.value='邮箱'"/>
								<img src="images/login_img1.png"/>
							</li>
							<li class="bod_r_b1_inp">
								<input type="password" value=""/>
								<img src="images/login_img2.png"/>
							</li>
							<li class="bod_r_b1_inp_1">
								<input type="button" value="立 即 登 陆" onclick="showLoginWindow();"/>
							</li>
							<li class="bod_r_b1_inp_2">
								<a href="#">免费注册</a> | 
								<a href="#">忘记密码</a>
							</li>
							<li class="bod_r_b1_inp_4"></li>
						</ul>
					</div>
					<div class="bod_r_b3">
						<p>最新资讯</p>
						<ul>
							<li><a href="#">>网赚项目之下载赚钱，新增20元奖励</a></li>
							<li><a href="#">>2</a></li>
							<li><a href="#">>网3励</a></li>
							<li><a href="#">>网赚4增20元奖励</a></li>
							<li><a href="#">>网赚5</a></li>
							<li><a href="#">>网6下载赚钱，新增20元奖励</a></li>
							<li><a href="#">>网赚项6元奖励</a></li>
							<li><a href="#">>网赚7励</a></li>
						</ul>

					</div>
					<p class="body_d_l_t1_1_gd_a" style="line-height: 25px;">
						<a href="#">更多资讯 >></a>
					</p>
				</div>
				<div class="body_d_r_xb">
					<div class="bod_r_b2">
						<p>最新提现</p>
						<ul id="list_ul">
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>179***196@qq.com</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>135***8234</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>179***196@qq.com</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>135***8234</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>179***196@qq.com</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>135***8234</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>179***196@qq.com</span><br />提现：<a>999</a> 元
								</dd></li>
							<li><dd>
									<img src="images/tou_img2.jpg" width="54px">
								</dd>
								<dd>
									<span>135***8234</span><br />提现：<a>999</a> 元
								</dd></li>
						</ul>
					</div>
				</div>
				<div class="body_d_r_xb">
					<div class="bod_r_b4">
						<p>留言板</p>
						<ul>
							<li>留言类型： <select class="select_index">
									<option value="0">咨询</option>
									<option value="1">建议</option>
									<option value="2">投诉</option>
									<option value="3">合作</option>
									<option value="4">其他</option>
							</select>
							</li>
							<li style="margin-top: 12px;">留言内容：</li>
							<li><textarea maxlength="150"></textarea></li>
							<li style="text-align: right;"><input type="button"
								value="发   表"></li>
							<li style="color: #666; font-size: 12px; margin-top: 8px;">希望您给出宝贵建议，本站会视情修改，并给与留言者一定的奖励！<span
								style="color: red;">(声明：恶意使用留言板发表建议者，严重者封号处理！)</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="body_d_fo">
				<div class="body_l_tit">
					<li class="body_l_tit_xx"></li>
					<li class="body_l_tit_dd">友情链接</li>
				</div>
				<ul class="body_d_fo_uls">
					<li><a href="#">友情链接接接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
					<li><a href="#">友情链接</a></li>
				</ul>
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
	<!--登陆弹框1-->
	<div id="box3_n">
		<p class="box2_n_tit" style="margin-bottom: 30px;">
			欢迎登陆XXX！
			<img src="images/btn_box_c.jpg" style="float: right; cursor: pointer;" id="box_c" onclick="closeLoginWindow();">
		</p>
		<p class="box2_n_ipt">
			<li style="width: 100px; float: left; text-align: right; line-height: 30px; margin-left: 40px;">邮箱:</li>
			<li><input type="text" class="box_2_ipu" name="us_login"/></li> <br />
			<li class="box_inpt_c"></li>
		</p>
		<p class="box2_n_ipt">
			<li
				style="width: 100px; float: left; text-align: right; line-height: 30px; margin-left: 40px;">密码:</li>
			<li><input type="password" class="box_2_ipu" name="us_password"/></li> <br />
			<li class="box_inpt_c"></li>
		</p>
		<p
			style="padding-left: 150px; font-size: 12px; line-height: 15px; folat: left;">
			<input type="checkbox"> &nbsp;记住密码 
		</p>
		<p class="box_btn_r" style="folat: left;">
			<input type="button" value="立即登陆" class="login_btnn" onclick="login();"/>
		</p>
		<p class="login_foot">
			<a href="#" style="color: red;">免费注册</a><a href="#">找回密码</a><a
				href="#">帮助中心</a>
		</p>
	</div>
	<div class="box1"></div>
	<!--遮盖成-->
	
	<script>
		// 大的图片广告
		// 根据图片创建id,按钮元素等，实际开发建议使用JSON数据类似
		var htmlAdBtn = '';
		$("#jdAdSlide img")
				.each(
						function(index, image) {
							var id = "adImage" + index;
							htmlAdBtn = htmlAdBtn
									+ '<a href="javascript:" class="jd_ad_btn_a" data-rel="'+ id +'">'
									+ (index + 1) + '</a>';
							image.id = id;
						});
		$("#jdAdBtn").html(htmlAdBtn).find("a").powerSwitch({
			eventType : "hover",
			classAdd : "active",
			animation : "fade",
			autoTime : 4000,
			onSwitch : function(image) {
				if (!image.attr("src")) {
					image.attr("src", image.attr("data-src"));
				}
			}
		}).eq(0).trigger("mouseover");

		// 便民服务
		$("#servNav a").powerSwitch({
			classAdd : "active",
			eventType : "hover",
			onSwitch : function() {
				$("#pointLine").animate({
					"left" : $(this).position().left
				}, 200);
			}
		});
	</script>
	<script type="text/javascript">
		function getWinSize() {
			var winHeight = window.innerHeight, winWidth = window.innerWidth;
			if (document.documentElement.clientHeight) {
				winHeight = document.documentElement.clientHeight;
				winWidth = document.documentElement.clientWidth;
			} else {
				winHeight = document.body.clientHeight;
				winWidth = document.body.clientWidth;
			}

			var banner_l = (1920 - winWidth) / 2;
			$(".jd_ad_img").css("margin-left", "-" + banner_l + "px");

			var box2_l = (winWidth - 512) / 2;
			var box2_t = (winHeight - 380) / 2;
			$("#box2_n").css("left", box2_l + "px");
			$("#box2_n").css("top", box2_t + "px");
			$("#box3_n").css("left", box2_l + "px");
			$("#box3_n").css("top", box2_t + "px");
		}
		getWinSize();
		window.onresize = getWinSize;
	</script>
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

