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
        String sumaAseguradaCancer;
        String sumaAseguradaInfarto;
        String sumaAseguradaCerebrovascular;
        String asistencia;
        
        switch (planInt) {
            case 2630:  plan = "Plan 1";
                        costoMensual = " $204";
                        sumaAseguradaCancer = "$300,000";
                        sumaAseguradaInfarto = "$300,000";
                        sumaAseguradaCerebrovascular = "$300,000";
                        asistencia = "Amparada";
                        break;
            case 2631:  plan = "Plan 2";
                        costoMensual = " $227";
                        sumaAseguradaCancer = "$350,000";
                        sumaAseguradaInfarto = "$350,000";
                        sumaAseguradaCerebrovascular = "$350,000";
                        asistencia = "Amparada";
                        break;
            case 2632:  plan = "Plan 3";
                        costoMensual = " $250";
                        sumaAseguradaCancer = "$400,000";
                        sumaAseguradaInfarto = "$400,000";
                        sumaAseguradaCerebrovascular = "$400,000";
                        asistencia = "Amparada";
                        break;                                  
            default: plan = "Plan no v�lido";
                     costoMensual = "-";
                     sumaAseguradaCancer = "-";
                     sumaAseguradaInfarto = "-";
                     sumaAseguradaCerebrovascular = "-";  
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
  <div class="bannerBanbajio_enfermedades_graves"><img src="images/ban_banbajio_enfermedades_graves_m.jpg"/></div>
  <div class="cont_info">
    <h1>�Qu� plan he contratado?</h1>
    <h2>Contrataste el <strong><%=plan%></strong> y estar�s pagando <strong><%=costoMensual%></strong> MXN (IVA inclu�do) por �l.</h2>
    <p>Has contratado <strong>BanBaj�o Protecci�n Enfermedades Graves</strong>, el seguro que te brinda seguridad para hacer frente a esos momentos inesperados de la vida. </p>
    <div class="separador"></div>
    <div class="coberturaT">Cobertura</div>
    <div class="sumaT">Suma Asegurada</div>
    <div class="clear"></div>
    <!--accordion-->
    <section id="only-one" data-accordion-group>
      <section data-accordion>
        <button data-control>
        <p>C�ncer</p>
        <span><%=sumaAseguradaCancer%> MXN</span></button>
        <div data-content>
          <article>En caso de la primera diagnosis  de c�ncer, como podr�a ser; c�ncer de mama en mujeres o c�ncer de pr�stata en hombres as� como c�ncer de est�mago en ambos g�neros, se pagar� la suma asegurada contratada. Aplica per�odo de carencia de 6 meses. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Infarto al Miocardio </p>
        <span><%=sumaAseguradaInfarto%> MXN</span></button>
        <div data-content>
          <article>En caso de la primera diagnosis de infarto se pagar� la suma asegurada contratada. Aplica per�odo de carencia de 6 meses.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Accidente Cerebrovascular (Embolia Cerebral)</p>
        <span><%=sumaAseguradaCerebrovascular%> MXN</span></button>
        <div data-content>
          <article>En caso de la primera diagnosis de embolia cerebral, se pagar� la suma asegurada contratada . Aplica per�odo de carencia de 6 meses.</article>
        </div>
      </section>

      <h3>Adem�s</h3>
      <p>Tu seguro incluye un completo <strong>Servicio de Asistencias</strong> tales como:</p>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">� Env�o de ambulancia:</p>
        <span style="width: 10% !important;"><%=asistencia%></span></button>
        <div data-content>
          <article>A petici�n del usuario y en caso de accidente o enfermedad grave que pongan en peligro la vida del usuario, se gestionar� su traslado al centro hospitalario p�blico o privado m�s cercano y/o adecuado requerido. Este servicio se proporcionar� las 24 hrs. del d�a, los 365 d�as del a�o a nivel nacional. Se cuenta con 1 evento al a�o por familia (no as� por cada integrante de la familia). </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">� Check Up Especializado:</p>
        <span style="width: 10% !important;"><%=asistencia%></span></button>
        <div data-content>
          <article>A petici�n del usuario, se dar�n referencias de la red de laboratorios  para que el usuario seleccione al m�s adecuado a sus necesidades y se gestione una cita para que acuda a realizarse los estudios del paquete que corresponda conforme a lo siguiente: </br></br>
            <strong>Para Mujeres:</strong>
              <ol class="asistenciaUL" type="a">
                <li>Qu�mica Sangu�nea de 12 Elementos (QS12),</li>
                <li>Examen General de Orina (EGO)</li>
                <li>Biometr�a Hem�tica Completa (BHC).</li>
                <li>Radiograf�a de T�rax</li>
                <li>Mastograf�a</li>
                <li>Papanicolau</li>
              </ol>
              </br></br>
            <strong>Para Hombres:</strong>
              <ol class="asistenciaUL" type="a">
                <li>Qu�mica Sangu�nea de 12 Elementos (QS12),</li>
                <li>Examen General de Orina (EGO)</li>
                <li>Biometr�a Hem�tica Completa (BHC)</li>
                <li>Radiograf�a de T�rax</li>
                <li>Ant�geno prost�tico</li>
              </ol>
              </br></br>
            Se cubre el paquete de estudios con un l�mite m�ximo de $5,500.00 (Cinco mil quinientos pesos 00/100 M.N.), en caso de haber una diferencia, �sta deber� de ser cubierta por el usuario directamente al laboratorio. Quedan excluidos los hospitales. Se tiene 1 evento al a�o por familia (no as� por cada integrante de la familia).  
          </article>
        </div>
      </section>
    </section>
    <!--end accordion--> 
    
  </div>
  <div class="greyBG" style="text-align: justify;">Los servicios de asistencias son proporcionados por Allianz, para cualquier duda o informaci�n, comun�cate al 4164 � 4514.</div>
  <div class="redBanner2">
    <p>Te recordamos revisar toda la informaci�n relacionada a tu seguro y que cuentas con <strong>48</strong> horas para cancelarlo . Si as� lo decides, comun�cate al <strong>4164 � 4514</strong> de lunes a viernes de 8:30 a 21:00 horas, donde con gusto te atenderemos.</p>
  </div>
  <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n mostrada anteriormente solo es de car�cter informativo, para conocer las caracter�sticas particulares y el alcance de las coberturas de seguro y de los servicios de asistencias antes indicadas, consulta y descarga aqu� las Condiciones Generales del Seguro, el Clausulado General de las Asistencias y los Derechos del Asegurado.</div>
  <div style="text-align: center">
    <div class="btFotter2"><a href="download/CG-BANCO-DEL-BAJIO-ENFERMEDADES-GRAVES.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
    <div class="btFotter2"><a href="download/CG_CNSF-Condiciones-Generales_Asistencias_2019.pdf" target="_blank">Clausurado General de Asistencias</a></div>
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