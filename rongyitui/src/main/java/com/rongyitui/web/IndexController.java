package com.rongyitui.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rongyitui.po.OfficialTask;
import com.rongyitui.service.IOfficialTaskService;

@Controller
public class IndexController {
	@Resource
	private IOfficialTaskService officialTaskService;

	@RequestMapping("/hotTasksTop6")
	@ResponseBody
	public List<OfficialTask> hotTasksTop6() {
		List<OfficialTask> list = this.officialTaskService.hotTop(6);
		return list;
	}

	@RequestMapping("/task_hall")
	public String taskHall() {
		return "task_hall";
	}
}
