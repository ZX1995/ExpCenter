package org.expc.controller;

import javax.annotation.Resource;

import org.expc.dao.CourseDao;
import org.expc.dao.NavItemDao;
import org.expc.entity.NavItem;
import org.expc.setting.Constant;
import org.expc.setting.Nav;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("")
public class RequestDispacher {
	@Resource(name="courseDaoImpl")
	private CourseDao courseDao;
	@Resource(name="nIDaoImpl")
	private NavItemDao nIDao;
	@RequestMapping("/home")
	public String Home()
	{
		
		return "/index.jsp";
	}
	@RequestMapping("/loginPage")
	public String loginPage()
	{
		return Constant.LOGIN;
	}
	
	@RequestMapping("/{id}.htm")
	public String navDispatcher(@PathVariable String id,Model model){
		NavItem nI = nIDao.get(id);
		int index= Integer.parseInt(id.substring(0, 2));
		String navLink = "/"+id.substring(0,2)+"0100.htm";
		Nav nav = Constant.navs[index];
		model.addAttribute("nav",nav);
		model.addAttribute("navLink", navLink);
		model.addAttribute("nI", nI);
		return "/secondaryPage.jsp";
	}
	
	/*@RequestMapping("{key}.adm")
	public String AdmDispatcher(@PathVariable String key, Model model){
		String 
	}*/
}
