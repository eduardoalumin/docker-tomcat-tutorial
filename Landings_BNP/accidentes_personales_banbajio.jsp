<!DOCTYPE html>
<html>
<head>
<%@page import="java.util.*" errorPage="errorRedirect.jsp" %>
<%@include file="security.jsp"%>
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
        String sumaAseguradaFallecimientoAccidental;
        String sumaAseguradaReembolsoGMA;
        String asistencia;
        
        switch (planInt) {
            case 2610:  plan = "Plan 1";
                        costoMensual = " $104";
                        sumaAseguradaFallecimientoAccidental = "$250,000";
                        sumaAseguradaReembolsoGMA = "Hasta $10,000";
                        asistencia = "Amparada";
                        break;
            case 2611:  plan = "Plan 2";
                        costoMensual = "$122";
                        sumaAseguradaFallecimientoAccidental = "$500,000";
                        sumaAseguradaReembolsoGMA = "Hasta $30,000";
                        asistencia = "Amparada";
                        break;
            case 2612:  plan = "Plan 3";
                        costoMensual = "$168";
                        sumaAseguradaFallecimientoAccidental = "$1,000,000";
                        sumaAseguradaReembolsoGMA = "Hasta $50,000";
                        asistencia = "Amparada";
                        break;
            case 2613:  plan = "Plan 4";
                        costoMensual = " $196";
                        sumaAseguradaFallecimientoAccidental = "$1,500,000";
                        sumaAseguradaReembolsoGMA = "Hasta $50,000";
                        asistencia = "Amparada";
                        break;                                    
            default: plan = "Plan no válido";
                     costoMensual = "-";
                     sumaAseguradaFallecimientoAccidental = "-";
                     sumaAseguradaReembolsoGMA = "-";  
                     asistencia = "-";
                     break;
        }
    
%>
<div class="cont">
  <div class="header">
    <div class="logo_banbajio"><img src="images/logo_banbajio.png"/></div>
    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
  </div>
  <div class="clear separador"></div>
  <div class="bannerBanbajio_accidentes"><img src="images/ban_banbajio_accidentes_m.jpg"/></div>
  <div class="cont_info">
    <h1>¿Qué plan he contratado?</h1>
    <h2>Contrataste el <strong><%=plan%></strong> y estarás pagando <strong><%=costoMensual%></strong> MXN (IVA incluído) por él.</h2>
    <p>Has contratado <strong>BanBajío Protección Accidentes Personales</strong>, el seguro que te brinda seguridad para hacer frente a esos momentos inesperados de la vida. </p>
    <div class="separador"></div>
    <div class="coberturaT">Cobertura</div>
    <div class="sumaT">Suma Asegurada</div>
    <div class="clear"></div>
    <!--accordion-->
    <section id="only-one" data-accordion-group>
      <section data-accordion>
        <button data-control>
        <p>Indemnización por Fallecimiento Accidental</p>
        <span><%=sumaAseguradaFallecimientoAccidental%> MXN</span></button>
        <div data-content>
          <article>Si el asegurado llegara a fallecer derivado de un accidente, de forma inmediata o dentro de hasta 90 días posteriores al mismo, se le pagará a su(s) beneficiario(s) la Suma Asegurada contratada. Cuentas con esta cobertura desde el primer día de contratación, ya que no aplican periodos de espera ni de exclusión. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Reembolso de Gastos Médicos por Accidente </p>
        <span><%=sumaAseguradaReembolsoGMA%> MXN</span></button>
        <div data-content>
          <article>En caso de accidente, te reembolsaremos todos los gastos médicos que incurras y que puedas acreditar con comprobantes. El límite de eventos es la suma asegurada contratada. Cuentas con esta cobertura desde el primer día de contratación, ya que no aplican periodos de espera ni de exclusión.</article>
        </div>
      </section>
      <h3>Además</h3>
      <p>Tu seguro incluye un completo <strong>Servicio de Asistencias</strong> tales como:</p>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">· Orientación Médica telefónica gratuita:</p>
        <span style="width: 10% !important;"><%=asistencia%></span></button>
        <div data-content>
          <article>Asesorías por parte de personal médico para orientarte sin costo en problemas menores, no considerados como emergencia médica. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">· Envío de Médico General a domicilio a costo preferencial</p>
        <span style="width: 10% !important;"><%=asistencia%></span></button>
        <div data-content>
          <article>Atención médica en tu hogar en caso de enfermedad que impida moverte. Esta asistencia cubre un evento al año y el costo de envío del médico y la consulta hasta por $600.00 MXN, en caso de existir un costo adicional, éste deberá ser cubierto directamente por el asegurado. </article>
        </div>
      </section>
    </section>
    <!--end accordion--> 
    
  </div>
  <div class="greyBG" style="text-align: justify;">Los servicios de asistencias son proporcionados por Allianz, para cualquier duda o información, comunícate al 4164 – 4514.</div>
  <div class="redBanner2">
    <p>Te recordamos que cuentas con <strong>48</strong> horas para cancelar o revisar todo lo relacionado con tu seguro. Si así lo decides, comunícate al <strong>4164 – 4514</strong> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
  </div>
  <div class="greyBG" style="margin-top: 20px; text-align: justify;">La información mostrada anteriormente solo es de carácter informativo, para conocer las características particulares y el alcance de las coberturas de seguro y de los servicios de asistencias antes indicadas, consulta y descarga aquí las Condiciones Generales del Seguro y Clausulado General de las Asistencias y los Derechos del Asegurado.</div>
  <div style="text-align: center">
    <div class="btFotter2"><a href="download/Condiciones_Generales_AP.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
    <div class="btFotter2"><a href="download/CG_BANCO_DEL_BAJIO_ACCIDENTES_PERSONALES.pdf" target="_blank">Clausurado General de Asistencias</a></div>
    <div class="btFotter2"><a href="download/Derechos_del_Asegurado_Cardif_ap_f.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
  </div>
  <div class="separador"></div>
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