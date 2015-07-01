<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>

<script type="text/javascript">
	function logout() {
		$.post('logout.do',function(data) {
			if(data) {
				if(data.success) {
					location.reload();
				} else {
					console.info('出错了');
				}
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
</style>

</head>
<body>

	<div class="top_tab">
		<div>
			您好，欢迎来到 XXX ！ 
			
			<c:if test="${sessionScope.currentUser == null }">
				<a href="" class="top_tab_aleft">[ 立即登录 ]</a> 
				<a href="reg.jsp" class="top_tab_aleft" target="_blank">[ 免费注册 ]</a>
			 </c:if>
			 
			<li style="border-right: none;"><a href="">设为首页</a></li>
			<li><a href="">关于我们</a></li>
			<li><a href="">帮助中心</a></li>
			
			<c:if test="${sessionScope.currentUser != null }">
				<!--登陆成功后-->
				<span>
					<li>站内消息 <a href="" class="top_tab_xinxi">[ 0 ]</a></li>
					<li>可用余额 <a href="" class="top_tab_yue"> 0 </a>元<a href=""
						class="top_tab_loginimg">[ 提现 ]</a></li>
					<li><a href="" class="top_tab_sjvip">立即升级为VIP！</a></li>
					<li>${sessionScope.currentUser.login }<a href="javascript:logout();" class="top_tab_loginimg">[退出]</a></li>
					<li style="border-right: 0px;">
						<a>
							<c:choose>
								<c:when test="${sessionScope.currentUser.isvip == 1 }">
									<img src="images/user_vip.png"/>	
								</c:when>
								<c:otherwise>
									<img src="images/user_normal.png"/>
								</c:otherwise>
							</c:choose>
						</a>
					</li> 
				</span>
			</c:if>
		</div>
	</div>
	<div class="top_daoh">
		<div>
			<p>LOGO</p>
			<ul>
				<li><a href="inde.jsp" target="_top">首页</a></li>
				<li><a href="recommend.jsp" target="_top">推荐任务</a></li>
				<li><a href="task_hall.jsp" target="_top">任务大厅</a></li>
				<li><a href="center" target="_top">用户中心</a></li>
				<li><a href="" target="_top">推广奖励</a></li>
			</ul>
		</div>
	</div>
</body>
</html>