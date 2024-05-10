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
                    plan = "Plan B�sico";
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
                    plan = "Plan no v�lido";
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
                <h1>�Qu� plan he contratado?</h1>
                <h2>Contrataste el <strong><%=plan%></strong> y estar�s pagando mensualmente <strong><%=precioPlanMensual%></strong> (IVA incluido) por �l.</h2>
                <p><strong>Vital Esencial </strong> proporciona protecci�n a la familia cubriendo eventos inesperados como: </p>
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
								Se le pagar� al (los) Beneficiario (s) designado (s), la suma asegurada contratada en caso de ocurrir el fallecimiento del Asegurado. <strong>Exclusiones principales:</strong> El suicidio, sin importar la causa que le dio origen dentro de los primeros 12 meses de vigencia de la P�liza.
							</article>	
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Muerte Accidental</p>
                            <span><%=sumaMuerteAccidental%> MXN</span></button>
                        <div data-content>
                            <article>
								Esta indemnizaci�n ser� pagada al (los) beneficiario (s) que se hayan designado, en caso de ocurrir el fallecimiento del Asegurado a consecuencia directa e inmediata de un accidente. Se entender� como fallecimiento inmediato, aquel que ocurra a m�s tardar dentro de los noventa (90) d�as siguientes, despu�s de ocurrido el Accidente. No se consideran accidentes los hechos que:
                                <ul style="margin-left: 18px;">
                                    <li>Sean consecuencia de ataques card�acos o cualquier enfermedad preexistente.</li>
                                    <li>Actos ocurridos por culpa grave del Asegurado encontr�ndose �ste bajo los efectos del alcohol, drogas, etc. por pr�ctica profesional de deportes de alto riesgo entre otros.</li>
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
								En caso de que el asegurado sea diagnosticado en fase terminal con respecto de alguna de las Enfermedades amparadas la Compa��a le anticipar� al propio Asegurado la Suma asegurada indicada en la car�tula p�liza; este anticipo corresponde a un porcentaje (50%) de la Suma Asegurada contratada para la Cobertura B�sica de Fallecimiento. Esta cobertura tiene un periodo de carencia de tres (3) meses a partir de su contrataci�n. Solo y exclusivamente en caso que se detecte que el Asegurado tenia ya la Enfermedad o el Padecimiento Preexistente.<br><br>

                                Enfermedad amparadas (Fase terminal):
                                <ul style="margin-left: 18px;">
                                <li>C�ncer en fase terminal</li>
                                <li>S�ndrome de Inmunodeficiencia Adquirida en fase terminal</li>
                                <li>Enfermedades de las moto neuronas en fase terminal</li>
                                <li>Insuficiencia Renal en fase terminal</li>
                                <li>Insuficiencia Cardiaca en fase terminal</li>
                                <li>Insuficiencia Hep�tica en fase terminal</li>
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
								Si por alguna causa, tu c�nyuge, padres o hijos menores de 26 a�os fallecen, se te pagar� la suma asegurada contratada. S�lo se cubre un evento por a�o. La cobertura es v�lida desde el primer d�a de contrataci�n del seguro. En caso de fallecimiento de un hijo menor de 12 a�os, no obstante el monto establecido como suma asegurada, la indemnizaci�n no podr� ser mayor a dos veces el salario m�nimo general anual vigente para la ciudad de M�xico y ser� pagado como concepto de gastos funerarios. Esta cobertura tiene un periodo de carencia de tres (3) meses a partir de su contrataci�n, en caso que el Asegurado o alguno de los Dependientes Asegurados fallezcan derivado de una Enfermedad o Padecimiento Preexistente. Exclusiones principales: El suicidio, sin importar la causa que le dio origen dentro de los primeros 12 meses de vigencia de la P�liza.

							</article>
                        </div>
                    </section>

                    <h3>Adem�s</h3>
                    <p>Tu seguro incluye un completo <strong>servicio de asistencias</strong>, tales como:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia m�dica</p>
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
                                            <td class="left_align">Orientaci�n telef�nica emocional por Covid-19</td>
                                            <td>Sin l�mite</td>
                                            <td>Sin l�mite</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Ambulancia terrestre por emergencia</td>
                                            <td rowspan="2" class="rowspan">1 al a�o</td>
                                            <td>Hasta por $2,500</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Check Up (QS de 3 elementos y EGO)</td>
                                            <!--td>1 al a�o</td-->
                                            <td>Hasta $650</td>
                                        </tr>


                                    </tbody>
                                </table>    
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Wellness y familias j�venes</p>
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
                                            <td class="left_align">Clases de fitness en l�nea</td>
                                            <td rowspan="4" class="rowspan">4 al a�o en combinaci�n</td>
                                            <td rowspan="4" class="rowspan">hasta $750</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Yoga en l�nea</td>
                                            <!--td>4 al a�o en combinaci�n</td>
                                            <td>hasta $750</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Tutores en l�nea para ni�os</td>
                                            <!--td>4 al a�o en combinaci�n</td>
                                            <td>hasta $750</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Clases de pintura en l�nea</td>
                                            <!--td>4 al a�o en combinaci�n</td>
                                            <td>hasta $750</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Referencia de restaurantes, obras de teatro, pel�culas, espect�culos, entretenimiento, etc.</td>
                                            <td>Sin l�mite</td>
                                            <td>Sin l�mite</td>
                                        </tr>
                                    </tbody>
                                </table>
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Hogar </p>
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
                                            <td class="left_align">Plomer�a</td>
                                            <td rowspan="5" class="rowspan">3 al a�o en combinaci�n</td>
                                            <td rowspan="5" class="rowspan">Hasta por $650</td>
                                        </tr>
                                        <tr>
                                            <td class="left_align">Vidrier�a</td>
                                            <!--td>3 al a�o en combinaci�n</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Cerrajer�a</td>
                                            <!--td>3 al a�o en combinaci�n</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Electricidad</td>
                                            <!--td>3 al a�o en combinaci�n</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                        <tr>
                                            <td class="left_align">Todero (coloca l�mparas, cuadros, accesorios de ba�o, estanter�a, espejos, soportes para pantallas, percheros, pinta y resana paredes, etc)</td>
                                            <!--td>3 al a�o en combinaci�n</td>
                                            <td>Hasta por $650</td-->
                                        </tr>
                                    </tbody>
                                </table>
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia mascotas</p>
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
                                            <td>1 al a�o</td>
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
                Los servicios de asistencias son proporcionados por UMANO en caso de requerir de alguno de �stos, comun�cate al tel�fono <a href="tel:5575883622">5575883622</a> en el �rea metropolitana y del interior de la Rep�blica.
            </div>
            <div class="redBanner2">
                <p>La informaci�n antes descrita es de car�cter informativo, para conocer las caracter�sticas particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aqu� las condiciones generales del seguro y el clausulado general de las asistencias.</p>
            </div>
            <!--div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n antes descrita es de car�cter informativo, para conocer las caracter�sticas particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aqu� las condiciones generales del seguro y el clausulado general de las asistencias.</div-->
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