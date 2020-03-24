<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int numero = 7;
		try { 
			String strNumero = request.getParameter("NUMERO");
			numero = Integer.parseInt(strNumero);
		} catch(Exception e) { 
		 	// Vazio
		}
	%>
	<h1>Tabuada do numero <%=numero%></h1>
	
	<% for (int n = 0; n <= 10; n++) {%>
		<p><%=numero%> X <%=n%> = <%=(numero * n)%></p>
	<%} %>
</body>
</html>