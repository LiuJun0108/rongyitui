package com.rongyitui.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.rongyitui.dao.IWebUserDao;
import com.rongyitui.po.WebUser;

@Service
public class WebUserService implements IWebUserService {
	private Logger log = Logger.getLogger(WebUserService.class);
	@Resource
	private IWebUserDao webUserDao;

	@Override
	public WebUser getWebUserByLogin(String login) {
		if (login == null)
			return null;

		String hql = "from WebUser as user where user.us_login = ?";
		log.info("hql = " + hql);

		List<WebUser> list = this.webUserDao.listByHQL(hql, new String[] { login });
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addWebUser(WebUser webUser) {
		if (webUser == null) {
			return;
		}

		this.webUserDao.save(webUser);
	}
}
