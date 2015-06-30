<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		$(".commdtask_b1_x_l2 dd input").click(function() {
			$(".commdtask_b1_xtj").css("display", "block");
		});
		$(".xitj_form").click(function() {
			$(".commdtask_b1_xtj").css("display", "none");
		});

	});
</script>
<script>
	;
	(function($) {
		$
				.extend({
					tipsBox : function(options) {
						options = $.extend({
							obj : null, //jq对象，要在那个html标签上显示
							str : "+1", //字符串，要显示的内容;也可以传一段html，如: "<b style='font-family:Microsoft YaHei;'>+1</b>"
							startSize : "12px", //动画开始的文字大小
							endSize : "30px", //动画结束的文字大小
							interval : 600, //动画时间间隔
							color : "red", //文字颜色
							callback : function() {
							} //回调函数
						}, options);
						$("body").append(
								"<span class='num'>" + options.str + "</span>");
						var box = $(".num");
						var left = options.obj.offset().left
								+ options.obj.width() / 2;
						var top = options.obj.offset().top
								- options.obj.height();
						box.css({
							"position" : "absolute",
							"left" : left + "px",
							"top" : top + "px",
							"z-index" : 9999,
							"font-size" : options.startSize,
							"line-height" : options.endSize,
							"color" : options.color
						});
						box.animate({
							"font-size" : options.endSize,
							"opacity" : "0",
							"top" : top - parseInt(options.endSize) + "px"
						}, options.interval, function() {
							box.remove();
							options.callback();
						});
					}
				});
	})(jQuery);
</script>

