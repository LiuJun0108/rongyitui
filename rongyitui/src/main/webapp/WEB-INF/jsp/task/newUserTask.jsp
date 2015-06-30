<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/validator.js" type="text/javascript"></script>

<title>fdsa</title>

<script type="text/javascript">
	$(document).ready(function() {
		$(".select_dom option").click(function() {
			var upg_vip_optval = $(this).val();
			var upg_vip_jine = upg_vip_optval * 5;
			$(".sjwvip_ul2_li_jinea").html(upg_vip_jine);
		});
	});
	
	function submitForm() {
		var title = $('#title').val();
		if(title.trim().length == 0) {
			alert('标题不能为空');
			return false;
		}
		var singmoney = $('#singmoney').val();
		if(!isMoney(singmoney)) {
			alert('请输入有效的单价');
			return false;
		}
		var number = $('#number').val();
		if(!isNumber(number)) {
			alert('请输入有效的数量');
			return false;
		}
		var iphone = $('#iphone').val();
		if(!isMobil(iphone)) {
			alert('请输入有效的数量');
			return false;
		}
		
		$('form').submit();
	}
	
	function allMoney() {
		var singmoney = $('#singmoney').val();
		$('#singmoney').val(new Number(singmoney).toFixed(2));
		var number = $('#number').val();
		if(singmoney.trim().length == 0 || number.trim().length == 0) {
			$('#allmoney').val('0.00');
		} else {
			$('#allmoney').val((singmoney * number).toFixed(2));
		}
		
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

.fbxrw_td_l {
	text-align: right;
	color: #83bb4a;
}

.fbxrw_tab {
	margin-left: 50px;
	margin-top: 35px;
}

.fbxrw_tab tr {
	line-height: 48px;
}
</style>

</head>
<body>
	<div class="center_b">
		<div class="bod_tit_dang">
			<span>当前位置：</span> <a href="">首页 > </a><a href="account.html"
				target="rightFrame">个人中心 > </a>
			<ins style="text-decoration: none;">发布任务</ins>
		</div>
		<div class="cen_body">
			<div style="float: left; width: 202px;">
				<iframe src="left.do" width="202px" height="800px;" scrolling="no"
					frameborder="0" name="rightFrame" id="rightFrame"
					title="rightFrame"> 
				</iframe>
				<!--left_form-->
			</div>
			<div class="cen_body_right">
				<div class="center_tit_d">
					<p class="center_tit_dtit">发布新任务</p>
					<form action="addUserTask.do" method="post">
						<table class="fbxrw_tab">
							<tr>
								<td class="fbxrw_td_l">任务标题：</td>
								<td colspan="3">
									<input type="text" class="test_dom" style="width: 300px;" id="title" name="title" >
									<span>请输入任务标题！</span>
								</td>
							</tr>
							<tr>
								<td class="fbxrw_td_l">任务单价：</td>
								<td colspan="3">
									<input type="test" class="test_dom" style="width: 80px;" id="singmoney" name="singmoney" onblur="allMoney();">&nbsp;&nbsp;元 
									<span>任务单价不得低于1元！</span>
								</td>
							</tr>
							<tr>
								<td class="fbxrw_td_l">任务数量：</td>
								<td>
									<input type="test" class="test_dom" style="width: 80px;" id="number" name="number" value="1" onblur="allMoney();">&nbsp;&nbsp;个
								</td>
								<td class="fbxrw_td_l">任务总金额：</td>
								<td>
									<input type="test" class="test_dom" style="width: 100px;" id="allmoney" name="allmoney" value="0.00" readonly="readonly">&nbsp;&nbsp;元
								</td>
							</tr>
							<tr>
								<td class="fbxrw_td_l">任务周期：</td>
								<td>
									<input type="test" class="test_dom" style="width: 80px;" value="7" readonly="readonly">&nbsp;&nbsp;天 
									<span>根据任务总金额而定！</span>
								</td>
								<td class="fbxrw_td_l">手机号码：</td>
								<td>
									<input type="test" class="test_dom" id="iphone" name="iphone" style="width: 100px;">&nbsp;&nbsp; 
									<span>已便客服与你及时沟通！</span>
								</td>
							</tr>
							<tr>
								<td class="fbxrw_td_l">任务类型：</td>
								<td colspan="3">
									<select class="select_dom" id="tasktype" name="tasktype">
										<option value="0">填写问卷</option>
										<option value="1">体验任务</option>
										<option value="2">看广告</option>
										<option value="3">网络推广</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="fbxrw_td_l" style="vertical-align: top">任务描述：</td>
								<td colspan="3">
									<textarea style="width: 530px; height: 200px;" id="desc" name="desc"></textarea></td>
							</tr>
							<tr>
								<td></td>
								<td colspan="3">
									<input type="button" value="上传图片" class="sjwvip_ul2_test"
										style="background-color: #ddd; width: 80px; color: #666; height: 30px; font-size: 12px; margin-top: 5px; border: solid 1px #999; margin-bottom: 0px;">
									(图片大小不得大于1M)
								</td>
							</tr>
							<tr>
								<td class="fbxrw_td_l">单个用户：</td>
								<td colspan="3">
									<input type="test" class="test_dom"
									style="width: 80px;" value="1">&nbsp;&nbsp;个 <span>
										单个用户限制完成任务个数！默认为 1 个，设置 0 为不限制个数！</span></td>
							</tr>
							<tr>
								<td colspan="4"><input type="checkbox" checked="checked">
									同意本站《XXX协议》</td>
							</tr>
							<tr>
								<td colspan="4"><input type="button" value="立即绑定" onclick="submitForm();"
									class="sjwvip_ul2_test" style="margin-top: 0px"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
