<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.edu.realestate.model.*" %>
<%--@ page import="com.edu.realestate.service.*" --%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>ImmobilierSuperLux</title>
</head>
<body>
<%! String cid; %>
<%-- START --%>
<h1> 	

	<%-- Ce code permet d'afficher dans search.jsp le resultat de notre recherche --%>

<%--
	List<Advertisement> listAds = new ArrayList<>();
	try {

		cid = request.getParameter("cityId");
		ReferenceService service = new ReferenceServiceImpl();
		Integer id =Integer.parseInt(cid);
		SearchCriteria sc = new SearchCriteria();
		sc.setCityId(id);
		listAds = service.findAdsByCriteria(sc);
	}
	catch (Exception ex) {}
--%>
<h1>Advertisements</h1>
<ul>

	<%-- for (Advertisement adv : listAds) { --%>
	<li>
		<div>
			<span><%--= adv.getTitle() --%></span>
			<div><%--=adv.getDescription()--%></div>
		</div>
	</li>

<%-- } --%>
</ul>	

<%-- END --%>
</body>
</html>