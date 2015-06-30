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
		$(".reg_bod_d table tr td input").focus(function() {
			$(this).css("border-color", "#83bb4a")
		});
		
		var regemail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		var regpwd = /^[0-9a-zA-Z_]{6,12}$/;
		
		$("#us_login").blur(function() {
			var username = $(this).val();
			if (regemail.test(username)) {
				$(this).css("border-color", "#d1d1d1");
				$(".user_error").html("");
			} else {
				$(this).css("border-color", "red");
				$(".user_error").html("邮箱不正确！");
			}
		});
		
		$("#us_password").blur(function() {
			var pwd = $(this).val();
			if (pwd == "") {
				$(this).css("border-color", "red");
				$(".pwd_error").html("密码不能为空！");
			} else {
				if (regpwd.test(pwd)) {
					$(this).css("border-color", "#d1d1d1");
					$(".pwd_error").html("");
				} else {
					$(this).css("border-color", "red");
					$(".pwd_error").html("密码长度为6~12位数字和字母组合！");
				}
			}
		});
		
		$("#cpwd").blur(function() {
			var cpwd = $(this).val();
			if (cpwd == "") {
				$(this).css("border-color", "red");
				$(".cpwd_error").html("重复密码不能为空！");
			} else {
				var pwd = $("#us_password").val();
				if (pwd == cpwd) {
					$(this).css("border-color", "#d1d1d1");
					$(".cpwd_error").html("");
				} else {
					$(this).css("border-color", "red");
					$(".cpwd_error").html("两次密码不一致！");
				}
			}
		});
		
		$('#us_nicknamen').blur(function() {
			var nickname = $(this).val();
			if(nickname == "") {
				$(this).css("border-color", "red");
				$('.niname_error').html('昵称不能为空');
			} else {
				if(nickname.length > 0 && nickname.length < 8) {
					$(this).css("border-color", "#d1d1d1");
					$(".niname_error").html("");
				} else {
					$(this).css("border-color", "red");
					$(".niname_error").html("昵称长度为0-8个字符");
				}
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
				val.value = "重新发送(" + countdown + ")";
				countdown--;
				setTimeout(function() {
					settime(val);
				}, 1000)
			}

		}

	});
	
	function reImg() {  
        var img = document.getElementById("checkCodeImg");  
        img.src = 'checkCode?code=' + Math.random();  
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
</style>

</head>
<body>
	<iframe src="top.jsp" width="100%" height="99" scrolling="no"
		frameborder="0">#83bb4a </iframe>
	<div class="reg_bod">
		<div class="reg_bod_d">
			<p class="reg_tab_tit">欢迎注册XXX</p>
			<form action="reg" method="post">
				<table>
					<tr>
						<td style="vertical-align: top; padding-top: 8px;"><span>*</span>邮箱：</td>
						<td colspan="2">
							<input type="test" class="username" id="us_login" value="${webUser.us_login }" name="us_login" style="color: #999; font-size: 13px;"/>
							<dd class="user_error">
								<c:if test="${resultMsg != null && resultMsg.obj == 2}">${resultMsg.message }</c:if>
							</dd>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: top; padding-top: 8px;"><span>*</span>密码：</td>
						<td colspan="2">
							<input type="password" class="pwd" id="us_password" name="us_password"/>
							<dd class="pwd_error"></dd>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: top; padding-top: 8px;"><span>*</span>确认密码：</td>
						<td colspan="2">
							<input type="password" class="cpwd" id="cpwd" name="cpwd"/>
							<dd class="cpwd_error"></dd>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: top; padding-top: 8px;"><span>*</span>
							昵称：</td>
						<td colspan="2">
							<input type="test" class="username" id="us_nicknamen" name="us_nicknamen" style="color: #999; font-size: 13px;"/>
							<dd class="niname_error"></dd>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: top; padding-top: 8px;"><span>*</span>
							验证码：</td>
						<td><input type="test" style="width: 140px;" class="yzm" id="yzm" name="yzm"/>
							<dd>
								<c:if test="${resultMsg != null && resultMsg.obj == 1}">${resultMsg.message }</c:if>
							</dd>
						</td>
						<td style="vertical-align: top;"><dd><img id="checkCodeImg" src="checkCode" alt="验证码" onclick="reImg();"/>验证码</dd>
							<!--<input type="button" class="reg_tab_yzm" style="color:#fff;height:33px;line-height:33px;border-width:0px;border-radius:5px;width:110px;" value="获取验证码">-->
					</tr>
					<tr>
						<td></td>
						<td class="reg_tab_gongyue" colspan="2" style="line-height: 40px;">
							<input type="checkbox" checked="checked" class="reg_tab_chebox" style="width: 0px; height: 0px;"/> 
							我同意<a href="">《XXX网服务公约》</a>
						</td>
					</tr>
					<tr>
						<td></td>
						<td class="reg_tab_gongyue" colspan="2">
							<input type="submit" value="立即注册" class="reg_tab_libtn" style="width: 150px; height: 42px; font-size: 18px; font-family: '微软雅黑'; border: 0px; line-height: 38px; color: #fff;"/>
						</td>
					</tr>
				</table>
			</form>
			<ul class="reg_tab_ul1">
				<li style="color: #999; font-size: 12px;">如果你已注册，请直接登录！</li>
				<li><a href=""><input type="button" value="立即登陆"
						class="reg_tab_ul_btn"></a></li>
				<li style="font-size: 15px; color: #333; margin-top: 30px;">正在进行中</li>
			</ul>
			<ul class="reg_tab_ul2" id="list_ul">
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
				<li>都干什**么呢额<a>刚刚</a><span style="color: red;">888 元</span><span>提现了</span></li>
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
