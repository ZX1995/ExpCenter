<%@page import="org.expc.util.PageBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%
	PageBean pb = (PageBean)request.getAttribute("pb");
	%>
	<div>
	 <div class="title"><a href="">新闻公告</a></div>
	<c:forEach var="ele" items="${pb.data }" begin="0" end="5"> 
	<p>
	<a href="/news/${ele.id }.htm">${ele.title }</a>
	<span><fmt:formatDate value="${ele.time }" pattern="[yyyy/MM/dd]"/></span>
	</p>
	</c:forEach>
	</div>

</body>
</html>