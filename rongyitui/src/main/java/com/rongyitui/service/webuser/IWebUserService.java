package com.rongyitui.service.webuser;

import com.rongyitui.po.WebUser;

public interface IWebUserService {

	WebUser getWebUserByLogin(String login);

	void addWebUser(WebUser webUser);

}
