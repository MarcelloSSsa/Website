<html>
<body>

	<div class="planner" id="planner"><%=getPlanner(request)%></div>
	<%@ page import="com.dhtmlx.planner.*,com.dhtmlx.planner.data.*"%>
	
	
	<%!String getPlanner(HttpServletRequest request) throws Exception {

		DHXPlanner s = new DHXPlanner("./codebase/", DHXSkin.TERRACE);

		s.setWidth(1000);
		//s.setInitialDate(2015, 4, 06);
		s.load("events.jsp", DHXDataFormat.JSON);
		s.data.dataprocessor.setURL("events.jsp");
		return s.render();
	}%>
</body>
</html>