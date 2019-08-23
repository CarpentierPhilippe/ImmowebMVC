<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.edu.realestate.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>

<%-- START --%>
<H1>
<%
	com.edu.realestate.model.Moderator u = new com.edu.realestate.model.Moderator();
	u.setName("Ever...ever...ver...er...r...");
	out.println("JSP");
	out.println("FOREVER");
	out.println(u.getName());
%>

</H1>
<%-- END --%>

</body>
</html>