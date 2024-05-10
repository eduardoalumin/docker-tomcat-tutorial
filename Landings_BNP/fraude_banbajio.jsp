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
        String sumaAseguradaMalUsoTarjeta;
        String malUsoTarjetaHasta;
        String sumaAseguradaFalsificacionTarjeta;
        String sumaAseguradaFraudePorInternet;
        String sumaAseguradaCargosNoReconocidosCI;
        String sumaAseguradaroboTalonario;
        String roboTalonarioHasta;
        String sumaAseguradaCompraProtegida;
        String sumaAseguradaAsaltoroboDE;
        String sumaAseguradaRoboObjetosPersonales;
        String sumaAseguradaRoboGadgets;        
        String asistencias;
        switch (planInt) {
            case 2620:  plan = "Plan 1";
                        costoMensual = " $203";
                        sumaAseguradaMalUsoTarjeta="Hasta $60,000";
                        malUsoTarjetaHasta = "$15,000";
                        sumaAseguradaFalsificacionTarjeta="Hasta $20,000";
                        sumaAseguradaFraudePorInternet="Hasta $20,000";
                        sumaAseguradaCargosNoReconocidosCI="$2,500";
                        sumaAseguradaroboTalonario="Hasta $60,000";
                        roboTalonarioHasta="$15,000";
                        sumaAseguradaCompraProtegida="$20,000";
                        sumaAseguradaAsaltoroboDE="Hasta $10,000";
                        sumaAseguradaRoboObjetosPersonales="$2,500";
                        sumaAseguradaRoboGadgets="$2,500";
                        asistencias="Amparado";
                        break;
            case 2621:  plan = "Plan 2";
                        costoMensual = "$243";
                        sumaAseguradaMalUsoTarjeta="Hasta $90,000";
                        malUsoTarjetaHasta = "$22,500";
                        sumaAseguradaFalsificacionTarjeta = "Hasta $25,000";
                        sumaAseguradaFraudePorInternet="Hasta $30,000";
                        sumaAseguradaCargosNoReconocidosCI="$5,000";
                        sumaAseguradaroboTalonario="Hasta $90,000";
                        roboTalonarioHasta="$22,500";
                        sumaAseguradaCompraProtegida="$30,000";
                        sumaAseguradaAsaltoroboDE="Hasta $10,000";
                        sumaAseguradaRoboObjetosPersonales="$5,000";
                        sumaAseguradaRoboGadgets="$2,500";
                        asistencias="Amparado";
                        break;
            case 2622:  plan = "Plan 3";
                        costoMensual = "$312";
                        sumaAseguradaMalUsoTarjeta="Hasta $120,000";
                        malUsoTarjetaHasta = "$30,000";
                        sumaAseguradaFalsificacionTarjeta = "Hasta $30,000";
                        sumaAseguradaFraudePorInternet="Hasta $40,000";
                        sumaAseguradaCargosNoReconocidosCI="$7,500";
                        sumaAseguradaroboTalonario="Hasta $120,000";
                        roboTalonarioHasta="$30,000";
                        sumaAseguradaCompraProtegida="$40,000";
                        sumaAseguradaAsaltoroboDE="Hasta $10,000";
                        sumaAseguradaRoboObjetosPersonales="$7,500";
                        sumaAseguradaRoboGadgets="$2,500";
                        asistencias="Amparado";
                        break;
            
                        
            default: plan = "Plan no v�lido";
                     costoMensual = "-";
                     sumaAseguradaMalUsoTarjeta="-";
                     malUsoTarjetaHasta = "-";
                     sumaAseguradaFalsificacionTarjeta ="-";
                     sumaAseguradaFraudePorInternet="-";
                     sumaAseguradaCargosNoReconocidosCI="-";
                     sumaAseguradaroboTalonario="-";
                     roboTalonarioHasta="-";
                     sumaAseguradaCompraProtegida="-";
                     sumaAseguradaAsaltoroboDE="-";
                     sumaAseguradaRoboObjetosPersonales="-";
                     sumaAseguradaRoboGadgets="-";
                     asistencias="-";
                     break;
        }
    
