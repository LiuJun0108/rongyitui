package com.rongyitui.service;

import java.util.List;

import com.rongyitui.model.Page;
import com.rongyitui.po.UserTask;
import com.rongyitui.web.dto.TaskHallQuery;

public interface IUserTaskService {

	void addUserTask(UserTask userTask);

	Page<UserTask> listUserTask(int type, int pageNo, int pageSize);

	/**
	 * 任务状态： 全部任务 （ 5 ） 个 进行中的 （ 5 ） 个 未审核 （ 10 ） 个 已审核 （ 10 ） 个 已结束任务 （ 0 ） 个
	 * 按顺序
	 * 
	 * @param type
	 * @return
	 */
	int[] countUserTask();

	int countUserTaskByType(int type);

	UserTask getUserTaskById(int ut_id);

	Page<UserTask> listUserTask(TaskHallQuery query, int pageNo, int pageSize);

	List<UserTask> userTasksTop(int count);

}
