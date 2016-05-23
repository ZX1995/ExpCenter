<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
<title></title>
</head>
<body>

	<jsp:include page="${requestScope.leftPage }"></jsp:include>
	<jsp:include page="${requestScope.rightPage }"></jsp:include>
	
</body>
</html>