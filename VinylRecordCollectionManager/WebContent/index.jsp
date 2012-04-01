<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" />
<title>Vinyl Record Collection Manager</title>
</head>
<body>
<div id="container" style="border:1px black solid;width:800px">
<%@ include file="include/header.jsp" %>
<%@ include file="include/margin.jsp" %>
<%  String content = (String)request.getSession().getAttribute("content");
	if( content == null )
		content = "content/home.jsp";
	else
		content = "content/" + content + ".jsp";
%>
<div id="content" style="border-left:solid 2px grey;padding:5px;margin-left:160px;width:610px">
<jsp:include page="<%=content.toString()%>" />
</div>
</div>
</body>
</html>