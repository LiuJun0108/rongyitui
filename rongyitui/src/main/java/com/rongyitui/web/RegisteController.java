package com.rongyitui.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rongyitui.exception.SystemException;
import com.rongyitui.model.JsonMsg;
import com.rongyitui.po.WebUser;
import com.rongyitui.service.IWebUserService;

@Controller
public class RegisteController {
	private Logger logger = Logger.getLogger(RegisteController.class);

	@Resource
	private IWebUserService webUserService;
	
	/**
	 * resultMsg.message == 1 : 验证码输入不正确<br/>
	 * resultMsg.message == 2 : 用户名重复
	 * 
	 * @param webUser
	 * @param cpwd
	 * @param yzm
	 * @param session
	 * @return
	 */
	@RequestMapping("/reg")
	public ModelAndView reg(WebUser webUser, String cpwd, String yzm, HttpSession session) {
		// 重复密码
		if (!cpwd.equals(webUser.getPassword())) {
			logger.error("重复密码输入错误。密码：" + webUser.getPassword() + ", 重复密码：" + cpwd);
			throw new SystemException();
		}

		// 检查验证码
		String session_yzm = (String) session.getAttribute(SessionKey.CHECK_CODE);
		if (session_yzm != null) {
			if (!session_yzm.equals(yzm)) {
				return new ModelAndView("reg", "resultMsg", new JsonMsg(false, "验证码输入不正确", 1));
			}
		} else {
			logger.error("验证码生成有误");
		}
		
		WebUser user = this.webUserService.getWebUserByLogin(webUser.getLogin());
		if(user != null) {
			logger.info("用户名重复：" + webUser.getLogin());
			return new ModelAndView("reg", "resultMsg", new JsonMsg(false, "用户名重复", 2));
		}

		this.webUserService.addWebUser(webUser);
		return new ModelAndView("redirect:reg_success.jsp");
	}

}
