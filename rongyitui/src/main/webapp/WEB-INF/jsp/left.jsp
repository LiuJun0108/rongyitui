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
	$(document)
			.ready(
					function() {
						$(".cen_body_left div div")
								.click(
										function() {
											var ul_z = $(this).next("ul").css(
													"display");
											if (ul_z == "block") {
												$(this).next("ul").slideUp(
														"slow");
												$(this)
														.children("dd")
														.css("background",
																"url('images/G_p_2.png') no-repeat center");
											} else {
												$(this).next("ul").slideDown(
														"slow");
												$(this)
														.children("dd")
														.css("background",
																"url('images/G_p_1.png') no-repeat center");
											}
										});
						/*$(".cen_body_left div ul li a").click(function(){
						    $(".cen_body_left div ul li a").css("color","#333");
						    $(this).css("color","#fd6e0e");
						    $(".bod_tit_dang ins").html($(this).html());

						}); */
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
	<!--<div class="center_b">
              <div class="bod_tit_dang"><span>当前位置：</span> <a href="">首页 > </a><a href="account.html" target="rightFrame">个人中心 > </a><ins style="text-decoration:none;">账户信息</ins></div>
              <div class="cen_body">
                  <div class="cen_body_left">-->
	<div class="cen_body_left">
		<div>
			<span style="margin-left: 12px;">个人中心</span>
		</div>
		<div class="cen_body_left_ul">
			<div>
				<dd class="cen_left_img"></dd>
				会员账户
			</div>
			<ul>
				<li><a href="center" target="_top" style="color: #fd6e0e">基本资料</a></li>
				<li><a href="news.html" target="_top">我的消息</a></li>
				<li><a href="upg_vip" target="_top">升级为VIP</a></li>
				<li><a href="account.html" target="_top">账户信息</a></li>
			</ul>
		</div>
		<div class="cen_body_left_ul">
			<div>
				<dd class="cen_left_img"></dd>
				财务管理
			</div>
			<ul>
				<li><a href="bank_deta_q.html" target="bodyFrame">账户明细</a></li>
				<li><a href="alipay.html" target="bodyFrame">绑定支付宝</a></li>
				<li><a href="apply.html" target="bodyFrame">申请提现</a></li>
				<li><a href="recharge.html" target="bodyFrame">我要充值</a></li>
			</ul>
		</div>
		<div class="cen_body_left_ul">
			<div>
				<dd class="cen_left_img"></dd>
				任务管理
			</div>
			<ul>
				<li><a href="newUserTask.html" target="_top">发布新任务</a></li>
				<li><a href="listUserTask.html" target="_top">发布的任务</a></li>
				<li><a href="invo_task.html" target="bodyFrame">参与的任务</a></li>
			</ul>
		</div>
		<div class="cen_body_left_ul">
			<div>
				<dd class="cen_left_img"></dd>
				推广管理
			</div>
			<ul>
				<li><a href="recom_people.html" target="bodyFrame">我推广的人</a></li>
				<li><a href="recom_link.html" target="bodyFrame">推广链接</a></li>
			</ul>
		</div>
	</div>
	<!--</div>
                  <div class="cen_body_right">
                        <iframe src="account.html"  width="772px" height="800px;" scrolling="no" frameborder="0" name="rightFrame" id="rightFrame" title="rightFrame">
                                <p onload="getWinSize()">1</p>
                        </iframe>
                        <!--center_form-->
	<!--</div>
              </div>
        </div>
        <div class="foot">
                <li>
                    <a href="">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="">用户公约</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="">意见反馈</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="">帮助中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="">友情链接</a>
                </li>
                <li class="foot_i1">
                     版权所有：XXX信息传媒有限公司<a href="">粤ICP备12008262号-2</a><a>增值电信业务经营许可证 粤B2-20120564 </a>
                </li>   
                <li class="foot_i2">
                    <img src="images/ft_img1.png">
                    <img src="images/ft_img2.png">
                    <img src="images/ft_img3.png">
                    <img src="images/ft_img4.png">
                </li>
        </div>-->
	<!--<script type="text/javascript">
      var rightFrame = document.getElementById("rightFrame");
        function getWinSize() {
            win = rightFrame.contentWindow,
            doc = win.document,
            html = doc.documentElement,
            body = doc.body; 
            var height = Math.max(body.scrollHeight, body.offsetHeight,html.clientHeight, html.scrollHeight, html.offsetHeight ); 
            rightFrame.setAttribute('height', height); 
        }

        getWinSize();
        window.onresize = getWinSize;

    </script>-->
</body>
</html>
