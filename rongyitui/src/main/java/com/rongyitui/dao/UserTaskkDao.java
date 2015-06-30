package com.rongyitui.dao;

import org.springframework.stereotype.Repository;

import com.rongyitui.po.UserTask;

@Repository
public class UserTaskkDao extends HibernateDao<UserTask, Integer> implements
		IUserTaskDao {

}
