<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">

<title></title>
</head>
<body>
<!-- header -->
<jsp:include page="/header.jsp" flush="true"></jsp:include>

<!-- content -->
<div class="content" id="content">
	
	
	<div class="list-box" id="">
		<ul class="menu-list">
			<li><a href="/teacher.adm" class="menu-item" target="bottom">老师</a></li>
			<li><a href="/student.adm" class="menu-item" target="bottom">学生</a></li>
			<li><a href="/nI.adm" class="menu-item" target="bottom">条目</a></li>
			<li><a href="/news.adm" class="menu-item" target="bottom">新闻</a></li>
		</ul>
	</div>
	
	<iframe frameborder="0" scrolling="no" name="bottom" src="/teacher.adm" width="100%" onload="setWinHeight(this)"></iframe>
	<script type="text/javascript">
	function setWinHeight(ob) {                     //自动调整iframe高度
    var win=ob; 
    if (document.getElementById) { 
        if (win && !window.opera) { 
            if (win.contentDocument && win.contentDocument.body.offsetHeight) 
                {win.height = win.contentDocument.body.offsetHeight; }

            else if(win.Document && win.Document.body.scrollHeight) 
                {win.height = win.Document.body.scrollHeight; }
        	} 
    	}
    if(win.height<1000) win.height=1000;
	} 
 
</script>
	
</div>
<!-- footer -->
<jsp:include page="/footer.jsp" flush="true"></jsp:include>
<script type="text/javascript" src="/js/index.js"></script>
<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
</body>
</html>