package com.rongyitui.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rongyitui.model.Page;
import com.rongyitui.po.UserTask;
import com.rongyitui.po.WebUser;
import com.rongyitui.service.IUserTaskService;

@Controller
public class UserTaskController implements JspPackage {
	@Resource
	private IUserTaskService userTaskService;

	@RequestMapping(value = "/newUserTask", method = { RequestMethod.GET })
	public String newUserTask() {
		return JSP_PACKAGE_PREFIX + "task/newUserTask";
	}

	@RequestMapping(value = "/addUserTask", method = { RequestMethod.POST })
	public String addUserTask(UserTask userTask, HttpSession session) {
		WebUser currentUser = (WebUser) session.getAttribute(SessionKey.CURRENT_USER);
		if (currentUser != null) {
			userTask.setUser(currentUser);
		}

		this.userTaskService.addUserTask(userTask);
		return "redirect:listUserTask";
	}

	@RequestMapping(value = "listUserTask", method = { RequestMethod.GET })
	public String listUserTask() {
		return JSP_PACKAGE_PREFIX + "task/listUserTask";
	}

	@RequestMapping(value = "listUserTask", method = { RequestMethod.POST })
	@ResponseBody
	public Page<UserTask> listUserTask(@RequestParam(defaultValue = "0") int type,
			@RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "5") int pageSize) {
		Page<UserTask> page = this.userTaskService.listUserTask(type, pageNo, pageSize);
		return page;
	}

	@RequestMapping(value = "countUserTask", method = { RequestMethod.POST })
	@ResponseBody
	public int[] countUserTask(@RequestParam(defaultValue = "0") int type) {
		int[] values = this.userTaskService.countUserTask();
		return values;
	}
}