%>
<div class="cont">
  <div class="header">
    <div class="logo_banbajio"><img src="images/logo_banbajio.png"/></div>
    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
  </div>
  <div class="clear separador"></div>
  <div class="bannerBanbajio_fraude"><img src="images/ban_banbajio_fraude_m.jpg"/></div>
  <div class="cont_info">
    <h1>�Qu� plan he contratado?</h1>
    <h2>Contrataste el <strong><%=plan%></strong> y estar�s pagando <strong><%=costoMensual%></strong> MXN (IVA inclu�do) por �l.</h2>
    <p>Has contratado <strong>BanBaj�o Seguro contra Fraude</strong>, el seguro que te brinda seguridad para hacer frente a esos momentos inesperados de la vida. </p>
    <div class="separador"></div>
    <div class="coberturaT">Cobertura</div>
    <div class="sumaT">Suma Asegurada</div>
    <div class="clear"></div>
    <!--accordion-->
    <section id="only-one" data-accordion-group>
      <section data-accordion>
        <button data-control>
        <p>Mal Uso de Tarjeta</p>
        <span><%=sumaAseguradaMalUsoTarjeta%> MXN</span></button>
        <div data-content>
         
          <article><strong>Fraude por consumos derivados de robo o extrav�o de la tarjeta de cr�dito o d�bito.</strong> Si a consecuencia de un robo, hurto o extrav�o de tu tarjeta, se genera un da�o por uso indebido o fraudulento por parte de un tercero no autorizado te reembolsamos los cargos no reconocidos desde la fecha de la primera transacci�n fraudulenta y hasta 90 d�as despu�s del corte del estado de cuenta donde aparece la primera transacci�n ocurrida.<br>
		  Cubre tarjeta (d�bito y/o cr�dito) del titular + 1 tarjeta adicional de cualquier banco emisor.<br>
		  Se cubren 4 eventos  por a�o, limitado cada uno a <span class="costo"><%=malUsoTarjetaHasta%></span>
       	  </article>
        </div>
      </section>
      
      <section data-accordion>
        <button data-control>
        <p>Clonaci�n de Tarjeta en Establecimientos </p>
        <span><%=sumaAseguradaFalsificacionTarjeta%> MXN</span></button>
        <div data-content>
          	<article><strong>Fraude por falsificaci�n de la tarjeta.</strong> Si a consecuencia de falsificaci�n o alteraci�n del pl�stico o banda magn�tica, por impresi�n m�ltiple de vouchers del
          mismo cargo o clonaci�n, se genera un da�o por uso indebido o fraudulento por parte de un tercero no autorizado te cubrimos los cargos no reconocidos desde la fecha de la primera 	transacci�n fraudulenta y hasta 90 d�as despu�s del corte del estado de cuenta donde aparece la primera transacci�n ocurrida.<br>
		  Al presentar el n�mero de reporte de reclamaci�n que te asigna Banbaj�o, te pagaremos el 20% del monto reclamado; el porcentaje restante (80%) se pagar� solo si el dictamen de Banbaj�o es procedente. Ambos pagos no ser�n mayores que la suma asegurada contratada.<br>
		  Solo cubre tarjetas Banbaj�o (d�bito y/o cr�dito)  del titular + 1 tarjeta adicional.<br>
		  Se cubre 1 evento al a�o.
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Fraude por Internet (portal BanBaj�o)</p>
        <span><%=sumaAseguradaFraudePorInternet%> MXN</span></button>
        <div data-content>
          	<article><strong>Transferencias Electr�nicas de Fondos no reversibles, no autorizadas por el titular a trav�s del sitio de Internet o de la aplicaci�n de banca m�vil de la Instituci�n Autorizada para Transferencias Electr�nicas.</strong> En caso se transacciones ilegales realizadas en los portales de BanBaj�o (web y m�vil), te reembolsaremos los cargos no reconocidos desde la fecha de la primera transacci�n fraudulenta y hasta 90 d�as despu�s del corte del estado de cuenta donde aparece la primera transacci�n ocurrida.<br>
			Solo cubre cuentas Banbaj�o.<br>
			Se cubre 1 evento al a�o; hasta el monto reclamado.
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Cargos no reconocidos en Compras por Internet</p>
        <span><%=sumaAseguradaCargosNoReconocidosCI%> MXN</span></button>
        <div data-content>
          	<article><strong>Cargos No Reconocidos en la Compra de Bienes y Servicios a trav�s de Internet.</strong> En caso de cargos no reconocidos realizados a trav�s de cualquier portal de internet te reembolsamos el da�o ocurrido desde la fecha de la primera transacci�n fraudulenta y hasta 90 d�as despu�s del corte del estado de cuenta donde aparece la primera transacci�n ocurrida.<br>
			Se cubren los cargos no reconocidos superiores a $500MXN.<br>
			Solo cubre tarjetas BanBaj�o (d�bito y/o cr�dito)  del titular + 1 tarjeta adicional.<br>
			Se cubre 1 evento al a�o, hasta la suma asegurada contratada.
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Robo de Talonario/Cheques</p>
        <span><%=sumaAseguradaroboTalonario%> MXN</span></button>
        <div data-content>
          	<article><strong>Fraude por Robo o extrav�o de Cheques.</strong> En caso de uso il�cito de uno o varios cheques, derivado de robo o extrav�o de los mismos, te reembolsamos las p�rdidas ocurridas desde la fecha de la primera transacci�n fraudulenta y hasta 90 d�as despu�s del corte del estado de cuenta donde aparece la primera transacci�n ocurrida.<br><br>
			Solo cubre cuentas Banbaj�o.<br>
 			Se cubren 4 eventos por a�o, limitado c/u a <span class="costo"><%=roboTalonarioHasta%></span>
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Compra Protegida</p>
        <span><%=sumaAseguradaCompraProtegida%> MXN</span></button>
        <div data-content>
          	<article><strong>Robo de mercanc�a comprada con la Tarjeta de Cr�dito o D�bito.</strong> En caso de robo con violencia de las compras que realices con las tarjetas de Banco del Baj�o en establecimientos f�sicos, te reembolsamos el valor de las compras robadas.<br>
			Esta cobertura te protege hasta por 8 d�as despu�s de la fecha de la compra.<br> 
			Cubre las compras realizadas con tarjetas BanBaj�o (d�bito y/o cr�dito) del titular + 1 tarjeta adicional.<br> 
			Se cubre 1 evento al a�o; hasta el monto reclamado, limitado a la suma asegurada contratada.
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Asalto/Robo de la Disposici�n de Efectivo</p>
        <span><%=sumaAseguradaAsaltoroboDE%> MXN</span></button>
        <div data-content>
          	<article><strong>Robo de efectivo con cargo a las Tarjetas Amparadas.</strong> En caso de robo con violencia del efectivo dispuesto en cajero y/o ventanilla o si hayas sido forzado a realizar retiros de efectivo, te reembolsamos el valor robado (con un l�mite m�ximo de $5,000 por evento).<br>
			Esta cobertura te protege hasta por 1 hora despu�s de haber realizado el retiro en cajero o ventanilla.<br>
			Solo cubre tarjetas Banbaj�o (d�bito y/o cr�dito)  del titular + 1 tarjeta adicional.<br>
			Se cubren 2 eventos por a�o, limitado a $5,000 por evento.
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Robo de Objetos Personales</p>
        <span><%=sumaAseguradaRoboObjetosPersonales%> MXN</span></button>
        <div data-content>
          	<article>En caso de robo con violencia de objetos personales que porta el asegurado y/o que se encuentran bajo su resguardo, ejemplo: joyer�a, objetos de oro y plata, relojes, art�culos musicales, art�culos deportivos, bicicletas, anteojos, se te pagar� la suma asegurada contratada.<br>
			Se cubre 1 evento al a�o.
			<li>Esta cobertura no aplica para gadgets/equipos electr�nicos m�viles.</li>
			</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control>
        <p>Robo de Gadgets</p>
        <span><%=sumaAseguradaRoboGadgets%> MXN</span></button>
        <div data-content>
          	<article><strong>Robo de Equipo(s) Electr�nico(s) Fijo(s) y/o Port�til(es).</strong> En caso de robo con violencia de equipo electr�nico (ejemplo: smartphone, celulares, tablets), se te pagar� la suma asegurada contratada.<br>
			Se cubre 1 evento al a�o.
			</article>
        </div>
      </section>
      
      <h3>Adem�s</h3>
      <p>Tu seguro incluye un completo <strong>Servicio de Asistencias</strong> tales como:</p>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia legal telef�nica y representaci�n legal presencial:</p>
        <span style="width: 10% !important;"><%=asistencias%></span></button>
        <div data-content>
          <article>Por medio de una llamada telef�nica se le orientar� de c�mo proceder para realizar la denuncia de robo, a que instancias gubernamentales deber� acudir (polic�a, agencia de Ministerio P�blico) seg�n lo amerite cada caso, los documentos necesarios con los que deber� contar para levantar la denuncia de robo ante la autoridad competente, directorio y n�meros de tel�fono correspondientes de cada dependencia/ agencia de MP.<br>
		  No hay seguimiento del caso, no ampara proceso legal ante ninguna autoridad, no se proporciona asistencia presencial. Este servicio se proporcionar� las 24hrs del d�a, los 365 d�as del a�o a nivel nacional.
		  </article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia en transmisi�n de mensajes urgentes: �Cu�ndo aplica? </p>
        <span style="width: 10% !important;"><%=asistencias%></span></button>
        <div data-content>
          <article>Cuando el usuario requiera transmitir un mensaje urgente podr� comunicarse con Allianz Global Assistance para brindarle el servicio.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia para el bloqueo de tarjetas:</p>
        <span style="width: 10% !important;"><%=asistencias%></span></button>
        <div data-content>
          <article>Si el usuario fuera v�ctima de robo o asalto, se le brindar� la informaci�n necesaria requerida por las instituciones o compa��as emisoras para elbloqueo de las tarjetas de cr�dito, d�bito o comerciales.</article>
        </div>
      </section>
      <section data-accordion>
        <button data-control style="background: none;">
        <p style="margin-left: 0 !important; width: 90% !important;">� Gestor�a de Tr�mites:</p>
        <span style="width: 10% !important;"><%=asistencias%></span></button>
        <div data-content>
          <article>Cuando el Titular y/o Beneficiario requiera de una persona que gestione a su nombre, ante autoridades correspondientes, los tr�mites para:
			<li>Obtenci�n de copias de Actas de Nacimiento, Matrimonio y Defunci�n.</li>
			<li>Obtenci�n de Certificado de Adquisici�n o Enajenaci�n de Bienes Inmuebles.</li>
			<li>Obtenci�n y reposici�n de C�dula Profesional.</li>
			Los servicios ser�n proporcionados de acuerdo a los d�as, horarios y plazos establecidos por cada autoridad del Estado que se trate. El servicio de un gestor no incluye el pago de derechos, contribuciones, multas y/o montos requeridos por cualquier autoridad por ning�n concepto, debiendo realizarlo el Titular y/o Beneficiario.
		  </article>
        </div>
      </section>
    </section>
    <!--end accordion--> 
    
  </div>
  <div class="greyBG" style="text-align: justify;">Los servicios de asistencias son proporcionados por Allianz, para cualquier duda o informaci�n, comun�cate al 4164 � 4514.</div>
  <div class="redBanner2">
    <p>Te recordamos que cuentas con <strong>48</strong> horas para cancelar o revisar todo lo relacionado con tu seguro. Si as� lo decides, comun�cate al <strong>4164 � 4514</strong> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
  </div>
  <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n mostrada anteriormente solo es de car�cter informativo, para conocer las caracter�sticas particulares y el alcance de las coberturas de seguro y de los servicios de asistencias antes indicadas, consulta y descarga aqu� las Condiciones Generales del Seguro y Clausulado General de las Asistencias y los Derechos del Asegurado.</div>
  <div style="text-align: center">
    <div class="btFotter2"><a href="download/Condiciones_Generales_Fraude.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
    <div class="btFotter2"><a href="download/CG_BANCO_DEL_BAJIO_FRAUDE.pdf" target="_blank">Clausurado General de Asistencias</a></div>
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