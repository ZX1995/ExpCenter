package org.expc.setting;

import java.util.HashMap;
import java.util.Map;
public class Constant {
	   public static final  Map<String, Integer>PAGE_SIZE=new HashMap<String, Integer>();
	   static{
		   PAGE_SIZE.put("Admin",8);
		   PAGE_SIZE.put("Student", 8);
		   PAGE_SIZE.put("Teacher", 8);
		   PAGE_SIZE.put("Board", 8);
		   PAGE_SIZE.put("News", 8);
		   PAGE_SIZE.put("Course", 8);
		   PAGE_SIZE.put("Unit", 8);
		   PAGE_SIZE.put("NavItem", 30);
	   }
	   public static final Nav [] navs={new Nav(),new Nav("中心概况","zxgk.jsp"),new Nav("中心动态","zxdt.jsp"),
		   new Nav("实验教学","syjx.jsp"),new Nav("虚拟仿真","xnfz.jsp"),new Nav("中心成果","zxcg.jsp"),
		   new Nav("管理制度","glzd.jsp"),new Nav("服务指南","fwzn.jsp"),new Nav("下载中心","xzzx.jsp")};
	   public static final String RESULT="/result.jsp",LOGIN="/login.jsp",HOME ="/home.jsp";
	   public static final String projectTitle = "英语教学平台";
}
