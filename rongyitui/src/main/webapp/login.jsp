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
		$(".reg_bod_d table tr td input").focus(function() {
			$(this).css("border-color", "#83bb4a")
		});
		var regemail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		var regphone = /^1\d{10}$/;
		var regpwd = /^[0-9a-zA-Z_]{6,12}$/;
		var yzm = document.getElementById("yzm").value;
		$(".username").blur(function() {
			var username = document.getElementById("username").value;
			if (regemail.test(username) || regphone.test(username)) {
				$("#username").css("border-color", "#d1d1d1");
				$(".user_error").html("");
			} else {
				$(".user_error").html("用户名只能是手机或邮箱！");
				$("#username").css("border-color", "red");
			}
		});
		$(".pwd").blur(function() {
			var pwd = document.getElementById("pwd").value;
			if (pwd == "") {
				$(".pwd_error").html("密码不能为空！");
				$("#pwd").css("border-color", "red");
			} else {
				if (regpwd.test(pwd)) {
					$("#pwd").css("border-color", "#d1d1d1");
					$(".pwd_error").html("");
				} else {
					$(".pwd_error").html("密码长度为6~12位数字和字母组合！");
					$("#pwd").css("border-color", "red");
				}
			}
		});
		$(".cpwd").blur(function() {
			var cpwd = document.getElementById("cpwd").value;
			if (cpwd == "") {
				$(".cpwd_error").html("重复密码不能为空！");
				$("#cpwd").css("border-color", "red");
			} else {
				var pwd = document.getElementById("pwd").value;
				if (pwd == cpwd) {
					$("#cpwd").css("border-color", "#d1d1d1");
					$(".cpwd_error").html("");
				} else {
					$(".cpwd_error").html("两次密码不一致！");
					$("#cpwd").css("border-color", "red");
				}
			}
		});
		$(".reg_tab_yzm").click(function() {
			var username = document.getElementById("username").value;
			if (regemail.test(username) || regphone.test(username)) {
				$("#username").css("border-color", "#d1d1d1");
				$(".user_error").html("");
				var pwd = document.getElementById("pwd").value;
				if (pwd == "") {
					$(".pwd_error").html("密码不能为空！");
					$("#pwd").css("border-color", "red");
				} else {
					if (regpwd.test(pwd)) {
						$("#pwd").css("border-color", "#d1d1d1");
						$(".pwd_error").html("");
						var cpwd = document.getElementById("cpwd").value;
						if (cpwd == "") {
							$(".cpwd_error").html("重复密码不能为空！");
							$("#cpwd").css("border-color", "red");
						} else {
							var pwd = document.getElementById("pwd").value;
							if (pwd == cpwd) {
								$("#cpwd").css("border-color", "#d1d1d1");
								$(".cpwd_error").html("");
								settime(this);
								alert("发送成功！");
							} else {
								$(".cpwd_error").html("两次密码不一致！");
								$("#cpwd").css("border-color", "red");
							}
						}
					} else {
						$(".pwd_error").html("密码长度为6~12位数字和字母组合！");
						$("#pwd").css("border-color", "red");
					}
				}
			} else {
				$(".user_error").html("用户名只能是手机或邮箱！");
				$("#username").css("border-color", "red");
			}
		});
		var countdown = 60;
		function settime(val) {
			$(".reg_tab_yzm").css("background-color", "#ddd");
			if (countdown == 0) {
				val.removeAttribute("disabled");
				val.value = "获取验证码";
				$(".reg_tab_yzm").css("background-color", "#00c0e4");
				countdown = 60;
			} else {
				val.setAttribute("disabled", true);
				val.value = "重新发送" + countdown + ")";
				countdown--;
				setTimeout(function() {
					settime(val);
				}, 1000)
			}

		}

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
	<iframe src="top.jsp" width="100%" height="99" scrolling="no"
		frameborder="0">#83bb4a </iframe>
	<div class="reg_bod">
		<div class="reg_bod_d">
			<p class="reg_tab_tit">登陆XXX</p>
			<table>
				<tr>
					<td style="vertical-align: top; padding-top: 8px;"><span>*</span>
						邮箱：</td>
					<td colspan="2"><input type="test" value="手机号/邮箱"
						onfocus="if(this.value=='手机号/邮箱')this.value=''"
						onblur="if(this.value=='')this.value='手机号/邮箱'" class="username"
						id="username" style="color: #999; font-size: 13px;">
					<dd class="user_error"></dd></td>
				</tr>
				<tr>
					<td style="vertical-align: top; padding-top: 8px;"><span>*</span>
						密码：</td>
					<td colspan="2"><input type="password" class="pwd" id="pwd">
					<dd class="pwd_error"></dd></td>
				</tr>
				<!-- <tr>
                                <td style="vertical-align:top;padding-top:8px;"><span>*</span> 确认密码：</td>
                                <td colspan="2"><input type="password" class="cpwd" id="cpwd"><dd class="cpwd_error"></dd></td>
                            </tr>
                             <tr>
                                <td style="vertical-align:top;padding-top:8px;"><span>*</span> 验证码：</td>
                                <td><input type="test" style="width:140px;" class="yzm" id="yzm"><dd></dd></td>
                                <td style="vertical-align:top;"><input type="button" class="reg_tab_yzm" style="color:#fff;height:33px;line-height:33px;border-width:0px;border-radius:5px;width:110px;" value="获取验证码"><!--<dd class="reg_tab_yzm" style="color:#fff;height:33px;line-height:33px;">获取验证码</dd>-->
				<!--</td>
                            </tr>-->
				<tr>
					<td></td>
					<td class="reg_tab_gongyue" colspan="2" style="line-height: 40px;"><input
						type="checkbox" checked="checked" class="reg_tab_chebox"
						style="width: 0px; height: 0px;"> 我同意<a href="">《路趣网服务公约》</a></td>
				</tr>
				<tr>
					<td></td>
					<td class="reg_tab_gongyue" colspan="2"><input type="button"
						value="立即注册" class="reg_tab_libtn"
						style="width: 150px; height: 42px; font-size: 18px; font-family: '微软雅黑'; border: 0px; line-height: 38px; color: #fff;"></td>
				</tr>
			</table>
			<ul class="reg_tab_ul1">
				<li style="color: #999; font-size: 12px;">如果你还没有账号？请立即注册！</li>
				<li><a href=""><input type="button" value="立即注册"
						class="reg_tab_ul_btn"></a></li>
				<li style="font-size: 15px; color: #333; margin-top: 30px;">正在进行中</li>
			</ul>
			<!--<ul class="reg_tab_ul2" id="list_ul">
                        <li>139****8783<a>刚刚</a><span style="color:red;">888 元</span><span>提现了</span></li>
                        <li>13912****8783<a>刚刚</a><span style="color:red;">3 元</span><span>提现了</span></li>
                        <li>139*783<a>刚刚</a><span style="color:red;">8 元</span><span>提现了</span></li>
                        <li>139****8783<a>刚刚</a><span style="color:red;">888 元</span><span>提现了</span></li>
                        <li>13912****8783<a>刚刚</a><span style="color:red;">3 元</span><span>提现了</span></li>
                        <li>139*783<a>刚刚</a><span style="color:red;">8 元</span><span>提现了</span></li>
                        <li>139****8783<a>刚刚</a><span style="color:red;">888 元</span><span>提现了</span></li>
                        <li>13912****8783<a>刚刚</a><span style="color:red;">3 元</span><span>提现了</span></li>
                        <li>139*783<a>刚刚</a><span style="color:red;">8 元</span><span>提现了</span></li>
                     </ul>-->
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
		(F = _("if(#%18||!c)#++,#%=o.scrollHeight>>1;setTimeout(F,#%28?10:2000);"
				.replace(/#/g, "o.scrollTop")))();
	</script>
</body>
</html>
