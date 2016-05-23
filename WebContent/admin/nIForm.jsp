<%@page import="org.expc.setting.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Constant.projectTitle %></title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script type="text/javascript" src="../js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script src="../ckeditor/ckeditor.js"></script>
<script src="../ckfinder/ckfinder.js"></script>
</head>
<body>
	<style type="text/css">
		.form-group{
		float:none;
		}
	</style>
	<form action ="/nI/saveOrUpdate" method="post"  role="form" class="form-horizontal asyn-form">
		<div class="form-group col-sm-2">
			<label >条目标识</label>
			<input name="id"  class="form-control" value="${ ele.id}">
		</div>
		<div class="form-group col-sm-2">
			<label >条目名称</label>
			<input name="name"  class="form-control" value="${ele.name }">
		</div>
		<div class="form-group col-sm-2" value="${ele.remark }">
			<label >条目备注</label>
			<input name="remark"  class="form-control">
		</div>
		<div class="form-group">
			<label >条目内容</label>
			<textarea rows="10" cols="5" name="content" id="content" value="${ele.content }"></textarea>
		</div>
		<button type="submit" class="btn btn-default">提交</button>
	</form>
	<script type="text/javascript">
	var editor=CKEDITOR.replace( 'content', {
 	    filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
 	    filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?Type=Images',
 	    filebrowserFlashBrowseUrl: '/ckfinder/ckfinder.html?Type=Flash',
 	    filebrowserUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
 	    filebrowserImageUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
 	    filebrowserFlashUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
 	});
	</script>
</body>
</html>