<%
String usuarioLogin = (String) session.getAttribute("usuarioLogin");
if (usuarioLogin == null) {
    throw new Exception("No hay sesion");
}
%>