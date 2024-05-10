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
            String sumaIndemnizacionPorHospitalizacion;
            String sumaAyudaDeHospitalizacion;
            String sumaRoturaDeHuesos;
            String sumaIncapacidadTotalyPermanente;
            String sumaAdaptacionesAlHogar;
            String sumaGastosFunerarios;
            String sumaMuerteAccidental;

            switch (intPlan) {
                case 2568:
                    plan = "Plan Básico";
                    precioPlanMensual = "$149";
                    sumaIndemnizacionPorHospitalizacion = "$1000*";
                    sumaAyudaDeHospitalizacion = "$2,500";
                    sumaRoturaDeHuesos = "$10,000";
                    sumaIncapacidadTotalyPermanente = "$25,000";
                    sumaAdaptacionesAlHogar = "$25,000";
                    sumaGastosFunerarios = "$25,000";
                    sumaMuerteAccidental = "$150,000";
                    break;

                case 2569:
                    plan = "Plan Preferente";
                    precioPlanMensual = "$168";
                    sumaIndemnizacionPorHospitalizacion = "$1,500*";
                    sumaAyudaDeHospitalizacion = "$5,000";
                    sumaRoturaDeHuesos = "$12,500";
                    sumaIncapacidadTotalyPermanente = "$35,000";
                    sumaAdaptacionesAlHogar = "$35,000";
                    sumaGastosFunerarios = "$30,000";
                    sumaMuerteAccidental = "$200,000";
                    break;

                case 2570:
                    plan = "Plan Premier";
                    precioPlanMensual = "$191";
                    sumaIndemnizacionPorHospitalizacion = "$2,000*";
                    sumaAyudaDeHospitalizacion = "$7,500";
                    sumaRoturaDeHuesos = "$15,000";
                    sumaIncapacidadTotalyPermanente = "$50,000";
                    sumaAdaptacionesAlHogar = "$50,000";
                    sumaGastosFunerarios = "$50,000";
                    sumaMuerteAccidental = "$300,000";
                    break;

                default:
                    plan = "Plan no válido";
                    precioPlanMensual = "-";
                    sumaIndemnizacionPorHospitalizacion = "$-";
                    sumaAyudaDeHospitalizacion = "$-";
                    sumaRoturaDeHuesos = "-";
                    sumaIncapacidadTotalyPermanente = "$-";
                    sumaAdaptacionesAlHogar = "$-";
                    sumaGastosFunerarios = "$-";
                    sumaMuerteAccidental = "$-";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank" style="display: none;"><img src="images/logo_scotiabank.jpg"/></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerPlenitud"><img src="images/ban_plenitud_m.jpg"/></div>
            <div class="cont_info">
                <h1>¿Qué plan he contratado?</h1>
                <h2>Contrataste el Seguro de <b>Plenitud Scotiabank</b> y estarás pagando  <b><%=precioPlanMensual%> (IVA incluido)</b> por él.</h2>
                <p>Es un seguro de accidentes que te ofrece la cobertura diaria por Hospitalización ante cualquier eventualidad, siempre y cuando hayas estado hospitalizado al menos 48 horas por enfermedad o accidente, adicional contarás con coberturas que te ayudarán a enfrentar eventualidades derivadas de accidentes o enfermedades.</p>
                <div class="separador"></div>
                <div class="coberturaT">Cobertura</div>
                <div class="sumaT">Suma Asegurada</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Indemnización diaria por Hospitalización (enfermedad o accidente): </p>
                            <span><%=sumaIndemnizacionPorHospitalizacion%> MXN</span></button>
                        <div data-content>
                            <article>
								Se te pagará una indemnización diaria al haber permanecido hospitalizado por más de 48 horas y hasta por un periodo máximo de 30 días, a consecuencia de un accidente o enfermedad. En caso de enfermedad podrás disfrutar de ésta cobertura después de 90 días de contratada la póliza y en caso de accidente, a partir de la contratación &sup1;.
                                <br><br>*Aplica para accidente y enfermedad hasta por 30 días.
                                <br><br>&sup1;  Se cubre un solo evento al año por vigencia.
							</article>	
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Ayuda de Hospitalización después de 72 horas: </p>
                            <span><%=sumaAyudaDeHospitalizacion%> MXN</span></button>
                        <div data-content>
                            <article>
								Cuando hayas permanecido más de 72 horas hospitalizado, se te pagará una indemnización adicional a la cobertura de indemnización diaria por hospitalización por accidente o enfermedad. En caso de enfermedad podrás disfrutar de ésta cobertura después de 90 días de contratada la póliza y en caso de accidente a partir de la contactación &sup1;.
                                <br><br>&sup1;  Se cubre un solo evento al año por vigencia.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Rotura de Huesos por accidente: </p>
                            <span><%=sumaRoturaDeHuesos%> MXN</span></button>
                        <div data-content>
                            <article>
								Si a causa de un accidente sufres fracturas de uno o varios de los huesos indicados en tus condiciones generales, recibirás la indemnización indicada en tu póliza &sup1;.
                                <br><br>&sup1;  Se cubre un solo evento al año por vigencia. 
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Incapacidad Total y Permanente (ITP) por Accidente: </p>
                            <span><%=sumaIncapacidadTotalyPermanente%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								En caso de que llegaras a sufrir una invalidez total y permanente, a consecuencia de un accidente y hayas permanecido en este estado más de 60 días, tendrás derecho a la suma asegurada contratada. Podrás disfrutar de ésta cobertura después de 90 días de la contratación de la póliza.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Adaptaciones al Hogar por ITP por accidente: </p>
                            <span><%=sumaAdaptacionesAlHogar%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								Si a consecuencia de una Incapacidad total y permanente por accidente requieres realizar adaptaciones o ajustes en tu hogar, te reembolsaremos la cantidad pagada en materiales &sup2; para las adaptaciones, más un 20% por concepto de honorarios o mano de obra, teniendo como límite la suma asegurada total disponible. Esta cobertura solo la podrás reclamar cuando la compañía ya te haya indemnizado  por la cobertura de ITP.
                                <br><br>&sup2; Deberá presentar pruebas de los gastos incurridos, tales como facturas de compra que cumplan con los requisitos fiscales.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Gastos Funerarios: </p>
                            <span><%=sumaGastosFunerarios%> MXN</span></button>
                        <div data-content>
                            <article>
								En caso de fallecimiento del asegurado por cualquier causa, la compañía pagará como apoyo a los beneficiarios designados, la suma asegurada contratada.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Muerte Accidental: </p>
                            <span><%=sumaMuerteAccidental%> MXN</span>
                        </button>
                        <div data-content>
                            <article>
								En caso de fallecimiento por accidente del asegurado, la compañía pagará la suma asegurada contratada a los beneficiarios designados.
							</article>
                        </div>
                    </section>

                    <h3>Además</h3>
                    <p>Tu seguro te ofrece un <strong>Servicio de Asistencias</strong> que incluye:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Médica Telefónica:  </p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se te brindará asesoría médica telefónica ante situaciones no consideradas como emergencia (síntomas, molestias o dudas), así como información referente a vacunaciones, uso de medicamentos, interpretación de exámenes de laboratorio, entre otros.
                                <br><br>Este servicio se te brinda las 24 horas del día,  los 7 días de la semana. Sin límite de eventos.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Orientación Emocional y Psicológica:  </p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Contarás con asistencia psicológica telefónica para solicitar asesoría relacionada con problemas como (i) violencia intrafamiliar; (ii) uso de drogas; (iii) ruptura familiar; (iv) crisis emocional; (v) bullying; (vi) pérdida de empleo, entre otros.  
                                <br><br>Este servicio se brinda de 8:00 a 20:00 horas de lunes a sábado. Sin límite de eventos.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Envío de Ambulancia Terrestre:  </p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de que sufras un accidente o enfermedad grave se gestionará el envío de una ambulancia terrestre para el traslado al centro hospitalario público o privado más cercano y/o adecuado requerido por el beneficiario.
                                <br><br>Este servicio se te proporcionará las 24 horas del día y los 365 días del año, con límite de un evento al año.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Referencia Médica Telefónica:  </p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                Te daremos referencias sobre médicos generales, clínicas, hospitales y laboratorios pertenecientes a la red que te proporcionarán costos preferenciales en tu consulta &sup1;.
                                <br><br>&sup1; Todos los gastos deberán de ser cubiertos por el usuario directamente a los proveedores de  la red de medicos.
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Aplicación de Inyecciones:  </p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                A través de un proveedor de la red, tendrás el servicio de diez aplicaciones de inyecciones para tratamientos relacionados de primer cuidado de salud &sup2;.
                                <br><br>&sup2; El servicio de asistencia no incluye material ni medicamentos.
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">· Asistencia Funeraria:  </p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                En caso de presentarse el fallecimiento del usuario, este servicio de asistencia te brindará asesoría telefónica para coordinar el servicio funerario que incluye la recolección del cuerpo, velación, traslado, cremación, urna o ataúd &sup3;.
                                <br><br>&sup3; No incluye nicho ni espacio en cementerio. Este servicio de asistencia cuenta con un límite de $20,000 (veinte mil pesos 00/100 M.N.), en caso de resultar un excedente, deberás de cubrirlo directamente con el proveedor.
                            </article>
                        </div>
                    </section>



                </section>
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                <strong>Háblanos siempre que nos necesites, estamos listos para atenderte</strong><br>
                Estos servicios son proporcionados por ESCOTEL – Especialistas en Contacto Telefónico, en caso de requerir algún servicio de asistencia comunícate a: <a href="tel:800 999 1449" target="_blank">800 999 1449</a> lada sin costo.
            </div>
            <div class="redBanner2">
                <p>Te recordamos que cuentas con 48 horas para cancelar o revisar todo lo relacionado con tu seguro. Si así lo decides, comunícate al <a href="tel:8008012402" target="_blank">800 801 2402</a> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La información antes descrita es de carácter informativo, para conocer las características particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aquí las condiciones generales del seguro y el clausulado general de las asistencias.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/plenitud_scotiabank/cg_Plenitud.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <div class="btFotter2"><a href="download/plenitud_scotiabank/Asistencia_Medica_scotiabank_web.pdf" target="_blank">Clausulado General de Asistencias</a></div>
                <div class="btFotter2"><a href="download/plenitud_scotiabank/Carta_Derechos_del_asegurado_Plenitud.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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