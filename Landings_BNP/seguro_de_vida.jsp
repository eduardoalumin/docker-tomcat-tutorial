<!doctype html>
<html>
    <head>
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
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-80132505-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body>
        <%    int intPlan = Integer.parseInt((String) session.getAttribute("usuarioLogin"));
            String plan;
            String precioPlan;

            switch (intPlan) {
            case 3073:
                plan = "Masivo Plan 1";
                precioPlan = "$220";
                break;
            case 3074:
                plan = "Masivo Plan 2";
                precioPlan = "300";
                break;
            case 3075:
                plan = "Emerging Plan 3";
                precioPlan = "$630";
                break;
            case 3076:
                plan = "Emerging Plan 4";
                precioPlan = "$940";
                break;
            case 3077:
                plan = "Premium Plan 5";
                precioPlan = "$1,780";
                break;
            case 3078:
                plan = "Premium Plan 6";
                precioPlan = "$4,320";
                break;
            case 3079:
                plan = "Masivo Plan 7";
                precioPlan = "$2,420";
                break;
            case 3080:
                plan = "Masivo Plan 8";
                precioPlan = "$3,300";
                break;
            case 3081:
                plan = "Emerging Plan 9";
                precioPlan = "$6,930";
                break;
            case 3082:
                plan = "Emerging Plan 10";
                precioPlan = "$10,340";
                break;
            case 3083:
                plan = "Premium Plan 11";
                precioPlan = "$19,580";
                break;
            case 3084:
                plan = "Premium Plan 12";
                precioPlan = "$47,520";
                break;
                
                
              	default:
	                plan = "Masivo Plan 1";
	                precioPlan = "$220";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank"><!--img src="images/logo_scotiabank.jpg"/--></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannersegurovida"><img src="images/banner_vida.jpg"/></div>
            <div class="cont_info">
                <h1>AHORA TU CAMINO ES MÁS SEGURO</h1>
                <h2 class="navy_blue">¡Felicidades por esta gran decisión! Contrataste el plan <strong><%=plan%> de Valor Factura 4-24 </strong> con el cual estarás pagando <strong><%=precioPlan%></strong> 
                    <%if (intPlan == 3073 || intPlan == 3074 || intPlan == 3075 || intPlan == 3076 || intPlan == 3077 || intPlan == 3078) {%> mensuales<%}%>
                    <%if (intPlan == 3079 || intPlan == 3080 || intPlan == 3081 || intPlan == 3082 || intPlan == 3083 || intPlan == 3084) {%> anuales<%}%>
                    (IVA incluido).
                </h2>
                <p><strong>Valor Factura 4-24 </strong> es un seguro complementario <strong>que cubre la diferencia entre el valor comercial de tu automóvil y su valor factura en caso de robo o pérdida total.</strong> Además, incluye un ecosistema de beneficios adicionales que podrás utilizar en cualquier momento.</p>
                <div class="separador"></div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Cobertura Primer año</p>
                        <div data-content>
                            <article>
                                <p><strong>Pago de deducible a Valor Comercial</strong><br>
                                En caso de ocurrir la Pérdida Total de tu Vehículo por robo o daños materiales y tengas que cubrir el deducible de tu seguro Primario, la Compañía te reembolsará el monto del Deducible descontado por la aseguradora primaria.</p>

                                <p>Esta cobertura será válida desde el momento de la contratación del seguro y sólo podrá ser utilizada en una sola ocasión.</p>                                
                            </article>  
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Cobertura segundo año </p>
                            <%--span><%=sumaMuerteAccidental%> MXN</span--%></button>
                        <div data-content>
                            <article>
                                <p><strong>Valor factura -return to invoice- (RTI)</strong><br>
                                En caso de ocurrir la Pérdida Total de tu Vehículo por robo o daños materiales, se te cubrirá la diferencia entre el Valor Factura y el Valor Comercial del Vehículo al momento de ocurrir el Siniestro, cuando el Siniestro haya ocurrido fuera del periodo de garantía establecido por la Aseguradora Primaria para pagar a Valor Factura.</p>

                                <p>Esta cobertura será válida desde momento de la contratación del seguro y sólo podrá ser utilizada en una sola ocasión.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Cobertura tercer año</p>
                            <%--span><%=sumaEnfermedadTerminal%> MXN</span--%></button>
                        <div data-content>
                            <article>
                                <p><strong>Valor factura -return to invoice- (RTI)</strong><br>
                                En caso de ocurrir la Pérdida Total de tu Vehículo por robo o daños materiales, se te cubrirá la diferencia entre el Valor Factura y el Valor Comercial del Vehículo al momento de ocurrir el Siniestro, cuando el Siniestro haya ocurrido fuera del periodo de garantía establecido por la Aseguradora Primaria para pagar a Valor Factura.</p>

                                <p>Esta cobertura será válida desde momento de la contratación del seguro y sólo podrá ser utilizada en una sola ocasión.</p>
                            </article>
                        </div>
                    </section>

                    <h3>¡Disfruta beneficios adicionales!</h3>
                    <section>
                        <p>Tu seguro incluye un <strong>ecosistema de beneficios</strong>, a través del acceso a un portal y App exclusivos en donde podrás:</p>
                        <ul class="element-list">
                            <li>Agendar tu cita de verificación (servicio disponible en las localidades que así lo requieran).</li>
                            <li>Consultar tus infracciones y recibir descuentos por pago anticipado.</li>
                            <li>Programar los servicios de tu auto para garantizar su correcto funcionamiento.</li>
                            <li>Recibir tips para el cuidado de tu auto, mediante un blog.</li>
                            <li>Disfrutar descuentos en servicios automotrices como Speedy, AutoZone y servicios de autolavado a nivel nacional.</li>
                            <li>Adquirir boletos de cine, alimentos como pizzas y servicios de entretenimiento (boliche, entre otros) con un precio preferencial.</li>
                        </ul>
                        <p>Además, al cumplir los primeros tres meses de tu póliza, <strong>¡cada trimestre podrás elegir entre uno de estos servicios!</strong></p>
                        <ul class="element-list">
                            <li>1 código en UBER, Didi o Beat ($50 de crédito).</li>
                            <li>1 código válido por un mes Spotify.</li>
                            <li>Folio de estación de gasolina por $150 (Hidrosina y otras estaciones con cobertura nacional).</li>
                            <li>Pago de estacionamiento o parquímetros.</li>
                        </ul>       
                    </section>
                </section>    
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                En caso  de siniestro, comunícate al número de Servicio de Atención a clientes : <a href="tel:800 801 2402" target="_blank">800 801 2402</a>
            </div>
            <div class="redBanner2">
                <p>Te recordamos que cuentas con 48 horas para cancelar o revisar todo lo relacionado con tu seguro. Si así lo decides, comunícate al <a href="tel:800 801 2402" target="_blank">800 801 2402</a> de lunes a viernes de 8:00 a 21:00 horas donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La información antes descrita es de carácter informativo, para conocer el alcance de las coberturas de Seguro, consulta las Condiciones Generales.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/condiciones_vida.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <!--div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_vital_escencial.pdf" target="_blank">Clausulado General de Asistencias</a></div-->
                <div class="btFotter2"><a href="download/folleto_vida.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
            </div>
            <div class="separador"></div>
        </div>
    </body>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.accordion.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#only-one [data-accordion]').accordion();

            $('#single[data-accordion]').accordion({
                transitionEasing: 'cubic-bezier(0.455, 0.030, 0.515, 0.955)',
                transitionSpeed: 200
            });
        });
    </script>
</html>