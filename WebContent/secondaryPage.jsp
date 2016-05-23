<%@page import="org.expc.setting.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><%=Constant.projectTitle %></title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/style1.css">
</head>
<body>
	<jsp:include page="header.jsp" flush="true"></jsp:include>
    <div class="content">    
       <jsp:include page="zxgk.jsp" flush="true"></jsp:include>     
        
      <div class="right le-right1">
        <div class="position">
          <span>当前位置-</span><a href="">中心概况 ></a><a href="">中心简介</a>
        </div>
          <div class="elecontent">${ele.content }</div>
          
      </div>
    </div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>