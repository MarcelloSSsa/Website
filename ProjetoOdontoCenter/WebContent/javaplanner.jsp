<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<html>
<body>

	<div class="planner" id="planner"><%=getPlanner(request)%></div>
	<%@ page import="com.dhtmlx.planner.*,com.dhtmlx.planner.data.*"%>
<script src="./static/locale/locale_pt.js" type="text/javascript"></script>
<script src="./static/locale/locale_recurring_pt.js" type="text/javascript"></script>
<script src="./codebase/locale/locale_pt.js" type="text/javascript"></script>
<script src="./codebase/locale/recurring/locale_recurring_pt.js" type="text/javascript"></script>
	
	
	<%!String getPlanner(HttpServletRequest request) throws Exception {

		DHXPlanner planner = new DHXPlanner("./static/", DHXSkin.TERRACE);
			
		planner.localizations.set("pt");
		
		DHXPlanner s = new DHXPlanner("./codebase/", DHXSkin.TERRACE);

		s.setWidth(1000);
		//s.setInitialDate(2015, 4, 06);
		s.load("events.jsp", DHXDataFormat.JSON);
		s.data.dataprocessor.setURL("events.jsp");
		return s.render();
	}%>
</body>
</html>