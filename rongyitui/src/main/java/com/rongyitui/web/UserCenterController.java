package com.rongyitui.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rongyitui.po.WebUser;
import com.rongyitui.service.IWebUserService;

@Controller
@RequestMapping("/user")
public class UserCenterController implements JspPackage {
	@Resource
	private IWebUserService webUserService;

	@RequestMapping("/login")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("/center")
	public String userCenter(HttpSession session, ModelMap model) {
		WebUser currentUser = (WebUser) session
				.getAttribute(SessionKey.CURRENT_USER);
		// if (currentUser == null) {
		// return "redirect:/login.jsp";
		// }
		//
		// WebUser user =
		// this.webUserService.getWebUserById(currentUser.getId());
		// model.addAttribute("user", user);
		return JSP_PACKAGE_PREFIX + "user/basic";
	}
}
