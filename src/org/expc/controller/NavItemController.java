package org.expc.controller;


import java.io.IOException;

import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.NavItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/nI")
public class NavItemController extends BaseController<NavItem>{
	@Override
	@Resource(name="nIDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	@RequestMapping("/addWithFile")
	public String add(NavItem entity,MultipartFile htmlFile) throws IOException {
		// TODO Auto-generated method stub
		if(htmlFile==null) System.out.println("weird");
		if(htmlFile!=null)
			entity.setContent(htmlFile.toString());
		
		return super.add(entity);
	}
}
