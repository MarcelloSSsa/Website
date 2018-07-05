<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logoff</title>
</head>
<body>
	<%
		System.out.println(session.getAttribute("Logado"));
		session.removeAttribute("Logado");
		System.out.println(session.getAttribute("Logado"));
		session.invalidate();
		response.sendRedirect("clienteLoginForm.jsp");
	%>

	<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>

</body>
</html>