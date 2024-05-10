<!DOCTYPE html>
<html>
<head>
<%@page import="java.util.*" errorPage="errorRedirect.jsp" %><%@include file="security.jsp"%>
<% response.setHeader("X-Frame-Options", "SAMEORIGIN"); %>
<meta charset="iso-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/reset.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font/fonts.css" type="text/css" rel="stylesheet" />
<script src="js/modernizr.custom.80818.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/accordion.css">
<link rel="stylesheet" type="text/css" href="css/jquery.accordion.css">
<title>Cardif SBI</title>
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
<% 
        int planInt = Integer.parseInt(  (String)session.getAttribute("usuarioLogin") );
        String plan;
        String costoMensual;
        String sumaAseguradaCompraProtegida;
        String sumaAseguradaAsaltoCajero;
        String sumaAseguradaFraudeInternet;
        String sumaAseguradaRoboCheques;
        String sumaAseguradaCarteraBolsaProtegida;
        String sumaAseguradaRoboCelularTablets;
        String sumaAseguradaRoboBienesMoviles;
        String sumaAseguradaMuerteAccidentalIncapacidadTotal;
        switch (planInt) {
            case 2511:  plan = "Plan 1";
                        costoMensual = "$95.00";
                        sumaAseguradaCompraProtegida="$10,000";
                        sumaAseguradaAsaltoCajero="$10,000";
                        sumaAseguradaFraudeInternet="$10,000";
                        sumaAseguradaRoboCheques="$10,000";
                        sumaAseguradaCarteraBolsaProtegida="$2,000";
                        sumaAseguradaRoboCelularTablets="$2,000";
                        sumaAseguradaRoboBienesMoviles="$2,000";
                        sumaAseguradaMuerteAccidentalIncapacidadTotal="$300,000";
                        break;
            case 2512:  plan = "Plan 2";
                        costoMensual = "$135.00";
                        sumaAseguradaCompraProtegida="$40,000";
                        sumaAseguradaAsaltoCajero="$40,000";
                        sumaAseguradaFraudeInternet="$40,000";
                        sumaAseguradaRoboCheques="$40,000";
                        sumaAseguradaCarteraBolsaProtegida="$2,000";
                        sumaAseguradaRoboCelularTablets="$4,000";
                        sumaAseguradaRoboBienesMoviles="$4,000";
                        sumaAseguradaMuerteAccidentalIncapacidadTotal="$300,000";
                        break;
            case 2513:  plan = "Plan 3";
                        costoMensual = "$160.00";
                        sumaAseguradaCompraProtegida="$60,000";
                        sumaAseguradaAsaltoCajero="$60,000";
                        sumaAseguradaFraudeInternet="$60,000";
                        sumaAseguradaRoboCheques="$60,000";
                        sumaAseguradaCarteraBolsaProtegida="$5,000";
                        sumaAseguradaRoboCelularTablets="$6,000";
                        sumaAseguradaRoboBienesMoviles="$6,000";
                        sumaAseguradaMuerteAccidentalIncapacidadTotal="$300,000";
                        break;            
            case 2514:  plan = "Plan 4";
                        costoMensual = "$207.00";
                        sumaAseguradaCompraProtegida="$80,000";
                        sumaAseguradaAsaltoCajero="$80,000";
                        sumaAseguradaFraudeInternet="$80,000";
                        sumaAseguradaRoboCheques="$80,000";
                        sumaAseguradaCarteraBolsaProtegida="$5,000";
                        sumaAseguradaRoboCelularTablets="$8,000";
                        sumaAseguradaRoboBienesMoviles="$8,000";
                        sumaAseguradaMuerteAccidentalIncapacidadTotal="$300,000";
                        break;    
            default: plan = "Plan no válido";
                     costoMensual = "-";
                     sumaAseguradaCompraProtegida="-";
                     sumaAseguradaAsaltoCajero="-";
                     sumaAseguradaFraudeInternet="-";
                     sumaAseguradaRoboCheques="-";
                     sumaAseguradaCarteraBolsaProtegida="-";
                     sumaAseguradaRoboCelularTablets="-";
                     sumaAseguradaRoboBienesMoviles="-";
                     sumaAseguradaMuerteAccidentalIncapacidadTotal="-";
                     break;
        }
    
    %>
