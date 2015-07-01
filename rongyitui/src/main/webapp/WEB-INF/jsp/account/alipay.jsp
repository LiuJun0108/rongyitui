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
		$(".select_dom option").click(function() {
			var upg_vip_optval = $(this).val();
			var upg_vip_jine = upg_vip_optval * 5;
			$(".sjwvip_ul2_li_jinea").html(upg_vip_jine);
		});
	});
</script>
<style>
body {
	font-family: '微软雅黑';
	width: 100%;
	background-color: #eeeeee;
	font-size: 12px;
	color: #666;
}
</style>

</head>
<body>
	<div class="center_b">
		<div class="bod_tit_dang">
			<span>当前位置：</span> <a href="">首页 > </a><a href="account.html"
				target="rightFrame">个人中心 > </a>
			<ins style="text-decoration: none;">账户信息</ins>
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
					<p class="center_tit_dtit">绑定支付宝</p>
					<ul class="sjwvip_ul1">
						<li style="color: #000;">公告：</li>
						<li>1. 一个提现支付宝账号只能绑定 <span>一个XXX</span> 账户；
						</li>
						<li>2. 当提现支付宝绑定成功 <span>12</span> 小时后便可提现；
						</li>
						<li style="color: red;">注：如提现账户填写错误造成的损失，XXX概不负责！</li>
					</ul>
					<ul class="sjwvip_ul2">
						<!--<li>真实姓名：李满欢&nbsp;&nbsp;&nbsp;<span class="ico_g"></span></li>
                                    <li>支付宝号：13918108783&nbsp;&nbsp;&nbsp;<span class="ico_g"></span></li>-->
						<li>真实姓名：<input type="test" class="test_dom"><span
							class="bdzfb_name">( 必须和支付宝实名认证信息一致！ )</span></li>
						<li>支付宝号：<input type="test" class="test_dom"><span
							class="bdzfb_zfb">( 请输入手机号码或电子邮箱！ )</span></li>
						<li>确认账号：<input type="test" class="test_dom"><span
							class="bdzfb_qrzfb">( 请再次确认账号！ )</span></li>
						<LI><input type="button" value="确  定" class="sjwvip_ul2_test"></LI>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
