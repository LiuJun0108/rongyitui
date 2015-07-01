package com.rongyitui.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.rongyitui.dao.IUserTaskDao;
import com.rongyitui.model.Page;
import com.rongyitui.po.UserTask;
import com.rongyitui.web.dto.TaskHallQuery;
import com.rongyitui.web.dto.TaskHallQuery.ValueScope;

@Service
public class UserTaskService implements IUserTaskService {
	private Logger logger = Logger.getLogger(UserTaskService.class);

	@Resource
	private IUserTaskDao userTaskDao;

	@Override
	public void addUserTask(UserTask userTask) {
		if (userTask != null) {
			this.userTaskDao.save(userTask);
		} else {
			logger.info("webTask is null, save error!");
		}
	}

	@Override
	public Page<UserTask> listUserTask(int type, int pageNo, int pageSize) {
		// if (type == 0) {
		// int count = this.userTaskDao.countAll().intValue();
		// String pageHql = "from UserTask as task";
		// List<UserTask> list = this.userTaskDao.listByHQL(pageHql, null,
		// pageNo, pageSize);
		// return new Page<UserTask>(pageNo, pageSize, count, list);
		// } else {
		// String countHql =
		// "select count(*) from UserTask as task where task.ut_examine = ?";
		// String pageHql = "from UserTask as task where task.ut_examine = ?";
		// Integer[] values = new Integer[] { type };
		//
		// int count = this.userTaskDao.countByHQL(countHql, values).intValue();
		// List<UserTask> list = this.userTaskDao.listByHQL(pageHql, values,
		// pageNo, pageSize);
		// return new Page<UserTask>(pageNo, pageSize, count, list);
		// }

		return this.listUserTask(new TaskHallQuery(type, 0, 0), pageNo,
				pageSize);
	}

	@Override
	public Page<UserTask> listUserTask(TaskHallQuery query, int pageNo,
			int pageSize) {
		StringBuffer countHql = new StringBuffer(
				"select count(*) from UserTask as task where 1 = 1");
		StringBuffer pageHql = new StringBuffer(
				"from UserTask as task where 1 = 1");
		List<Object> list = new ArrayList<Object>(3);

		if (query != null) {
			StringBuffer hql = new StringBuffer();

			int reward = query.getReward();
			if (reward != 0) {
				ValueScope scope = query.getRewardValueScope();
				int min = scope.getMinValue();
				if (min != 0) {
					hql.append(" and task.allmoney >= ?");
					list.add(new BigDecimal(min + ""));
				}
				int max = scope.getMaxValue();
				if (max != 0) {
					hql.append(" and task.allmoney <= ?");
					list.add(new BigDecimal(max + ""));
				}
			}
			int cycle = query.getCycle();
			if (cycle != 0) {
				ValueScope scope = query.getCycleValueScope();
				int min = scope.getMinValue();
				if (min != 0) {
					hql.append(" and task.period >= ?");
					list.add(min);
				}
				int max = scope.getMaxValue();
				if (max != 0) {
					hql.append(" and task.period <= ?");
					list.add(max);
				}
			}
			int type = query.getType();
			if (type != 0) {
				hql.append(" and task.examine = ?");
				list.add(type);
			}

			countHql.append(hql);
			pageHql.append(hql).append(" order by task.createDate desc");
		}

		Object[] values = list.toArray();

		int count = this.userTaskDao.countByHQL(countHql.toString(), values)
				.intValue();
		if (count == 0) {
			return new Page<UserTask>(pageNo, pageSize, count,
					Collections.<UserTask> emptyList());
		}
		List<UserTask> pageList = this.userTaskDao.listByHQL(
				pageHql.toString(), values, pageNo, pageSize);
		return new Page<UserTask>(pageNo, pageSize, count, pageList);

	}

	@Override
	public int countUserTaskByType(int type) {
		try {
			if (type == 0) {
				return this.userTaskDao.countAll().intValue();
			}
			String countHql = "select count(*) from UserTask as task where task.ut_examine = ?";
			Integer[] values = new Integer[] { type };
			int count = this.userTaskDao.countByHQL(countHql, values)
					.intValue();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int[] countUserTask() {
		// 1、2、3、4 表示 任务的状态。0表示所有
		return new int[] { this.countUserTaskByType(0),
				this.countUserTaskByType(1), this.countUserTaskByType(2),
				this.countUserTaskByType(3), this.countUserTaskByType(4), };
	}

	@Override
	public UserTask getUserTaskById(int ut_id) {
		return this.userTaskDao.getById(ut_id);
	}

	@Override
	public List<UserTask> userTasksTop(int count) {
		String hql = "from UserTask as task order by task.createDate desc";
		return this.userTaskDao.listByHQL(hql, 1, count);
	}

}
