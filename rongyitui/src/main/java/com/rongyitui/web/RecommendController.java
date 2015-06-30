package com.rongyitui.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rongyitui.po.OfficialTask;
import com.rongyitui.service.IOfficialTaskService;

@Controller
public class RecommendController {
	@Resource
	private IOfficialTaskService officialTaskService;

	@RequestMapping("/recommend")
	@ResponseBody
	public List<OfficialTask> recommend() {
		List<OfficialTask> list = this.officialTaskService.listRecommendOfficialTask();
		return list;
	}

	@RequestMapping("/task_deta")
	public String taskDeta(int id, ModelMap model) {
		OfficialTask task = this.officialTaskService.getOfficialTaskById(id);
		model.addAttribute("task", task);
		return "task_deta";
	}
}
