package org.expc.controller;


import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/student")
public class StudentController extends BaseController<Student>{
	private BaseDao baseDao;
	@Override
	@Resource(name="studentDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		this.baseDao = baseDao;
		super.setBaseDao(baseDao);
	}
}
