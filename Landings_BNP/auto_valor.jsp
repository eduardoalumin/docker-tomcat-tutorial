<!DOCTYPE html>
<html>
    <head>
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
            String sumaFallecimiento;

            switch (intPlan) {
                case 2576:
                    plan = "Básico Anual";
                    precioPlan = "$3,225";
                    sumaFallecimiento = "$200,000";
                    break;

                case 2577:
                    plan = "Preferente Anual";
                    precioPlan = "$4,848";
                    sumaFallecimiento = "$350,000";
                    break;

                case 2578:
                    plan = "Premier Anual";
                    precioPlan = "$7,256";
                    sumaFallecimiento = "$500,000";
                    break;

                case 2579:
                    plan = "Básico";
                    precioPlan = "$296";
                    sumaFallecimiento = "$200,000";
                    break;

                case 2580:
                    plan = "Preferente";
                    precioPlan = "$ 444";
                    sumaFallecimiento = "$350,000";
                    break;

                case 2584:
                    plan = "Premier";
                    precioPlan = "$665";
                    sumaFallecimiento = "$500,000";
                    break; 

                case 2585:
                    plan = "Básico Único";
                    precioPlan = "$9,674";
                    sumaFallecimiento = "$500,000";
                    break; 
                    
                case 2589:
                    plan = "Preferente Único";
                    precioPlan = "$14,545";
                    sumaFallecimiento = "$500,000";
                    break; 
                    
                case 2590:
                    plan = "Premier Único";
                    precioPlan = "$21,768";
                    sumaFallecimiento = "$500,000";
                    break;                

                default:
                    plan = "Plan no válido";
                    precioPlan = "-";
                    sumaFallecimiento = "$-";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank"><!--img src="images/logo_scotiabank.jpg"/--></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerGapScotiabank"><img src="images/gap_scotiabank_m.jpg"/></div>
            <div class="cont_info">
                <h1>Aquí inicia una vida más segura para ti</h1>
                <h2 class="navy_blue">¡Felicidades por esta gran decisión! Contrataste el plan <strong><%=plan%> de Seguro Valor Factura</strong> con el cual estarás pagando <strong><%=precioPlan%></strong> 
                    <%if (intPlan == 2579 || intPlan == 2580 || intPlan == 2584 ) {%> mensual<%}%>
                    <!--<%if (intPlan == 2576 || intPlan == 2577 || intPlan == 2578 ) {%> anual<%}%>-->
                    (IVA incluido).

                </h2>
                <p><strong>Seguro Valor Factura</strong> es un seguro complementario que <strong>cubre la diferencia entre el valor comercial de tu automóvil y su valor factura en caso de robo o pérdida total</strong>, así como en el <strong>robo de autopartes</strong>. Además, incluye un ecosistema de beneficios adicionales que podrás utilizar en cualquier momento.</p>
                <div class="separador"></div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Coberturas Primer año</p>
                            <!--span><%=sumaFallecimiento%> MXN</span--></button>
                        <div data-content>
                            <article>
                                <p><strong>Pago de deducible a Valor Factura</strong><br>
                                En caso de ocurrir la Pérdida Total de tu Vehículo por robo o daños materiales y tengas que cubrir el deducible de tu seguro Primario, la Compañía te reembolsará el monto del Deducible descontado por la aseguradora primaria.</p>

                                <p>Esta cobertura será válida desde el momento de la contratación del seguro y sólo podrá ser utilizada en una sola ocasión.</p>

                                <p><strong>Reembolso por robo de autopartes</strong><br>
                                Se te reembolsará el pago realizado para la reposición de las Autoparte(s)* robada(s), incluyendo, en su caso, el costo de la mano de obra para su colocación, hasta el monto de la Suma Asegurada.</p>

                                <p>Para ello, deberás realizar la denuncia correspondiente ante el Ministerio Público o autoridad competente, dentro de los primeros cinco días naturales posteriores al Robo, salvo caso fortuito o fuerza mayor.</p>

                                <p><i>*Autopartes cubiertas</i><br>
                                Llantas y rines (incluye refacción), Espejos exteriores, Tapones de rin, Tapa y tapón de gasolina, Birlos, Antena exterior, Capuchones de birlos, Alerones con o sin luz de freno, Tapa de cubos de rin, Reflejantes, Fascias delanteras y traseras, Kit de herramientas y gato, Parrilla, Dado de birlo de seguridad, Tolva delantera y trasera, Estéreo.</p>

                                <p>La suma asegurada se puede manejar como total para los dos años sin reinstalación o el 50% de la suma para cada año.</p>
                                <p>Sin límite de eventos. Deducible: 10% para llantas, rines y faros (incluyendo refacciones) más depreciación con base a la tabla siguiente:</p>

                                <table width="100%">
                                    <thead>
                                        <tr>
                                            <th width="50%">Kilometraje del vehículo en el momento del siniestro.</th>
                                            <th>Depreciación (porcentaje del valor de las llantas  a descontar  por la Compañía)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>0 a 25,000</td>
                                            <td>0%</td>
                                        </tr>
                                        <tr>
                                            <td>25,001 a 30,000</td>
                                            <td>4%</td>
                                        </tr>
                                        <tr>
                                            <td>30,001 a 35,000</td>
                                            <td>9%</td>
                                        </tr>
                                        <tr>
                                            <td>35,001 a 40,000</td>
                                            <td>14%</td>
                                        </tr>
                                        <tr>
                                            <td>40,001 a 45,000</td>
                                            <td>19%</td>
                                        </tr>
                                        <tr>
                                            <td>45,001 a 50,000</td>
                                            <td>24%</td>
                                        </tr>
                                        <tr>
                                            <td>50,001 a 55,000</td>
                                            <td>29%</td>
                                        </tr>
                                        <tr>
                                            <td>55,001 a 60,000</td>
                                            <td>34%</td>
                                        </tr>
                                        <tr>
                                            <td>60,001 a 65,000</td>
                                            <td>39%</td>
                                        </tr>
                                        <tr>
                                            <td>65,001 a 70,000</td>
                                            <td>44%</td>
                                        </tr>
                                        <tr>
                                            <td>70,001 a 75,000</td>
                                            <td>49%</td>
                                        </tr>
                                        <tr>
                                            <td>75,001 a 80,000</td>
                                            <td>54%</td>
                                        </tr>
                                        <tr>
                                            <td>80,001 a 85,000</td>
                                            <td>59%</td>
                                        </tr>
                                    </tbody>    
                                </table>
                            </article>  
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Coberturas segundo año </p>
                            <%--span><%=sumaMuerteAccidental%> MXN</span--%></button>
                        <div data-content>
                            <article>
                                <p><strong>Reembolso por robo de autopartes</strong><br>
                               Se te reembolsará el pago realizado para la reposición de las Autoparte(s)* robada(s), incluyendo, en su caso, el costo de la mano de obra para su colocación, hasta el monto de la Suma Asegurada.</p>

                                <p>Para ello, deberás realizar la denuncia correspondiente ante el Ministerio Público o autoridad competente, dentro de los primeros cinco días naturales posteriores al Robo, salvo caso fortuito o fuerza mayor.
                                </p>

                                <p><i>*Autopartes cubiertas</i><br>
                                Llantas y rines (incluye refacción), Espejos exteriores, Tapones de rin, Tapa y tapón de gasolina, Birlos, Antena exterior, Capuchones de birlos, Alerones con o sin luz de freno, Tapa de cubos de rin, Reflejantes, Fascias delanteras y traseras, Kit de herramientas y gato, Parrilla, Dado de birlo de seguridad, Tolva delantera y trasera, Estéreo.</p>

                                <p>La suma asegurada se puede manejar como total para los dos años sin reinstalación o el 50% de la suma para cada año. </p>
                                <p>Limitado a dos eventos. Deducible: 10% para llantas, rines y faros (incluyendo refacciones) más depreciación con base a la tabla siguiente:</p>

                                <table width="100%">
                                    <thead>
                                        <tr>
                                            <th width="50%">Kilometraje del vehículo en el momento del siniestro.</th>
                                            <th>Depreciación (porcentaje del valor de las llantas  a descontar  por la Compañía)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>0 a 25,000</td>
                                            <td>0%</td>
                                        </tr>
                                        <tr>
                                            <td>25,001 a 30,000</td>
                                            <td>4%</td>
                                        </tr>
                                        <tr>
                                            <td>30,001 a 35,000</td>
                                            <td>9%</td>
                                        </tr>
                                        <tr>
                                            <td>35,001 a 40,000</td>
                                            <td>14%</td>
                                        </tr>
                                        <tr>
                                            <td>40,001 a 45,000</td>
                                            <td>19%</td>
                                        </tr>
                                        <tr>
                                            <td>45,001 a 50,000</td>
                                            <td>24%</td>
                                        </tr>
                                        <tr>
                                            <td>50,001 a 55,000</td>
                                            <td>29%</td>
                                        </tr>
                                        <tr>
                                            <td>55,001 a 60,000</td>
                                            <td>34%</td>
                                        </tr>
                                        <tr>
                                            <td>60,001 a 65,000</td>
                                            <td>39%</td>
                                        </tr>
                                        <tr>
                                            <td>65,001 a 70,000</td>
                                            <td>44%</td>
                                        </tr>
                                        <tr>
                                            <td>70,001 a 75,000</td>
                                            <td>49%</td>
                                        </tr>
                                        <tr>
                                            <td>75,001 a 80,000</td>
                                            <td>54%</td>
                                        </tr>
                                        <tr>
                                            <td>80,001 a 85,000</td>
                                            <td>59%</td>
                                        </tr>
                                    </tbody>    
                                </table>

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
                        </ul>
                        <p>Además, al cumplir los primeros tres meses de tu póliza, <strong>¡cada trimestre podrás elegir entre uno de estos servicios!</strong></p>
                        <ul class="element-list">
                            <li>1 código en UBER, Didi o Beat ($50 de crédito).</li>
                            <li>1 código válido por un mes Spotify.</li>
                            <li>Folio de estación por $150 (Hidrosina y otras estaciones con cobertura nacional).</li>
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
                <div class="btFotter2"><a href="download/CG_Valor_Factura_Sucursal.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <!--div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_vital_escencial.pdf" target="_blank">Clausulado General de Asistencias</a></div>
                <div class="btFotter2"><a href="download/Folleto_Vida_VF.pdf" target="_blank">Derechos del Asegurado Cardif</a></div-->
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