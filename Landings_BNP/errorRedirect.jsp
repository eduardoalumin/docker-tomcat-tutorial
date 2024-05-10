<%@ page import="java.util.*" isErrorPage = "true"%>
<%--
Esta pagina recibe todos los errores y redirecciona a la pagina correcta para recibirlos. 
El error especifico se puede pasar como parametro (error) a la siguiente pagina segun la siguiente tabla:

0   Exception desconocida
1   tv.digiworks.util.SecurityViolationException (si un usuario no tiene permiso para entrar o intento entrar sin una session)
--%>
<%
exception.printStackTrace();
String serverBase = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+ "/";
String pag;

if (exception instanceof Exception) {	
	pag = "index.jsp?error=1";
}  else {
	pag = "index.jsp?error=0";
}
pag = serverBase + pag;

response.sendRedirect(pag);
%>