package com.rongyitui.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AlipayController implements JspPackage {

	@RequestMapping("/alipay")
	public String alipay() {
		return JSP_PACKAGE_PREFIX + "account/alipay";
	}
}
