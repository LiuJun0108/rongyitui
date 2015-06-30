package com.rongyitui.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LeftController extends JspPackageController {

	@RequestMapping(value = "/left", method = { RequestMethod.GET })
	public String left() {
		return JSP_PACKAGE_PREFIX + "left";
	}
}
