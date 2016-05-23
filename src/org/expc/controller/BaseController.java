package org.expc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.expc.dao.BaseDao;
import org.expc.entity.BaseDomain;
import org.expc.setting.Constant;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
public  class BaseController<T>{
	protected BaseDao<T> baseDao;

	public void setBaseDao(BaseDao baseDao)
	{
		this.baseDao = baseDao;
	}
	
	//列出所有记录 ,返回json串
	@RequestMapping("/list")
	public @ResponseBody List<T> list()
	{
		List<T> list=baseDao.loadAll();
		return list;
	}
	//列出所有记录 ,返回页面
	@RequestMapping("/listRView")
	public ModelAndView listRView(String view){
		List<T> list=baseDao.loadAll();
		if(null == view ) view=baseDao.getEntityClass().getSimpleName().toLowerCase()+"-list.jsp";
		ModelAndView mav=new ModelAndView(view);
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping("/findOne")
	public @ResponseBody T findOneById(T entity)
	{
		return baseDao.get(entity);
	}
	@RequestMapping("/findOne/{view}.htm")
	public String  findOneRView(T entity,@PathVariable String view, Model model)
	{
		model.addAttribute("ele", baseDao.get(entity));
		return view+".jsp";
	}
	@RequestMapping("/add")
	@ResponseBody public String add(T entity,HttpServletResponse res) throws IOException
	{
		String msg="添加成功";
		if(!baseDao.save(entity))
			msg="添加失败";
		return msg;
	}
	@RequestMapping("/addRView")
	public ModelAndView addRView(T entity,String view)
	{
		String msg="添加成功";
		if(!baseDao.save(entity))
			msg="添加失败";
		ModelAndView mav=new ModelAndView(view);
		mav.addObject("msg",msg);
		return mav;
	}
	
	@RequestMapping("/deleteBI")
	@ResponseBody public String deleteById(Integer[] id)
	{
		if(id==null) return "没有选中任何内容";
		StringBuilder sb = new StringBuilder();
		int count = 0;
		for(Serializable s:id)
			if(!baseDao.remove(s))
			{
				count++;
				sb.append("id为"+s+"的条目 删除失败");
			}
		if(count==0)
		return "删除成功";
		else return sb.append(count+"个错误").toString();
	}
	@RequestMapping("/deleteBS")
	@ResponseBody public String deleteByString(String[] id)
	{
		if(id==null) return "没有选中任何内容";
		StringBuilder sb = new StringBuilder();
		int count = 0;
		for(Serializable s:id)
			if(!baseDao.remove(s))
			{
				count++;
				sb.append("id为"+s+"的条目 删除失败");
			}
		if(count==0)
		return "删除成功";
		else return sb.append(count+"个错误").toString();
	}
	@RequestMapping("/update")
	@ResponseBody public String update(T entity)
	{
		if(baseDao.update(entity))
		return "修改成功";
		return "修改失败";
	}
	@RequestMapping("/{pageIndex}/{pageSize}")
	public @ResponseBody List<T> getPage(@PathVariable Integer pageIndex,@PathVariable Integer pageSize)
	{
		return baseDao.getPage(pageIndex, pageSize).getData();
	}
	
}