<script>
	$(function() {
		$(".ding_cai a").click(function() {
			$.tipsBox({
				obj : $(this),
				str : "+1",
				callback : function() {
					//alert(5);
				}
			});
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
			<span>当前位置：</span> 
			<a href="inde.jsp">首页 > </a>
			<a href="task_hall.jsp">任务大厅 > </a>
			<ins style="text-decoration: none;">任务详情</ins>
		</div>
		<div class="task_deta_l">
			<div class="task_deta_l_b1">
				<ul class="task_deta_l_b1l">
					<li class="task_deta_l_b1l_1">发布者信息</li>
					<li>
						<dd>
							<img src="images/tou_img2.jpg">
						</dd>
						<dd>
							发布者： <br />
							<span>13918108783</span></br> ID：88888</br> <a href=""><img
								src="images/user_vip.png"></a>
						</dd>
					</li>
					<li style="text-indent: 10px;">性别：男</li>
					<li style="text-indent: 10px;">加入时间：2015-03-25 16:22</li>
				</ul>
				<ul class="task_deta_l_b1r">
					<li style="width: 680px; font-size: 15px; margin-bottom: 5px; color: #333;">
						[ ID:${task.ut_id } ]&nbsp;&nbsp;&nbsp;${task.ut_title }
					</li>
					<li style="width: 680px;">任务类型：
						<c:choose>
							<c:when test="${task.ut_tasktype == 0 }">填写问卷</c:when>
							<c:when test="${task.ut_tasktype == 1 }">体验任务</c:when>
							<c:when test="${task.ut_tasktype == 2 }">看广告</c:when>
							<c:when test="${task.ut_tasktype == 3 }">网络推广</c:when>
							<c:otherwise>-</c:otherwise>
						</c:choose>
					</li>
					<li>奖励金额：<span><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2">${task.ut_allmoney }</fmt:formatNumber></span> 元
					</li>
					<li>剩余金额：<span>188.00</span> 元
					</li>
					<li style="width: 680px;">单个佣金：<span>
							<fmt:formatNumber minFractionDigits="2" maxFractionDigits="2">${task.ut_singmoney }</fmt:formatNumber>
						</span> 元（共 ${task.ut_number } 件稿件）
					</li>
					<li style="width: 680px;">实际佣金：普通会员为奖励佣金的65%，VIP会员为奖励佣金的85% ；<a
						href="#">立即升级为VIP会员！</a></li>
					<li>发布时间：<span>
						<fmt:setLocale value="zh_cn" />
						<fmt:parseDate type="both" pattern="yyyy-MM-dd HH:mm" >${task.createDate }</fmt:parseDate>
					2015-03-25 11:20</span></li>
					<li>结束时间：<span>2015-04-25 11:20</span></li>
					<li></li>
				</ul>

			</div>
			<div>
				<li class="commdtask_b1_x_l">
					<dd style="color: #03a9f4">温馨提示</dd>
					<dd>
						任务奖励佣金：<span>任务佣金已暂被本站保管,任务结束后 <a>2</a> 日内未审核，
						</span><a>系统自动合格</a>。
					</dd>
					<dd>
						严重违规处罚：<span>一个用户注册和使用多个帐号，代替他人登录帐号、玩游戏、体验广告，利用非法软件获得佣金奖励者，违规在体验广告商家平台发布不良言论，情节严重者封号处理，对此造成的任何损失，本站概不负责！</span>
					</dd>
				</li>
				<li class="task_deta_b1_l2">提交的稿件： <span>已提交稿件<a>( 4
							)</a>个
				</span><span>通过稿件<a>( 1 )</a>个
				</span><span>未通过稿件<a>( 1 )</a>个
				</span><span>未审核稿件<a>( 1 )</a>个
				</span>
				</li>
				<li class="commdtask_b1_x_l2">
					<dd>
						<input type="button" value="提交任务稿件">（单个用户最多提交 <a
							style="color: red;">1</a> 个任务稿件！）
					</dd>
				</li>
			</div>

		</div>
		<div class="commdtask_b1_xtj">
			<ul class="body_l_tit">
				<li class="body_l_tit_xx"></li>
				<li class="body_l_tit_dd" style="color: #03a9f4;">任务稿件提交</li>
			</ul>
			<table class="commdtask_b1_xtj_form">
				<tr>
					<td style="vertical-align: top">稿件信息：</td>
					<td><textarea width="700" class="from_texta"
							style="max-width: 700px; height: 300px; max-height: 300px; width: 700px;"></textarea></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="button" value="上传图片" class="inp_lodimg"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<dd>
							<input type="button" value="提交"><a class="xitj_form">取消</a>
						</dd>
					</td>
				</tr>
			</table>

		</div>
		<div class="commdtask_b1_x1">
			<ul class="body_l_tit">
				<li class="body_l_tit_xx"></li>
				<li class="body_l_tit_dd">任务描述</li>
			</ul>
			<div class="commdtask_b1_x1_d">HTM内容</div>
		</div>
		<div class="pinglun">
			<ul class="body_l_tit">
				<li class="body_l_tit_xx"></li>
				<li class="body_l_tit_dd">任务评论</li>
			</ul>
			<div>
				<p>
					评论( 已有<span>1082</span>条评论 )
				</p>
				<ul class="pinglun_ul1">
					<li>
						<dd>
							<img src="images/tou_img2.jpg" width="60px">
						</dd>
						<dd class="pinglun_text">
							<span> <textarea>我来说两句...
                                            </textarea>
							</span> <span class="pinglun_text_span"
								class="width:650px;height:45px;background-color:#fafafa">
								( 请谨慎评论，恶意评论者，封号处理！ )<input type="button" value="发表评论">
							</span>
						</dd>
					</li>
				</ul>
			</div>
			<ul class="pinglun_ul">
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
				<li>
					<dd>
						<img src="images/tou_img2.jpg" width="60px;">
					</dd>
					<dd style="margin-left: 20px;">
						<span class="ding_name">13918108783<a>2015-3-30 10:52</a></span> <span
							class="ping_neir">内容内容内容内容内容</span> <span class="ding_cai"><a
							href="javascript:void(0)"><span class="icon_cai">666</span></a><a
							href="javascript:void(0)"><span class="icon_ding">666</span></a></span>
					</dd>
				</li>
			</ul>
			<ul class="fenye_span"
				style="width: 82%; margin: 0px auto; margin-top: 20px;">
				<li>
					<dd>
						<span title="上一页">上一页</span> <span
							style="background-color: #03a9f4; color: #fff;">1</span> <span>2</span>
						<span>3</span> <span>4</span> <span>5</span> <a>...</a> <span>87</span>
						<span>88</span> <span title="下一页">下一页</span>
					</dd>
			</ul>
		</div>
	</div>
	<div class="foot">
		<li class="foot_b1"><a href="">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="">用户公约</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">意见反馈</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="">帮助中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">友情链接</a></li>
		<li class="foot_i1">版权所有：XXX信息传媒有限公司<a href="">粤ICP备12008262号-2</a><a>增值电信业务经营许可证
				粤B2-20120564 </a>
		</li>
		<li class="foot_i2"><img src="images/ft_img1.png"> <img
			src="images/ft_img2.png"> <img src="images/ft_img3.png">
			<img src="images/ft_img4.png"></li>
	</div>
</body>
</html>

