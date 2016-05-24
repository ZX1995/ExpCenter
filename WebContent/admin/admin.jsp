<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value="/js/common.js"/>" ></script>
<script type="text/javascript" src="<c:url value='/js/jquery-2.2.2.min.js'/>" ></script>
<title></title>
</head>
<body>
<!-- header -->
<jsp:include page="/header.jsp" flush="true"></jsp:include>

<!-- content -->
<div class="content" id="content">
	
	
	<div class="list-box" id="">
		<ul class="menu-list">
			<li><a href="/teacher.adm" class="menu-item" >老师</a></li>
			<li><a href="/student.adm" class="menu-item" >学生</a></li>
			<li><a href="/navItem.adm" class="menu-item" >条目</a></li>
			<li><a href="/news.adm" class="menu-item" >新闻</a></li>
		</ul>
	</div>
	<div class = "right">
		<jsp:include page="${rightUrl }" flush="true"></jsp:include>
	</div>
</div>
<!-- footer -->
<jsp:include page="/footer.jsp" flush="true"></jsp:include>
</body>
</html>