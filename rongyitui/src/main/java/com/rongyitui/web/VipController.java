package com.rongyitui.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rongyitui.po.WebUser;
import com.rongyitui.service.IWebUserService;

@Controller
//@SessionAttributes(value="currentUser")
public class VipController implements JspPackage {
	@Resource
	private IWebUserService webUserService;

	@RequestMapping(value = "/upg_vip", method = RequestMethod.GET)
	public String upgVip() {
		return JSP_PACKAGE_PREFIX + "user/upg_vip";
	}
}
