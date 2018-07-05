<%@ page contentType="application/json" %>
<%@ page import="com.dhtmlx.demo.*" %>
<%@ page import="com.dhtmlx.planner.*"%>

<%= getEvents(request) %>
 

<%!
           	String getEvents(HttpServletRequest request) throws Exception {
                          	EventsManager evs = new EventsManager(request);
                          	return evs.run();
           	}
%>