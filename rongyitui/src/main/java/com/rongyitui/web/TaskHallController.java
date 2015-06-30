package com.rongyitui.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rongyitui.model.Page;
import com.rongyitui.po.UserTask;
import com.rongyitui.service.IUserTaskService;
import com.rongyitui.web.dto.TaskHallQuery;

@Controller
public class TaskHallController {
	@Resource
	private IUserTaskService userTaskService;

	@RequestMapping("/pageUserTask")
	@ResponseBody
	public Page<UserTask> pageUserTask(@RequestParam(defaultValue = "0") int type,
			@RequestParam(defaultValue = "0") int reward, @RequestParam(defaultValue = "0") int cycle,
			@RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "5") int pageSize) {

		TaskHallQuery query = new TaskHallQuery(type, reward, cycle);
		Page<UserTask> page = this.userTaskService.listUserTask(query, pageNo, pageSize);
		return page;

	}

}
