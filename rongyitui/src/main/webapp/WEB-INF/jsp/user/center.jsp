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

.jbxx_ul1 a {
	margin-left: 6px;
}

.jbxx_ul1 li {
	line-height: 40px;
}

.jbxx_b1 {
	width: 100%;
	border: solid 1px #ddd;
	background-color: #fff;
	height: 560px;
}

.jbxx_b1 p {
	width: 100%;
	background-color: #f7f7f7;;
	line-height: 33px;
	text-indent: 22px;
	color: #333;
	font-size: 13px;
	border-bottom: solid 1px #ddd;
	margin-bottom: 30px;
}

.jbxx_b1 ul {
	float: left;
	margin-top: 12px;
}

.jbxx_b1 ul li {
	line-height: 38px;
	text-indent: 32px;
}

.jbxx_tab_l {
	width: 80px;
	text-align: right;
}

.jbxx_b1 table tr td span {
	margin-right: 10px;
}

.jbxx_b1 table tr {
	line-height: 35px;
}

.jbxx_b1 table {
	margin-left: 30px;
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
				<iframe src="left" width="202px" height="800px;" scrolling="no"
					frameborder="0" name="rightFrame" id="rightFrame"
					title="rightFrame"> </iframe>
				<!--left_form-->
			</div>
			<div class="cen_body_right">

				<div class="jbxx_b1">
					<p>基本信息</p>
					<table>
						<tr>
							<td class="jbxx_tab_l" style="color: #000;">信息设置</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l">ID ：</td>
							<td>${user.id }</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l" style="vertical-align: top">头像：</td>
							<td>
								<c:choose>
									<c:when test="${user.headimg == null }">
										<img src="images/tou_img1.jpg" width="80px"/>
									</c:when>
									<c:otherwise>
										<img src="${user.headimg }" width="80px"/>
									</c:otherwise>
								</c:choose>
								<a href="" style="color: #fd6e0e;">点击设置头像!</a>
								<a style="color: #999; margin-left: 12px;">（推友们！设置彰显自我个性的头像吧！）</a>
							</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l">昵称：</td>
							<td>${user.nicknamen }</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l">手机号：</td>
							<td>
								<c:choose>
									<c:when test="${user.iphone == null }">
										<!--13918108783--> 
										<span style="color: #008001">未绑定</span>
										<a href="#" style="color: #fd6e0e;">立即绑定手机！</a>
									</c:when>
									<c:otherwise>
										${user.iphone }
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l">邮箱：</td>
							<td>${user.email }</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l">等级：</td>
							<td><a href="upg_vip?uid=${user.id }" style="float: left;">
									<c:choose>
										<c:when test="${user.isvip == 1 }">
											<img src="images/user_vip.png"/>
										</c:when>
										<c:otherwise>
											<img src="images/user_normal.png"/>
										</c:otherwise>
									</c:choose>
								</a>
								<a href="upg_vip?uid=${user.id }" style="color: #fd6e0e; float: left; line-height: 20px; margin-left: 12px;">立即升级为VIP!</a>
								<a style="color: #999; float: left; line-height: 20px; margin-left: 12px;">(VIP等级特权：每日登陆奖励；推荐好友升级奖励；推荐好友提现奖励！)</a>
							</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l" style="color: #000;">提现设置</td>
						</tr>
						<tr>
							<td class="jbxx_tab_l">支付宝：</td>
							<td>
								<c:choose>
									<c:when test="${user.alipaynumber == null }">
										<!--13918108783--> 
										<span style="color: #008001">未绑定</span>
										<a href="alipay" style="color: #fd6e0e;">为了方便提现，请立即绑定支付宝账号！</a>
									</c:when>
									<c:otherwise>
										${user.alipaynumber }
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
