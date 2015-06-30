package com.rongyitui.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rongyitui.model.JsonMsg;
import com.rongyitui.po.WebUser;
import com.rongyitui.service.webuser.IWebUserService;
import com.rongyitui.util.Validator;

@Controller
public class LoginController {

	@Resource
	private IWebUserService webUserService;

	@RequestMapping("/login")
	@ResponseBody
	public JsonMsg login(WebUser webUser, HttpSession session) {
		String login = webUser.getUs_login();
		String password = webUser.getUs_password();

		if (Validator.isNullOrEmpty(login)) {
			return new JsonMsg(false, "用户名为空", "1");
		}
		if (Validator.isNullOrEmpty(password)) {
			return new JsonMsg(false, "密码为空", "2");
		}

		WebUser user = this.webUserService.getWebUserByLogin(login.trim());
		if (user == null) {
			return new JsonMsg(false, "用户名不存在", "1");
		}
		if (!password.equals(user.getUs_password())) {
			return new JsonMsg(false, "密码输入有误，请重新输入", "2");
		}

		session.setAttribute(SessionKey.CURRENT_USER, user);
		return new JsonMsg(true);
	}

	@RequestMapping("/logout")
	@ResponseBody
	public JsonMsg logout(HttpSession session) {
		session.setAttribute(SessionKey.CURRENT_USER, null);
		return new JsonMsg(true, "退出成功");
	}
}
