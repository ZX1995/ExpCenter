package org.expc.controller;


import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.NavigationItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/nI")
public class NavigationItemController extends BaseController<NavigationItem>{
	private BaseDao baseDao;
	@Override
	@Resource(name="navigationItemDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		this.baseDao = baseDao;
		super.setBaseDao(baseDao);
	}
}
