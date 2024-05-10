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
	            case 2960:
	                plan = "Básico Individual";
	                precioPlan = "$220";
	                break;
	            case 2961:
	                plan = "Intermedio Individual";
	                precioPlan = "$300";
	                break;
	            case 2962:
	                plan = "Superior Individual";
	                precioPlan = "$510";
	                break;
	            case 2963:
	                plan = "Total Individual";
	                precioPlan = "$630";
	                break;
                case 2964:
                    plan = "Premium Individual";
                    precioPlan = "$830";
                    break;
                case 2965:
                    plan = "Básico Familiar";
                    precioPlan = "$320";
                    break;
                case 2966:
                    plan = "Intermedio Familiar";
                    precioPlan = "$570";
                    break;
                case 2967:
                    plan = "Superior Familiar";
                    precioPlan = "$1,000";
                    break;
                case 2968:
                    plan = "Total Familiar";
                    precioPlan = "$1,280";
                    break;
                case 2969:
                    plan = "Premium Familiar";
                    precioPlan = "$1,760";
                    break;
                case 2970:
                    plan = "Básico Individual Anual";
                    precioPlan = "$2,420";
                    break;
                case 2971:
                    plan = "Intermedio Individual Anual";
                    precioPlan = "$3,300";
                    break;
                case 2972:
                    plan = "Superior Individual Anual";
                    precioPlan = "$5,610";
                    break;
                case 2973:
                    plan = "Total Individual Anual";
                    precioPlan = "$6,930";
                    break;
                case 2974:
                    plan = "Premium Individual Anual";
                    precioPlan = "$9,130";
                    break;
                case 2975:
                    plan = "Básico Familiar Anual";
                    precioPlan = "$3,520";
                    break;
                case 2976:
                    plan = "Intermedio Familiar Anual";
                    precioPlan = "$6,270";
                    break;
                case 2977:
                    plan = "Superior Familiar Anual";
                    precioPlan = "$11,000";
                    break;
                case 2978:
                    plan = "Total Familiar Anual";
                    precioPlan = "$14,080";
                    break;
                case 2979:
                    plan = "Premium Familiar Anual";
                    precioPlan = "$19,360";
                    break;

                default:
	                plan = "Básico Individual";
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
			<div class="bannerGastosMedicos"><img src="images/banner_apoyogm.jpg"/></div>
            <div class="cont_info">
                <h1>AHORA TU CAMINO ES MÁS SEGURO</h1>
                <h2 class="navy_blue">¡Felicidades por esta gran decisión! Contrataste el plan <strong><%=plan%> de Valor Factura 4-24 </strong> con el cual estarás pagando <strong><%=precioPlan%></strong> 
                    <%if (intPlan == 2960 || intPlan == 2961 || intPlan == 2962 || intPlan == 2963 || intPlan == 2964 || intPlan == 2965 || intPlan == 2966 || intPlan == 2967 || intPlan == 2968 || intPlan == 2969) {%> mensuales<%}%>
                    <%if (intPlan == 2970 || intPlan == 2971 || intPlan == 2972 || intPlan == 2973 || intPlan == 2974 || intPlan == 2975 || intPlan == 2976 || intPlan == 2977 || intPlan == 2978 || intPlan == 2979) {%> anuales<%}%>
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
                <div class="btFotter2"><a href="download/condiciones_gastos.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <!--div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_vital_escencial.pdf" target="_blank">Clausulado General de Asistencias</a></div-->
                <div class="btFotter2"><a href="download/folleto_gastos.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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