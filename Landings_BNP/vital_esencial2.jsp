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
            String precioPlanMensual;
            String sumaFallecimiento;
            String sumaMuerteAccidental;
            String sumaEnfermedadTerminal;
            String sumaGastosFunerarios;

            switch (intPlan) {
                case 2510:
                    plan = "Plan Básico";
                    precioPlanMensual = "$250";
                    sumaFallecimiento = "$200,000";
                    sumaMuerteAccidental = "$200,000";
                    sumaEnfermedadTerminal = "$100,000";
                    sumaGastosFunerarios = "$8,000";
                    break;

                case 2520:
                    plan = "Plan Intermedio";
                    precioPlanMensual = "$390";
                    sumaFallecimiento = "$350,000";
                    sumaMuerteAccidental = "$350,000";
                    sumaEnfermedadTerminal = "$175,000";
                    sumaGastosFunerarios = "$11,500";
                    break;

                case 2530:
                    plan = "Plan Superior";
                    precioPlanMensual = "$499";
                    sumaFallecimiento = "$500,000";
                    sumaMuerteAccidental = "$500,000";
                    sumaEnfermedadTerminal = "$250,000";
                    sumaGastosFunerarios = "$15,000";
                    break;

                default:
                    plan = "Plan no válido";
                    precioPlanMensual = "-";
                    sumaFallecimiento = "$-";
                    sumaMuerteAccidental = "$-";
                    sumaEnfermedadTerminal = "-";
                    sumaGastosFunerarios = "$-";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank"><!--img src="images/logo_scotiabank.jpg"/--></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerVitalEscencial"><img src="images/vital_escencial_m.jpg"/></div>
            <div class="cont_info">
                <h1>¿Qué plan he contratado?</h1>
                <h2>Contrataste el <strong><%=plan%></strong> y estarás pagando mensualmente <strong><%=precioPlanMensual%></strong> (IVA incluido) por él.</h2>
                <p><strong>Vital Esencial </strong> proporciona protección a la familia cubriendo eventos inesperados como: </p>
                <div class="separador"></div>
                <div class="coberturaT">Cobertura</div>
                <div class="sumaT">Suma Asegurada</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Fallecimiento</p>
                            <span><%=sumaFallecimiento%> MXN</span></button>
                        <div data-content>
                            <article>
								Se le pagará al (los) Beneficiario (s) designado (s), la suma asegurada contratada en caso de ocurrir el fallecimiento del Asegurado. <strong>Exclusiones principales:</strong> El suicidio, sin importar la causa que le dio origen dentro de los primeros 12 meses de vigencia de la Póliza.
							</article>	
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Muerte Accidental</p>
                            <span><%=sumaMuerteAccidental%> MXN</span></button>
                        <div data-content>
                            <article>
								Esta indemnización será pagada al (los) beneficiario (s) que se hayan designado, en caso de ocurrir el fallecimiento del Asegurado a consecuencia directa e inmediata de un accidente. Se entenderá como fallecimiento inmediato, aquel que ocurra a más tardar dentro de los noventa (90) días siguientes, después de ocurrido el Accidente. No se consideran accidentes los hechos que:
                                <ul style="margin-left: 18px;">
                                    <li>Sean consecuencia de ataques cardíacos o cualquier enfermedad preexistente.</li>
                                    <li>Actos ocurridos por culpa grave del Asegurado encontrándose éste bajo los efectos del alcohol, drogas, etc. por práctica profesional de deportes de alto riesgo entre otros.</li>
                                </ul>
                                </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Anticipo por Enfermedad en Fase Terminal</p>
                            <span><%=sumaEnfermedadTerminal%> MXN</span></button>
                        <div data-content>
                            <article>
								En caso de que el asegurado sea diagnosticado en fase terminal con respecto de alguna de las Enfermedades amparadas la Compañía le anticipará al propio Asegurado la Suma asegurada indicada en la carátula póliza; este anticipo corresponde a un porcentaje (50%) de la Suma Asegurada contratada para la Cobertura Básica de Fallecimiento. Esta cobertura tiene un periodo de carencia de tres (3) meses a partir de su contratación. Solo y exclusivamente en caso que se detecte que el Asegurado tenia ya la Enfermedad o el Padecimiento Preexistente.<br><br>

                                Enfermedad amparadas (Fase terminal):
                                <ul style="margin-left: 18px;">
                                <li>Cáncer en fase terminal</li>
                                <li>Síndrome de Inmunodeficiencia Adquirida en fase terminal</li>
                                <li>Enfermedades de las moto neuronas en fase terminal</li>
                                <li>Insuficiencia Renal en fase terminal</li>
                                <li>Insuficiencia Cardiaca en fase terminal</li>
                                <li>Insuficiencia Hepática en fase terminal</li>
                                </ul>
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Gastos Funerarios Familiar</p>
                            <span><%=sumaGastosFunerarios%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								Si por alguna causa, tu cónyuge, padres o hijos menores de 26 años fallecen, se te pagará la suma asegurada contratada. Sólo se cubre un evento por año. La cobertura es válida desde el primer día de contratación del seguro. En caso de fallecimiento de un hijo menor de 12 años, no obstante el monto establecido como suma asegurada, la indemnización no podrá ser mayor a dos veces el salario mínimo general anual vigente para la ciudad de México y será pagado como concepto de gastos funerarios. Esta cobertura tiene un periodo de carencia de tres (3) meses a partir de su contratación, en caso que el Asegurado o alguno de los Dependientes Asegurados fallezcan derivado de una Enfermedad o Padecimiento Preexistente. Exclusiones principales: El suicidio, sin importar la causa que le dio origen dentro de los primeros 12 meses de vigencia de la Póliza.

							</article>
                        </div>
                    </section>

                    <h3>Además</h3>
                    <p>Tu seguro incluye un completo <strong>servicio de asistencias</strong>, tales como:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia médica</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								<table width="100%">
                                    <thead>
                                        <tr>
                                            <th>Servicios</th>
                                            <th>Eventos</th>
                                            <th>Cobertura</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="left_align">Orientación telefónica emocional por Covid-19</td>
                                            <td>Sin límite</td>
                                            <td>Sin límite</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Ambulancia terrestre por emergencia</td>
                                            <td rowspan="2" class="rowspan">1 al año</td>
                                            <td>Hasta por $2,500</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Check Up (QS de 3 elementos y EGO)</td>
                                            <!--td>1 al año</td-->
                                            <td>Hasta $650</td>
                                        </tr>


                                    </tbody>
                                </table>    
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Wellness y familias jóvenes</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								<table width="100%">
                                    <thead>
                                        <tr>
                                            <th>Servicios</th>
                                            <th>Eventos</th>
                                            <th>Cobertura</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="left_align">Clases de fitness en línea</td>
                                            <td rowspan="4" class="rowspan">4 al año en combinación</td>
                                            <td rowspan="4" class="rowspan">hasta $750</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Yoga en línea</td>
                                            <!--td>4 al año en combinación</td>
                                            <td>hasta $750</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Tutores en línea para niños</td>
                                            <!--td>4 al año en combinación</td>
                                            <td>hasta $750</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Clases de pintura en línea</td>
                                            <!--td>4 al año en combinación</td>
                                            <td>hasta $750</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Referencia de restaurantes, obras de teatro, películas, espectáculos, entretenimiento, etc.</td>
                                            <td>Sin límite</td>
                                            <td>Sin límite</td>
                                        </tr>
                                    </tbody>
                                </table>
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Hogar </p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								<table width="100%">
                                    <thead>
                                        <tr>
                                            <th>Servicios</th>
                                            <th>Eventos</th>
                                            <th>Cobertura</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="left_align">Plomería</td>
                                            <td rowspan="5" class="rowspan">3 al año en combinación</td>
                                            <td rowspan="5" class="rowspan">Hasta por $650</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Vidriería</td>
                                            <!--td>3 al año en combinación</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Cerrajería</td>
                                            <!--td>3 al año en combinación</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Electricidad</td>
                                            <!--td>3 al año en combinación</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Todero (coloca lámparas, cuadros, accesorios de baño, estantería, espejos, soportes para pantallas, percheros, pinta y resana paredes, etc)</td>
                                            <!--td>3 al año en combinación</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                    </tbody>
                                </table>
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia mascotas</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <table width="100%">
                                    <thead>
                                        <tr>
                                            <th>Servicios</th>
                                            <th>Eventos</th>
                                            <th>Cobertura</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="left_align">Videollamada con veterinario por emergencia</td>
                                            <td>1 al año</td>
                                            <td>Hasta $500</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </article>
                        </div>
                    </section>
                </section>
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                Los servicios de asistencias son proporcionados por UMANO en caso de requerir de alguno de éstos, comunícate al teléfono <a href="tel:5575883622">5575883622</a> en el área metropolitana y del interior de la República.
            </div>
            <div class="redBanner2">
                <p>La información antes descrita es de carácter informativo, para conocer las características particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aquí las condiciones generales del seguro y el clausulado general de las asistencias.</p>
            </div>
            <!--div class="greyBG" style="margin-top: 20px; text-align: justify;">La información antes descrita es de carácter informativo, para conocer las características particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aquí las condiciones generales del seguro y el clausulado general de las asistencias.</div-->
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/Condiciones_generales_VitalEsencial.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_vital_escencial.pdf" target="_blank">Clausulado General de Asistencias</a></div>
                <div class="btFotter2"><a href="download/Folleto_Vida_VF.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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