<div class="cont">
  <div class="header">
    <div class="logo_scotiabank"><img src="images/logo_scotiabank.jpg"/></div>
    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
  </div>
  <div class="clear separador"></div>
  <div class="bannerVal_Seg"><img src="images/ban_val-seg_m.jpg"/></div>
  <div class="cont_info">
    <h1>¿Qué plan he contratado?</h1>
    <h2>Contrataste el <strong><%=plan %></strong> y estarás pagando <strong><%=costoMensual %></strong> MXN (IVA incluído) por el.</h2>
    <p><strong>Valores + Seguros</strong> ofrece protección a <strong>TODAS</strong> las tarjetas de crédito y débito que tengas para darte mayor tranquilidad en eventos inesperados como:</p>
    <div class="separador"></div>
    <div class="coberturaT">Cobertura</div>
    <div class="sumaT">Suma Asegurada</div>
    <div class="clear"></div>
    <!--accordion-->
    <section id="only-one" data-accordion-group>
      <section data-accordion>
        <button data-control>
        <p>Compra protegida</p>
        <span><%=sumaAseguradaCompraProtegida %> MXN</span></button>
        <div data-content>
          <article>Se cubre el robo de cualquier mercancía comprada con tarjetas de crédito, débito y cheques de cualquier banco Visa o MasterCard, cubriendo las 72 horas siguientes al haber realizado la compra.<br>
            Sin límite de reclamaciones para esta cobertura y hasta agotar la suma asegurada.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Asalto en cajero</p>
        <span><%=sumaAseguradaAsaltoCajero %> MXN</span></button>
        <div data-content>
          <article>Se cubre el robo en efectivo dispuesto en cualquier cajero y/o sucursal bancaria, con todas las tarjetas de crédito o débito de cualquier banco (Visa o MasterCard) por 8 horas posteriores al retiro del efectivo.<br>
            Sin límite de reclamaciones para esta cobertura y hasta agotar la suma asegurada.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Fraude en Scotia Web</p>
        <span><%=sumaAseguradaFraudeInternet %> MXN</span></button>
        <div data-content>
          <article>Se cubren las transacciones realizadas a través del portal bancario de Scotiabank. Se cubren 72 horas previas al aviso a la Institución Bancaria.<br>
            Sin límite de reclamaciones para esta cobertura y hasta agotar la suma asegurada.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Robo de cheques Scotiabank</p>
        <span><%=sumaAseguradaRoboCheques %> MXN</span></button>
        <div data-content>
          <article>Se cubre el uso fraudulento derivado del robo o extravío de cheques Scotiabank, 72 horas previas al aviso a la Institución Bancaria.<br>
            Sin límite de reclamaciones para esta cobertura y hasta agotar la suma asegurada.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Cartera y bolsa protegida</p>
        <span><%=sumaAseguradaCarteraBolsaProtegida %> MXN</span></button>
        <div data-content>
          <article>Se cubre el robo del bolso o cartera del titular o de terceros, siempre y cuando se encuentren bajo la custodia del titular en el momento del robo.<br>
            Se paga una suma asegurada fija independientemente de la cantidad de bolsas o carteras robadas de manera simultánea en un evento. Se cubre solo un evento por póliza.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Robo de celular y tablets</p>
        <span><%=sumaAseguradaRoboCelularTablets %> MXN</span></button>
        <div data-content>
          <article>Se cubre robo de celular o tablet mientras sean propiedades del titular o de terceros, en este último caso los equipos deberán estar bajo la custodia y responsabilidad del titular al momento del robo.<br>
            Se cubre un solo evento por póliza con una suma asegurada fija y con deducible del 15%.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Robo de bienes móviles</p>
        <span><%=sumaAseguradaRoboBienesMoviles %> MXN</span></button>
        <div data-content>
          <article>Se cubre el robo de laptops, GPS, Juegos de Video Portátiles, PDA y DVD ´s portátiles mientras sean propiedades del titular o de terceros, en este último caso los equipos deberán estar bajo la custodia y responsabilidad del titular al momento del robo.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Muerte accidental o Incapacidad Total y Permanente</p>
        <span><%=sumaAseguradaMuerteAccidentalIncapacidadTotal %> MXN</span></button>
        <div data-content>
          <article>Se cubre la Muerte Accidental cuando se produzca como consecuencia del robo ocurrido al efectuar disposiciones de efectivo (con cargo a las Tarjetas Amparadas), haciendo uso de su Tarjeta de Crédito o Débito, en cualquier Cajero o Sucursal.<br>
            Estás protegido por las 8 horas posteriores al retiro del efectivo.</article>
        </div>
      </section>
    </section>
    <!--end accordion-->
    <h3>Además</h3>
    <p>Tu seguro te ofrece un completo <strong>Servicio de Asistencias</strong> que incluye:<br>Asistencia legal (por robo de tarjeta y asesoría funeraria), Servicio de taxi seguro y Asistencia infocard.</p>
  </div>
  <div class="redBanner">
    <p>Te recordamos que cuentas con <strong>48 horas</strong> para cancelar o revisar todo lo relacionado con tu seguro. Si así lo decides, comunícate al <strong>01800-522-7343</strong> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
  </div>
  <div class="footer"><span>Descarga aquí las Condiciones Generales y los Derechos del Asegurado</span><img src="images/document.png"/> </div>
  <div class="btFotter"><a href="download/CNSF-S0104-0483-2011_Scotiabank_Valores_Seguros_Vida_mod.pdf" target="_blank">Condiciones Generales Completas</a></div>
  <div class="separadorbt"></div>
  <div class="btFotter"><a href="download/Der_Aseg_Cardif.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script type="text/javascript">
      $(document).ready(function() {
        $('#only-one [data-accordion]').accordion();

        $('#single[data-accordion]').accordion({
          transitionEasing: 'cubic-bezier(0.455, 0.030, 0.515, 0.955)',
          transitionSpeed: 200
        });
      });
    </script>
</html>