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
                case 2500:
                    plan = "Plan B�sico";
                    precioPlanMensual = "$250";
                    sumaFallecimiento = "$200,000";
                    sumaMuerteAccidental = "$200,000";
                    sumaEnfermedadTerminal = "$100,000";
                    sumaGastosFunerarios = "$8,000";
                    break;

                case 2501:
                    plan = "Plan Intermedio";
                    precioPlanMensual = "$390";
                    sumaFallecimiento = "$350,000";
                    sumaMuerteAccidental = "$350,000";
                    sumaEnfermedadTerminal = "$175,000";
                    sumaGastosFunerarios = "$11,500";
                    break;

                case 2502:
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
			    <div class="logo_scotiabank"><img src="images/logo_scotiabank.jpg"/></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerVitalEscencial"><img src="images/vital_escencial_m.jpg"/></div>
            <div class="cont_info">
                <h1>�Qu� plan he contratado?</h1>
                <h2>Contrataste el <strong><%=plan%></strong> y estar�s pagando mensualmente <strong><%=precioPlanMensual%></strong> (IVA incluido) por �l.</h2>
                <p><strong>Vital Esencial </strong> brinda seguridad para hacer frente a eventos inesperados como:  </p>
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
								Se le pagar� al (los) Beneficiario (s) designado (s), la suma asegurada contratada en caso de ocurrir el fallecimiento del Asegurado. Esta cobertura tiene un periodo de carencia de tres (3) meses a partir de su contrataci�n.
                                Exclusiones principales:  El suicidio, sin importar la causa que le dio origen dentro de los primeros 12 meses de vigencia de la P�liza, as� como el fallecimiento por enfermedades prexistentes cuando ocurra durante el periodo de carencia.
							</article>	
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Muerte Accidental</p>
                            <span><%=sumaMuerteAccidental%> MXN</span></button>
                        <div data-content>
                            <article>
								Esta indemnizaci�n ser� pagada al (los) beneficiario (s) que se hayan designado, en caso de ocurrir el fallecimiento del Asegurado a consecuencia directa e inmediata de un accidente.
                                Se entender� como fallecimiento inmediato, aquel que ocurra a m�s tardar dentro de los noventa (90) d�as siguientes, despu�s de ocurrido el Accidente.
                                No se consideran accidentes los hechos que: 
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
								Si te fuese diagnosticado en fase terminal con respecto de alguna de las Enfermedades amparadas podr�s solicitar el 50% de la suma asegurada de correspondiente a la cobertura de fallecimiento.<br>
                                Esta cobertura tiene un periodo de carencia de tres (3) meses a partir de su contrataci�n<br>
                                Exclusiones principales: Enfermedades preexistentes y cualquier padecimiento que no sea uno de los especificados en la definici�n de enfermedad en fase terminal, as� como cuando el diagn�stico ocurra durante el periodo de carencia.<br><br>

                                Las enfermedades amparadas en esta p�liza son:
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
                            <p>Gastos funerarios familiar</p>
                            <span><%=sumaGastosFunerarios%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								Si por alguna causa, tu c�nyuge, padres o hijos menores de 26 a�os fallecen, se te pagar� la suma asegurada contratada. S�lo se cubre un evento por a�o. La cobertura es v�lida desde el primer d�a de contrataci�n del seguro. En caso de fallecimiento de un hijo menor de 12 a�os, no obstante el monto establecido como suma asegurada, la indemnizaci�n no podr� ser mayor a dos veces el salario m�nimo general anual vigente para la ciudad de M�xico y ser� pagado como concepto de gastos funerarios.
							</article>
                        </div>
                    </section>

                    <h3>Adem�s</h3>
                    <p>Tu seguro incluye un completo <strong>servicio de asistencias</strong>, tales como:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Telef�nica Tanatol�gica  </p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de requerirlo se te brindar� a trav�s una cabina telef�nica una asesor�a tanatol�gica con un profesional en caso de suscitarse la p�rdida de alg�n ser querido.<br>
                                El uso de la asistencia no tiene restricci�n de frecuencia, ni de tiempo. <br>
                                El horario de atenci�n para este servicio es de 7:00 a 22:00 horas de lunes a s�bado. Este servicio es para uso del Titular de la p�liza y es extensivo a familiares en primer grado.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Tanatol�gica Presencial</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Si as� lo deseas podr�s solicitar sesiones presenciales con un profesional en caso de p�rdida de alg�n ser querido<br>
                                Esta asistencia solo tu podr�s utilizarla en 1 evento de 6 sesiones al a�o.<br>
                                En caso de que ESCOTEL no tenga el servicio de un profesional en la Ciudad que lo requieras, ESCOTEL te podr� reembolsar hasta por $350.00 por sesi�n.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Segunda Opini�n M�dica con Especialista </p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de solicitarlo, Escotel Asistencia gestionar� y pagar� una consulta m�dica con especialistas en consultorio para contrastar el diagn�stico m�dico y obtener una segunda opini�n.<br>
                                Esta asistencia es presencial exclusiva para el Titular de la p�liza. 1 evento al a�o hasta por $1,500.00 en caso de haber un excedente en la consulta, deber�s cubrirlo de forma directa con el proveedor.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Tanatol�gica presencial extensivo a familiares</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                ESCOTEL Asistencia gestionar� a trav�s de su red de proveedores las citas presenciales con un profesional, con costo preferencial en caso de p�rdida de alg�n ser querido.<br>
                                Todos los gastos que se originen de este servicio ser�n a cargo del usuario.<br>
                                Los descuentos var�an entre un 10% y hasta un 20%<br>
                                Este servicio es de uso exclusivo de familiares en primer grado
                            </article>
                        </div>
                    </section>
                </section>
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                Estos servicios son proporcionados por ESCOTEL � Especialistas en Contacto Telef�nico S.A. de C.V., en caso de requerir alguno de estos comun�cate a: <a href="tel:8009991449" target="_blank">800 999 1449</a> lada sin costo, las 24 horas los 365 d�as del a�o.
            </div>
            <div class="redBanner2">
                <p>Te recordamos que est�s protegido desde este momento y cuentas con 48 (cuarenta y ocho) horas para hacer la cancelaci�n de este seguro sin cargo a tu tarjeta, comunic�ndote al <a href="tel:8008012402" target="_blank">800 801 2402</a> de lunes a viernes en un horario de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n antes descrita es de car�cter informativo, para conocer el alcance de las coberturas de seguro y de los servicios de asistencia, por favor consulta las condiciones generales del seguro completas y el clausulado general de las asistencias completo en el sitio <a href="http://www.misegurocardif.com.mx" target="_blank">www.misegurocardif.com.mx</a>, con tu folio de confirmaci�n.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/Condiciones_Generales_del_Seguro_vital_escencial.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
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