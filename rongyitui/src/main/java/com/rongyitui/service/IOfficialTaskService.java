package com.rongyitui.service;

import java.util.List;

import com.rongyitui.po.OfficialTask;

public interface IOfficialTaskService {

	List<OfficialTask> hotTop(int count);

	List<OfficialTask> listRecommendOfficialTask();

	OfficialTask getOfficialTaskById(int id);

}
