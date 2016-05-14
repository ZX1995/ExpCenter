package org.expc.controller;

import javax.annotation.Resource;

import org.expc.dao.CourseDao;
import org.expc.setting.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("")
public class JspDispacher {
	@Resource(name="courseDaoImpl")
	private CourseDao courseDao;

	@RequestMapping("/home")
	public String Home()
	{
		
		return Constant.HOME;
	}
	@RequestMapping("/loginPage")
	public String loginPage()
	{
		return Constant.LOGIN;
	}
}
