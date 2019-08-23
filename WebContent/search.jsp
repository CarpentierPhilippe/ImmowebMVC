<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.edu.realestate.model.Moderator" %>
<!DOCTYPE html>
<html>
<head>
<title>Immobilier SuperLux</title> 
</head>
<body>

<%-- Affissage de la page search + le code  qui se trouve dans result.jsp --%>

<form action="result.jsp" method="get">
	<input type="text" name="cityId"/>
	<input type="submit" value="search"/>
</form>
</body>
</html>