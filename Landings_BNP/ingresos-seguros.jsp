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
        boolean hasGadgets = false;
        String plan;
        String costoMensual;
        String sumaAseguradaDesempleoInvoluntario;
        String sumaAseguradaDesempleoIncapacidad;
        String sumaAseguradaNacimientoHijo;
        String sumaAseguradaFallecimientoFamiliar;
        String sumaAseguradaCancelacionEvento;
        String sumaAseguradaTitulacion;
        String sumaAseguradaMatrimonio;
        String sumaAseguradaGadgets = "";
        switch (planInt) {
            case 2521:  plan = "Plan 1";
                        costoMensual = " $115";
                        sumaAseguradaDesempleoInvoluntario = "$10,000";
                        sumaAseguradaDesempleoIncapacidad = "$10,000";
                        sumaAseguradaNacimientoHijo = "$7,500";
                        sumaAseguradaFallecimientoFamiliar = "$7,500";
                        sumaAseguradaCancelacionEvento = "$3,000";
                        sumaAseguradaTitulacion = "$7,500";
                        sumaAseguradaMatrimonio = "$7,500";
                        break;
            case 2522:  plan = "Plan 2";
                        costoMensual = "$126";
                        sumaAseguradaDesempleoInvoluntario = "$15,000";
                        sumaAseguradaDesempleoIncapacidad = "$15,000";
                        sumaAseguradaNacimientoHijo = "$8,000";
                        sumaAseguradaFallecimientoFamiliar = "$8,000";
                        sumaAseguradaCancelacionEvento = "$4,000";
                        sumaAseguradaTitulacion = "$8,000";
                        sumaAseguradaMatrimonio = "$8,000";
                        break;
            case 2523:  plan = "Plan 3";
                        costoMensual = "$149";
                        sumaAseguradaDesempleoInvoluntario = "$20,000";
                        sumaAseguradaDesempleoIncapacidad = "$20,000";
                        sumaAseguradaNacimientoHijo = "$8,500";
                        sumaAseguradaFallecimientoFamiliar = "$8,500";
                        sumaAseguradaCancelacionEvento = "$5,000";
                        sumaAseguradaTitulacion = "$8,500";
                        sumaAseguradaMatrimonio = "$8,500";
                        break;
            case 2531:  plan = "Plan 1";
                        costoMensual = " $115";
                        sumaAseguradaDesempleoInvoluntario = "$10,000";
                        sumaAseguradaDesempleoIncapacidad = "$10,000";
                        sumaAseguradaNacimientoHijo = "$7,500";
                        sumaAseguradaFallecimientoFamiliar = "$7,500";
                        sumaAseguradaCancelacionEvento = "$3,000";
                        sumaAseguradaTitulacion = "$7,500";
                        sumaAseguradaMatrimonio = "$7,500";
                        break;
            case 2532:  plan = "Plan 2";
                        costoMensual = "$126";
                        sumaAseguradaDesempleoInvoluntario = "$15,000";
                        sumaAseguradaDesempleoIncapacidad = "$15,000";
                        sumaAseguradaNacimientoHijo = "$8,000";
                        sumaAseguradaFallecimientoFamiliar = "$8,000";
                        sumaAseguradaCancelacionEvento = "$4,000";
                        sumaAseguradaTitulacion = "$8,000";
                        sumaAseguradaMatrimonio = "$8,000";
                        break;
            case 2533:  plan = "Plan 3";
                        costoMensual = "$149";
                        sumaAseguradaDesempleoInvoluntario = "$20,000";
                        sumaAseguradaDesempleoIncapacidad = "$20,000";
                        sumaAseguradaNacimientoHijo = "$8,500";
                        sumaAseguradaFallecimientoFamiliar = "$8,500";
                        sumaAseguradaCancelacionEvento = "$5,000";
                        sumaAseguradaTitulacion = "$8,500";
                        sumaAseguradaMatrimonio = "$8,500";
                        break;
            case 2534:  plan = "Plan 4";
                        costoMensual = "$48";
                        sumaAseguradaDesempleoInvoluntario = "$4,000";
                        sumaAseguradaDesempleoIncapacidad = "$4,000";
                        sumaAseguradaNacimientoHijo = "$2,000";
                        sumaAseguradaFallecimientoFamiliar = "$2,000";
                        sumaAseguradaCancelacionEvento = "$1,000";
                        sumaAseguradaTitulacion = "$2,000";
                        sumaAseguradaMatrimonio = "$2,000";
                        break;
            case 2535:  plan = "Plan 5";
                        costoMensual = "$149";
                        sumaAseguradaDesempleoInvoluntario = "$10,000";
                        sumaAseguradaDesempleoIncapacidad = "$10,000";
                        sumaAseguradaNacimientoHijo = "$7,500";
                        sumaAseguradaFallecimientoFamiliar = "$7,500";
                        sumaAseguradaCancelacionEvento = "$3,000";
                        sumaAseguradaTitulacion = "$7,500";
                        sumaAseguradaMatrimonio = "$7,500";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2536:  plan = "Plan 6";
                        costoMensual = "$160";
                        sumaAseguradaDesempleoInvoluntario = "$15,000";
                        sumaAseguradaDesempleoIncapacidad = "$15,000";
                        sumaAseguradaNacimientoHijo = "$8,000";
                        sumaAseguradaFallecimientoFamiliar = "$8,000";
                        sumaAseguradaCancelacionEvento = "$4,000";
                        sumaAseguradaTitulacion = "$8,000";
                        sumaAseguradaMatrimonio = "$8,000";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2537:  plan = "Plan 7";
                        costoMensual = "$183";
                        sumaAseguradaDesempleoInvoluntario = "$20,000";
                        sumaAseguradaDesempleoIncapacidad = "$20,000";
                        sumaAseguradaNacimientoHijo = "$8,500";
                        sumaAseguradaFallecimientoFamiliar = "$8,500";
                        sumaAseguradaCancelacionEvento = "$5,000";
                        sumaAseguradaTitulacion = "$8,500";
                        sumaAseguradaMatrimonio = "$8,500";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2538:  plan = "Plan 8";
                        costoMensual = "$82";
                        sumaAseguradaDesempleoInvoluntario = "$4,000";
                        sumaAseguradaDesempleoIncapacidad = "$4,000";
                        sumaAseguradaNacimientoHijo = "$2,000";
                        sumaAseguradaFallecimientoFamiliar = "$2,000";
                        sumaAseguradaCancelacionEvento = "$1,000";
                        sumaAseguradaTitulacion = "$2,000";
                        sumaAseguradaMatrimonio = "$2,000";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2551:  plan = "Plan 1";
                        costoMensual = " $115";
                        sumaAseguradaDesempleoInvoluntario = "$10,000";
                        sumaAseguradaDesempleoIncapacidad = "$10,000";
                        sumaAseguradaNacimientoHijo = "$7,500";
                        sumaAseguradaFallecimientoFamiliar = "$7,500";
                        sumaAseguradaCancelacionEvento = "$3,000";
                        sumaAseguradaTitulacion = "$7,500";
                        sumaAseguradaMatrimonio = "$7,500";
                        break;
            case 2552:  plan = "Plan 2";
                        costoMensual = "$126";
                        sumaAseguradaDesempleoInvoluntario = "$15,000";
                        sumaAseguradaDesempleoIncapacidad = "$15,000";
                        sumaAseguradaNacimientoHijo = "$8,000";
                        sumaAseguradaFallecimientoFamiliar = "$8,000";
                        sumaAseguradaCancelacionEvento = "$4,000";
                        sumaAseguradaTitulacion = "$8,000";
                        sumaAseguradaMatrimonio = "$8,000";
                        break;
            case 2553:  plan = "Plan 3";
                        costoMensual = "$149";
                        sumaAseguradaDesempleoInvoluntario = "$20,000";
                        sumaAseguradaDesempleoIncapacidad = "$20,000";
                        sumaAseguradaNacimientoHijo = "$8,500";
                        sumaAseguradaFallecimientoFamiliar = "$8,500";
                        sumaAseguradaCancelacionEvento = "$5,000";
                        sumaAseguradaTitulacion = "$8,500";
                        sumaAseguradaMatrimonio = "$8,500";
                        break;
            case 2554:  plan = "Plan 4";
                        costoMensual = "$48";
                        sumaAseguradaDesempleoInvoluntario = "$4,000";
                        sumaAseguradaDesempleoIncapacidad = "$4,000";
                        sumaAseguradaNacimientoHijo = "$2,000";
                        sumaAseguradaFallecimientoFamiliar = "$2,000";
                        sumaAseguradaCancelacionEvento = "$1,000";
                        sumaAseguradaTitulacion = "$2,000";
                        sumaAseguradaMatrimonio = "$2,000";
                        break;
            case 2555:  plan = "Plan 5";
                        costoMensual = "$149";
                        sumaAseguradaDesempleoInvoluntario = "$10,000";
                        sumaAseguradaDesempleoIncapacidad = "$10,000";
                        sumaAseguradaNacimientoHijo = "$7,500";
                        sumaAseguradaFallecimientoFamiliar = "$7,500";
                        sumaAseguradaCancelacionEvento = "$3,000";
                        sumaAseguradaTitulacion = "$7,500";
                        sumaAseguradaMatrimonio = "$7,500";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2556:  plan = "Plan 6";
                        costoMensual = "$160";
                        sumaAseguradaDesempleoInvoluntario = "$15,000";
                        sumaAseguradaDesempleoIncapacidad = "$15,000";
                        sumaAseguradaNacimientoHijo = "$8,000";
                        sumaAseguradaFallecimientoFamiliar = "$8,000";
                        sumaAseguradaCancelacionEvento = "$4,000";
                        sumaAseguradaTitulacion = "$8,000";
                        sumaAseguradaMatrimonio = "$8,000";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2557:  plan = "Plan 7";
                        costoMensual = "$183";
                        sumaAseguradaDesempleoInvoluntario = "$20,000";
                        sumaAseguradaDesempleoIncapacidad = "$20,000";
                        sumaAseguradaNacimientoHijo = "$8,500";
                        sumaAseguradaFallecimientoFamiliar = "$8,500";
                        sumaAseguradaCancelacionEvento = "$5,000";
                        sumaAseguradaTitulacion = "$8,500";
                        sumaAseguradaMatrimonio = "$8,500";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
            case 2558:  plan = "Plan 8";
                        costoMensual = "$82";
                        sumaAseguradaDesempleoInvoluntario = "$4,000";
                        sumaAseguradaDesempleoIncapacidad = "$4,000";
                        sumaAseguradaNacimientoHijo = "$2,000";
                        sumaAseguradaFallecimientoFamiliar = "$2,000";
                        sumaAseguradaCancelacionEvento = "$1,000";
                        sumaAseguradaTitulacion = "$2,000";
                        sumaAseguradaMatrimonio = "$2,000";
                        sumaAseguradaGadgets = "$5,000";
                        hasGadgets = true;
                        break;
                        
            default: plan = "Plan no válido";
                     costoMensual = "-";
                     sumaAseguradaDesempleoInvoluntario = "-";
                     sumaAseguradaDesempleoIncapacidad = "-";
                     sumaAseguradaNacimientoHijo = "-";
                     sumaAseguradaFallecimientoFamiliar = "-";
                     sumaAseguradaCancelacionEvento = "-";
                     sumaAseguradaTitulacion = "-";
                     sumaAseguradaMatrimonio = "-";
                     break;
        }
    
