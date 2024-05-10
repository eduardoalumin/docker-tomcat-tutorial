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
            String sumaRoboGadgets;
            String sumaMatrimonio;
            String sumaNacimientoHijo;
            String sumaTitulacion;
            String sumaCancelacionEvento;
            String sumaFallecimientoFamiliar;
            String sumaDesempleoInvoluntario;
		   	String sumaIncapacidadTotalTemporal;

            switch (intPlan) {
                case 2586:
                    plan = "Plan Básico";
                    precioPlanMensual = "$163";
                    sumaRoboGadgets = "$10,000*";
                    sumaMatrimonio = "$7,500";
                    sumaNacimientoHijo = "$7,500";
                    sumaTitulacion = "$7,500";
                    sumaCancelacionEvento = "$3,000";
                    sumaFallecimientoFamiliar = "$7,500";
                    sumaDesempleoInvoluntario = "$10,000";
		   			sumaIncapacidadTotalTemporal ="$10,000";
                    break;

                case 2587:
                    plan = "Plan Preferente";
                    precioPlanMensual = "$175";
                    sumaRoboGadgets = "$10,000*";
                    sumaMatrimonio = "$8,000";
                    sumaNacimientoHijo = "$8,000";
                    sumaTitulacion = "$8,000";
                    sumaCancelacionEvento = "$4,000";
                    sumaFallecimientoFamiliar = "$8,000";
                    sumaDesempleoInvoluntario = "$15,000";
		   			sumaIncapacidadTotalTemporal ="$15,000";
                    break;

                case 2588:
                    plan = "Plan Premier";
                    precioPlanMensual = "$201";
                    sumaRoboGadgets = "$10,000*";
                    sumaMatrimonio = "$8,500";
                    sumaNacimientoHijo = "$8,500";
                    sumaTitulacion = "$8,500";
                    sumaCancelacionEvento = "$5,000";
                    sumaFallecimientoFamiliar = "$8,500";
                    sumaDesempleoInvoluntario = "$20,000";
		   			sumaIncapacidadTotalTemporal ="$20,000";
                    break;

                default:
                    plan = "Plan no válido";
                    precioPlanMensual = "-";
                    sumaRoboGadgets = "$-";
                    sumaMatrimonio = "$-";
                    sumaNacimientoHijo = "-";
                    sumaTitulacion = "$-";
                    sumaCancelacionEvento = "$-";
                    sumaFallecimientoFamiliar = "$-";
                    sumaDesempleoInvoluntario = "$-";
		   			sumaIncapacidadTotalTemporal ="$-";
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
                <h2>Contrataste el <strong><%=plan%></strong> y estarás pagando mensualmente <strong><%=precioPlanMensual%></strong> (IVA incluido) por él.</h2>
                <p><strong>Ingresos + Seguros </strong> brinda seguridad para hacer frente a algunos de los momentos más importantes de tu vida o ante eventos inesperados como:  </p>
                <div class="separador"></div>
                <div class="coberturaT">Cobertura</div>
                <div class="sumaT">Suma Asegurada</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Desempleo Involuntario</p>
                            <span><%=sumaDesempleoInvoluntario%> MXN</span></button>
                        <div data-content>
                            <article>
								Si eres empleado con contrato laboral por tiempo indeterminado, en caso de quedar desempleado involuntariamente, se te pagará la suma asegurada contratada, siempre que permanezcas desempleado por más de 30 (treinta) días. Se excluye entre otros casos, la renuncia voluntaria, el  retiro por jubilación. Esta cobertura será válida después de 90 (noventa) días contados a partir de la fecha de contratación del seguro y sólo podrá ser utilizada una sola ocasión cada 12 (doce) meses durante la vigencia del seguro. 
							</article>	
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Desempleo Involuntario por Incapacidad Total Temporal</p>
                            <span><%=sumaIncapacidadTotalTemporal%> MXN</span></button>
                        <div data-content>
                            <article>
								Si eres un profesionista independiente, recibirás la suma asegurada contratada en caso de sufrir alguna enfermedad o accidente que no te permita continuar con tus labores, previa comprobación de la incapacidad y siempre que permanezcas en ese estado por más de 30 (treinta) días. Se excluye entre otros casos, lesiones corporales auto-infligidas, lesiones derivadas de la participación del asegurado en pruebas o contiendas de velocidad o derivadas de una riña, cuando el asegurado sea el provocador, será válida después de 90 (noventa) días contados a partir de la fecha de contratación del seguro y sólo podrá ser utilizada una sola ocasión cada 12 (doce) meses durante la vigencia del seguro.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Nacimiento de un Hijo</p>
                            <span><%=sumaNacimientoHijo%> MXN</span></button>
                        <div data-content>
                            <article>
								En caso del nacimiento de un hijo, se te hará entrega de  la suma asegurada contratada. Esta cobertura será válida a partir del décimo (10) mes después de haber contratado el seguro.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Fallecimiento de un Familiar Directo</p>
                            <span><%=sumaFallecimientoFamiliar%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								Si por alguna causa, tu cónyuge, padres o hijos menores de 26 años fallecen, se te pagará la suma asegurada contratada. Sólo se cubre un evento por año. La cobertura es válida desde el primer día de contratación del seguro. En caso de fallecimiento de un hijo menor de 12 años, no obstante el monto establecido como suma asegurada, la indemnización no podrá ser mayor a dos veces el salario mínimo general anual vigente para la ciudad de México y será pagado como concepto de gastos funerarios.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Cancelación de una actividad recreativa con boleto pagado</p>
                            <span><%=sumaCancelacionEvento%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								En caso de no poder asistir al evento para el cual adquiriste un boleto a causa de fallecimiento de algún familiar directo (cónyuge, padres o hijos menores de 26 años), o que sufras un accidente de tráfico o te hospitalicen, el costo del boleto del concierto, teatro, danza, circo, eventos deportivos, exposiciones de arte o comerciales y reuniones de aniversario (ex-alumnos, ex-empleados), se te reembolsará, el monto máximo a ser reembolsado será la suma asegurada contratada. Esta cobertura es válida desde el primer día de contratación del seguro. La cobertura aplicará por boleto y se cubre únicamente el primer evento durante la vigencia del seguro.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Titulación</p>
                            <span><%=sumaTitulacion%> MXN</span></button>
                        <div data-content>
                            <article>
								Se cubre el pago de la suma asegurada contratada si tú o tu hijo(a) menor de 26 años se titulan a nivel licenciatura o superior, en una Institución educativa legalmente constituida y reconocida dentro del territorio nacional, a excepción de carreras técnicas. Esta cobertura será válida a partir del sexto (6) mes después de haber contratado el seguro.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Matrimonio</p>
                            <span><%=sumaMatrimonio%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								Te apoyamos en el momento más importante de tu vida, brindándote la suma asegurada contratada en caso de que contraigas matrimonio. Esta cobertura será válida a partir del sexto (6) mes después de haber contratado el seguro. Se considera matrimonio al contrato celebrado ante los funcionarios que establece la legislación correspondiente de los Estados Unidos Mexicanos y con las formalidades que ella contenga.
							</article>
                        </div>
                    </section>
					<section data-accordion>
                        <button data-control>
							<p>Robo de equipo electrónico fijo y/o portátil (gadgets): </p><!--p style="font-size: 12px !important">(SA dividida en 2 eventos de $5,000 c/u al año)</p-->
                            <span><%=sumaRoboGadgets%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								En caso de robo del equipo electrónico fijo y/o portátil, se te pagará la suma asegurada contratada, ya sea de tu propiedad o de alguien más, siempre y cuando el equipo se encuentre bajo tu custodia y responsabilidad. El límite máximo de responsabilidad de la aseguradora es la suma asegurada, sin importar el número o valor de objetos robados, limitado a dos eventos  por año. El robo deberá ser comprobado mediante un acta levantada ante el ministerio público. Se excluye, entre otros casos el robo que sufran personas distintas al asegurado, el robo de equipos que sean rentados o tengan un esquema de arrendamiento. Los equipos que se cubren son: SmartPhones, Camaras de video / fotográficas, Ipods, Consolas de video juegos, GPS, Tabletas / Ipad, Discman, Discos duros portátiles, Go Pro, Drones, Laptops y Notebooks.
							</article>
                        </div>
                    </section>	

                    <!--h3>Principales Exclusiones:</h3>
                    <ol type="1" style="margin-left: 30px !important; width: 80% !important; margin-top:10px; line-height:20px;">
						<li style="text-align:justify;">Uso fraudulento de los Códigos, Claves y/o NIP’s por parte del TITULAR o de las personas que civilmente dependan de él.</li>
						<li style="text-align:justify;">Pago de la anualidad de las Tarjetas Amparadas o la cuenta de Cheques.</li>
						<li style="text-align:justify;">Fraudes cometidos después de la notificación de Bloqueo a la Institución.</li>
						<li style="text-align:justify;">Cuando los bienes cubiertos sean portados por un tercero al momento de la ocurrencia del evento.</li>
						<li style="text-align:justify;">El Daño Patrimonial sufrido a bienes distintos a los comprendidos en la definición de Bienes Cubiertos.</li>
						<li style="text-align:justify;">Robo fuera del rango de horas estipulado en la carátula de póliza.</li>
						<li style="text-align:justify;">Robo de efectivo que se derive de cualquier acontecimiento o Evento distinto a los expresamente señalados en la cobertura de Robo de efectivo con cargo a las tarjetas amparadas.</li>
                    </ol-->

                    <h3>Además</h3>
                    <p>Tu seguro incluye un completo <strong>servicio de asistencias</strong>, tales como:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Legal Laboral Telefónica</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de requerirlo se brindará asesoría por parte de un licenciado en derecho, para temas relacionados con el despido involuntario o separación voluntaria del trabajador.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Médica Telefónica</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de requerirlo se brindará asesoría telefónica por personal médico para que te oriente ante cualquier información o consulta relacionada con tu salud.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Psicológica Laboral Remota</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de despido involuntario, se te brindará orientación psicológica, mediante una llamada o vía correo electrónico, durante el complicado proceso de aceptación de la situación y en la búsqueda de nuevas oportunidades laborales.
							</article>
                        </div>
                    </section>

                </section>
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                Los servicios de asistencias son proporcionados por TM-ASSISTANCE en caso de requerir de alguno de éstos, comunícate al teléfono <a href="tel:50149482" target="_blank">50 14 94 82</a> en el área metropolitana o al <a href="tel:015550149482" target="_blank">01 55 50 14 94 82</a> desde el interior de la República.
            </div>
            <div class="redBanner2">
                <p>Te recordamos que cuentas con 48 horas para cancelar o revisar todo lo relacionado con tu seguro. Si así lo decides, comunícate al <a href="tel:018008012402" target="_blank">01 800 801 2402</a> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La información antes descrita es de carácter informativo, para conocer las características particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aquí las condiciones generales del seguro y el clausulado general de las asistencias.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/Cuadernillo_Momentos_sin_asistencias.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_Momentos.pdf" target="_blank">Clausulado General de Asistencias</a></div>
                <div class="btFotter2"><a href="download/derechos_del_asegurado_cardif_vse.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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