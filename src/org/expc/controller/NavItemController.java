package org.expc.controller;


import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.NavItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/nI")
public class NavItemController extends BaseController<NavItem>{
	@Override
	@Resource(name="nIDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
}
