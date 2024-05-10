<!DOCTYPE html>
<html>
<head>
<%
int error = -1;
try { error  = Integer.parseInt(request.getParameter("error")); } catch (NumberFormatException nfe) {}
String mensaje = "";
switch (error) {
    case 0:
        mensaje = "El código introducido no es válido, favor de verificar";
        break;
    case 1:
        mensaje = "El código introducido no es válido, favor de verificar";
        break;
    case 2:
        mensaje = "El código introducido no es válido, favor de verificar";
        break;
}
%>
<% response.setHeader("X-Frame-Options", "SAMEORIGIN"); %>
<meta charset="iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/reset.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font/fonts.css" type="text/css" rel="stylesheet" />
<script src="js/modernizr.custom.80818.js" type="text/javascript"></script>
<script src="js/validateUtil.js" type="text/javascript"></script>
<title>Cardif SBI</title>
<script type="text/javascript">
function handleTry(root) {
    /* Aqui se manejan los errores */

    /* Aqui se manejan los errores */
    //setErrorOnTDFromXML(root, "invalid_login", "idDIVCorreo");    
    
    setShowOnTDFromXML(root, "error_general", "idDIVError");    
    changeElement('idIMGLoad2','idBtnEntrar');
    
    
        //showElement("idDIVErrorSesion",false);
    
}

function handleCatch(request) {
    showElement('idDIVError', false);
    document.location = request.responseText;
}

window.onload = function () {
    document.form1.codigo.focus();
    <%if (error != -1) {%>
            showElement("idDIVError",true);
    <% } %>
}

</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-80132505-1', 'auto');
  ga('send', 'pageview');

</script>

</head>
<body>
<div class="cont">
    <form method="post" name="form1" action="">
  <div class="header">
    <div class="logo_scotiabank"></div>
    <div class="logo_cardifh"><img src="images/logo_cardif.png"/></div>
  </div>
  <div class="clear separador"></div>
  <div class="left"> <img src="images/key_log.png"/>
    <h1>Login</h1>          
    
    <div class="formCont"><img src="images/user_.jpg"/> <span>Folio de confirmación</span>
        <div class="clear error" id="idDIVError" style="display: none;">El código introducido no es válido, favor de verificar</div>
        <input type="text" name="codigo"/>
    </div>
    <div class="clear separador"></div>
    <div>	
        <input type="image" src="images/1x1.png" value=" " id="idBtnEntrar" class="btEntrar" border="0" onclick="changeElement('idBtnEntrar', 'idIMGLoad2'); ajaxIt('doIndex.jsp'); return false;"/>
        <img alt="loading" id="idIMGLoad2" style="display: none;" src="images/load.gif" width="16" height="16" border="0"/>
    </div>
  </div>
  <div class="right"><img src="images/img_header_login_m.jpg"/></div>
  <div class="clear img_home"><img src="images/img_home_m.jpg"/></div>
  </form>
</div>
</body>
</html>