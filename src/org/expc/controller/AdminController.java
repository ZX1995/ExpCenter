package org.expc.controller;


import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController<Admin>{
	private BaseDao baseDao;
	@Override
	@Resource(name="adminDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		this.baseDao = baseDao;
		super.setBaseDao(baseDao);
	}
}
