package org.expc.controller;


import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.NavGroup;
import org.expc.entity.NavItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/nG")
public class NavGroupController extends BaseController<NavGroup>{
	@Override
	@Resource(name="nGDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
}
