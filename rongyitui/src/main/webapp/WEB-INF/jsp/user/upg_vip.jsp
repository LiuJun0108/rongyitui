<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			var upg_vip_jine = upg_vip_optval * 10;
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
					<p class="center_tit_dtit">升级为VIP</p>
					<ul class="sjwvip_ul1">
						<li style="color: #000;">公告：</li>
						<li>1. 成为VIP用户，完成任务可获得任务的 <span>85%</span> 佣金；
						</li>
						<li>2. VIP用户每日登陆本站就可获得 <span>0.2</span> 元佣金；
						</li>
						<li>3. VIP用户所有提现都 <span>免手续费</span>；
						</li>
						<li>4. 当被推荐人成功升级为VIP会员，您可获取 <span>被推荐人升级VIP用户月数 * 4</span>
							元的佣金；<br />（如：升级月数3个月，得佣金 3 * 3 = 9 元佣金）
						</li>
						<li style="color: red;">注：VIP特权会定期推出活动奖励赠送，敬请期待！最终解释权由XXX；</li>
					</ul>
					<ul class="sjwvip_ul2">
						<li>升级账户：<a>${currentUser.iphone }</a><span class="ico_g"></span></li>
						<li>有效时间： 
							<select class="select_dom">
								<option value="3">3个月</option>
								<option value="6">6个月</option>
								<option value="12">12个月</option>
								<option value="24">24个月</option>
							</select>
						</li>
						<li>升级金额：<a class="sjwvip_ul2_li_jinea">15</a> 元<span
							class="sjwvip_jin_c">( 账户余额不足！ <a href="#">立即去充值</a> )
						</span></li>
						<li><input type="button" value="立即升级" class="sjwvip_ul2_test"/></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
