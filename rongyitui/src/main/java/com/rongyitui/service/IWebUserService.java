package com.rongyitui.service;

import com.rongyitui.po.WebUser;

public interface IWebUserService {

	WebUser getWebUserByLogin(String login);

	void addWebUser(WebUser webUser);

	WebUser getWebUserById(int id);

}
