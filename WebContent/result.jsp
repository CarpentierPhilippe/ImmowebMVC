<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.edu.realestate.model.*"  %>
<%@ page import = "java.util.List"  %>
<%@ page import = "com.edu.realestate.services.*"  %>
<%@ page import = "com.edu.realestate.exceptions.*"  %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	ReferenceService service = new ReferenceServiceImpl();
	String strId = request.getParameter("cityId");
	SearchCriteria sc = new SearchCriteria();
	sc.setCityId(Integer.parseInt(strId));
	
	List<Advertisement> listAds;
	try {
		listAds = service.findAdsByCriteria(sc);
		if(listAds.size()==0){
			%> 
			<H1>			
				<% out.println("Pas de resultats"); %>
			</H1>
			<%
		}
		%>
		<H1>			
			Nombre de résultats : <% out.println(listAds.size()); %>
		</H1>
		<ul><%
		for (Advertisement ad : listAds){
			%>
			<li>
				<% out.println(ad.getId());%>
			</li>
			<%
		}
		%></ul><%
	} catch (RealEstateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

%>
</body>
</html>