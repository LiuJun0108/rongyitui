package com.rongyitui.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.rongyitui.dao.IOfficialTaskkDao;
import com.rongyitui.po.OfficialTask;

@Service
public class OfficialTaskService implements IOfficialTaskService {
	private Logger logger = Logger.getLogger(OfficialTaskService.class);

	@Resource
	private IOfficialTaskkDao officialTaskkDao;

	@Override
	public List<OfficialTask> hotTop(int count) {
		String hql = "from OfficialTask as task order by task.createDate desc";
		logger.info("hql = " + hql);

		List<OfficialTask> list = this.officialTaskkDao
				.listByHQL(hql, 1, count);
		return list;
	}

	@Override
	public List<OfficialTask> listRecommendOfficialTask() {
		String hql = "from OfficialTask as task where task.recommend = true order by task.createDate desc";
		logger.info("hql = " + hql);

		List<OfficialTask> list = this.officialTaskkDao.listByHQL(hql);
		return list;
	}

	@Override
	public OfficialTask getOfficialTaskById(int id) {
		return null;
	}

}
