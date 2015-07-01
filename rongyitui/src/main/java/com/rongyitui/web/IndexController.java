package com.rongyitui.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rongyitui.po.OfficialTask;
import com.rongyitui.po.UserTask;
import com.rongyitui.service.IOfficialTaskService;
import com.rongyitui.service.IUserTaskService;

@Controller
public class IndexController {
	@Resource
	private IOfficialTaskService officialTaskService;

	@Resource
	private IUserTaskService userIUserTaskService;

	@RequestMapping("/hotTasksTop6")
	@ResponseBody
	public List<OfficialTask> hotTasksTop6() {
		List<OfficialTask> list = this.officialTaskService.hotTop(6);
		return list;
	}

	@RequestMapping("/userTasksTop8")
	@ResponseBody
	public List<UserTask> userTasksTop8() {
		List<UserTask> list = this.userIUserTaskService.userTasksTop(8);
		return list;
	}

}
