package com.rongyitui.dao;

import org.springframework.stereotype.Repository;

import com.rongyitui.po.WebUser;

@Repository
public class WebUserDao extends HibernateDao<WebUser, Integer> implements IWebUserDao {

}