%>
<div class="cont">
  <div class="header">
    <div class="logo_scotiabank"><img src="images/logo_scotiabank.jpg"/></div>
    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
  </div>
  <div class="clear separador"></div>
  <div class="bannerIng_Seg"><img src="images/ban_ing-seg_m.jpg"/></div>
  <div class="cont_info">
    <h1>¿Qué plan he contratado?</h1>
    <h2>Contrataste el <strong><%=plan%></strong> y estarás pagando <strong><%=costoMensual%></strong> MXN (IVA incluído) por el.</h2>
    <p><strong>Ingresos + Seguros</strong> brinda seguridad para hacer frente a algunos de los momentos más importantes de tu vida o ante eventos inesperados como: </p>
    <div class="separador"></div>
    <div class="coberturaT">Cobertura</div>
    <div class="sumaT">Suma Asegurada</div>
    <div class="clear"></div>
    <!--accordion-->
    <section id="only-one" data-accordion-group>
      <section data-accordion>
        <button data-control>
        <p>Desempleo Involuntario</p>
        <span><%=sumaAseguradaDesempleoInvoluntario%> MXN</span></button>
        <div data-content>
          <article>Si eres empleado con contrato laboral por tiempo indeterminado, en caso de quedar desempleado involuntariamente, se te pagará la suma asegurada contratada, siempre que permanezcas desempleado por más de 30 (treinta) días. Se excluye entre otros casos, la renuncia voluntaria, el  retiro por jubilación. Esta cobertura será válida después de 90 (noventa) días contados a partir de la fecha de contratación del seguro y sólo podrá ser utilizada una sola ocasión cada 12 (doce) meses durante la vigencia del seguro. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Desempleo Involuntario por Incapacidad Total Temporal</p>
        <span><%=sumaAseguradaDesempleoIncapacidad%> MXN</span></button>
        <div data-content>
          <article>Si eres un profesionista independiente, recibirás la suma asegurada contratada en caso de sufrir alguna enfermedad o accidente que no te permita continuar con tus labores, previa comprobación de la incapacidad y siempre que permanezcas en ese estado por más de 30 (treinta) días. Se excluye entre otros casos, lesiones corporales auto-infligidas, lesiones derivadas de la participación del asegurado en pruebas o contiendas de velocidad o derivadas de una riña, cuando el asegurado sea el provocador. Esta cobertura será válida después de 90 (noventa) días contados a partir de la fecha de contratación del seguro y sólo podrá ser utilizada una sola ocasión cada 12 (doce) meses durante la vigencia del seguro</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Nacimiento de un Hijo</p>
        <span><%=sumaAseguradaNacimientoHijo%> MXN</span></button>
        <div data-content>
          <article>En caso del nacimiento de un hijo, se te hará entrega de  la suma asegurada contratada. Esta cobertura será válida a partir del décimo (10) mes después de haber contratado el seguro. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Fallecimiento de un Familiar Directo</p>
        <span><%=sumaAseguradaFallecimientoFamiliar%> MXN</span></button>
        <div data-content>
          <article>Si por alguna causa, tu cónyuge, padres o hijos menores de 26 años fallecen, se te pagará la suma asegurada contratada. Sólo se cubre un evento por año. La cobertura es válida desde el primer día de contratación del seguro. En caso de fallecimiento de un hijo menor de 12 años, no obstante el monto establecido como suma asegurada, la indemnización no podrá ser mayor a dos veces el salario mínimo general anual vigente para la Ciudad de México y será pagado como concepto de gastos funerarios.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Cancelación de una actividad recreativa con boleto pagado</p>
        <span><%=sumaAseguradaCancelacionEvento%> MXN</span></button>
        <div data-content>
          <article>En caso de no poder asistir al evento para el cual adquiriste un boleto a causa de fallecimiento de algún familiar directo (cónyuge, padres o hijos), o que sufras un accidente de tráfico o te hospitalicen, el costo del boleto del concierto, teatro, danza, circo, eventos deportivos, exposiciones de arte o comerciales y reuniones de aniversario (ex-alumnos, ex-empleados), se te reembolsará. El monto máximo a ser reembolsado será la suma asegurada contratada. Esta cobertura es válida desde el primer día de contratación del seguro. La cobertura aplicará por boleto y se cubre únicamente el primer evento durante la vigencia del seguro.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Titulación</p>
        <span><%=sumaAseguradaTitulacion%> MXN</span></button>
        <div data-content>
          <article>Se cubre el pago de la suma asegurada contratada si tú o tu hijo(a) menor de 26 años se titulan a nivel licenciatura o superior, en una Institución educativa legalmente constituida y reconocida dentro del territorio nacional, a excepción de carreras técnicas. Esta cobertura será válida a partir del sexto (6) mes después de haber contratado el seguro.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Matrimonio</p>
        <span><%=sumaAseguradaMatrimonio%> MXN</span></button>
        <div data-content>
          <article>Te apoyamos en el momento más importante de tu vida, brindándote la suma asegurada contratada en caso de que contraigas matrimonio. Esta cobertura será válida a partir del sexto (6) mes después de haber contratado el seguro. Se considera matrimonio al contrato celebrado ante los funcionarios que establece la legislación correspondiente de los Estados Unidos Mexicanos y con las formalidades que ella contenga. </article>
        </div>
      </section>
    <%if (hasGadgets) {%>
      <div class="coberturaT" style="margin-top: 40px;">Cobertura adicional</div>
      <div class="sumaT" style="margin-top: 40px;">Suma Asegurada</div>
      <section data-accordion>
        <button data-control>
        <p>Robo de equipo electrónico fijo y/o portátil (gadgets)</p>
        <span><%=sumaAseguradaGadgets%> MXN</span></button>
        <div data-content>
          <article>En caso de robo del equipo electrónico fijo y/o portátil, se te pagará la suma asegurada contratada, ya sea de tu propiedad o de alguien más, siempre y cuando el equipo se encuentre bajo tu custodia y responsabilidad. El límite máximo de responsabilidad de la aseguradora es la suma asegurada, sin importar el número o valor de objetos robados, limitado por 2 eventos de $5,000 por año. El robo deberá ser comprobado mediante un acta levantada ante el ministerio público. Se excluye, entre otros casos el robo que sufran personas distintas al asegurado, el robo de equipos que sean rentados o tengan un esquema de arrendamiento. Los equipos que se cubren son: SmartPhones, Camaras de video / fotográficas, Ipods, Consolas de video juegos, GPS, Tabletas / Ipad, Discman, Discos duros portátiles, Go Pro, Drones, Laptops y Notebooks. </article>
        </div>
      </section>
    <%}%>
      <h3>Además</h3>
      <p>Tu seguro incluye un completo <strong>Servicio de Asistencias</strong> tales como:</p>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Legal Laboral Telefónica</p>
        <span style="width: 10% !important;"></span></button>
        <div data-content>
          <article>En caso de requerirlo se brindará asesoría por parte de un licenciado en derecho, para temas relacionados con el despido involuntario o separación involuntaria del trabajador. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Médica Telefónica</p>
        <span style="width: 10% !important;"></span></button>
        <div data-content>
          <article>En caso de requerirlo se brindará asesoría telefónica por personal médico para que te oriente ante cualquier información o consulta relacionada con tu salud. </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Psicológica Laboral Remota</p>
        <span style="width: 10% !important;"></span></button>
        <div data-content>
          <article>En caso de despido involuntario, se te brindará orientación psicológica, mediante una llamada o vía correo electrónico, durante el complicado proceso de aceptación de la situación y en la búsqueda de nuevas oportunidades laborales. </article>
        </div>
      </section>
    </section>
    <!--end accordion--> 
    
  </div>
  <div class="greyBG" style="text-align: justify;">Los servicios de asistencias son proporcionados por TM-ASSISTANCE en caso de requerir de alguno de éstos, comunícate al teléfono 50 14 94 82 en el área metropolitana o al 01 55 50 14 94 82 desde el interior de la República.</div>
  <div class="redBanner2">
    <p>Te recordamos que cuentas con <strong>48 horas</strong> para cancelar o revisar todo lo relacionado con tu seguro. Si así lo decides, comunícate al <strong>01 800 8012402</strong> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
  </div>
  <div class="greyBG" style="margin-top: 20px; text-align: justify;">La información antes descrita es de carácter informativo, para conocer las características particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aquí las condiciones generales del seguro y el clausulado general de las asistencias.</div>
  <div style="text-align: center">
    <div class="btFotter2"><a href="download/Cuadernillo_IS_2017_con_robo_de_equipo.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
    <div class="btFotter2"><a href="download/Clausurado_General_de_Asistencias.pdf" target="_blank">Clausurado General de Asistencias</a></div>
    <div class="btFotter2"><a href="download/Derechos_del_Asegurado_Cardif.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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