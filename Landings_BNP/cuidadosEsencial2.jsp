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
            String sumaEnfermedadesGraves;
            String sumaCirujia;

            switch (intPlan) {
                case 2549:
                    plan = "Básico";
                    precioPlan = "$2,090.00";
                    sumaEnfermedadesGraves = "$50,000";
                    sumaCirujia = "$6,000";
                    break;

                case 2550:
                    plan = "Intermedio";
                    precioPlan = "$2,640.00";
                    sumaEnfermedadesGraves = "$75,000";
                    sumaCirujia = "$8,500";
                    break;

                case 2451:
                    plan = "Superior";
                    precioPlan = "$3,245.00";
                    sumaEnfermedadesGraves = "$100,000";
                    sumaCirujia = "$11,000";
                    break;

                default:
                    plan = "Plan no válido";
                    precioPlan = "-";
                    sumaEnfermedadesGraves = "$-";
                    sumaCirujia = "$-";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank"><!--img src="images/logo_scotiabank.jpg"/--></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerCuidadosEsencial"><img src="images/ban_cuidadosEsencial_m.jpg"/></div>
            <div class="cont_info">
                <h1>TENER PROTECCIÓN, OFRECE SEGURIDAD</h1>
                <h2 class="navy_blue">¡Felicidades por priorizar tu salud! Al contratar el plan <strong><%=plan%> de Cuidados Esencial</strong> por sólo <strong><%=precioPlan%></strong> anuales (IVA incluido), contarás con protección ante cualquier evento imprevisto que pueda poner en riesgo tu bienestar, sin afectar tu economía. Además, <strong>tendrás acceso a nuestra app “Ecosistemas Cardif” en la que cuentas con beneficios sin costo</strong>, ¡que podrás utilizar en cualquier momento!</h2>
                <div class="separador"></div>
                <div class="coberturaT">Coberturas</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Enfermedades Graves</p>
                            <span><%=sumaEnfermedadesGraves%> MXN</span></button>
                        <div data-content>
                            <article>
                                <p>Si te diagnostican por primera vez cualquiera de las siguientes enfermedades graves, recibirás tu Suma Asegurada contratada, en una sola exhibición:</p>

                                <ul class="element-list">
                                    <li>Cáncer</li>
                                    <li>Infarto al miocardio</li>
                                    <li>Accidente cerebro-vascular</li>
                                    <li>Esclerosis múltiple</li>
                                </ul>

                                <p>Esta cobertura tiene un periodo de carencia de 3 meses contados desde la contratación del seguro y podrá ser utilizada en dos ocasiones durante la vigencia, los eventos deberán ser de diferentes enfermedades.</p>

                                <p class="legal">* No se cubren enfermedades preexistentes. Para conocer las exclusiones completas consulta las condiciones generales.</p>
                                
                            </article>  
                        </div>
                    </section>

                    <section data-accordion>
                        <button data-control>
                            <p>Cirugía</p>
                            <span><%=sumaCirujia%> MXN</span></button>
                        <div data-content>
                            <article>
                                <p>Si a consecuencia de un accidente o enfermedad, ocurrida o diagnosticada durante la vigencia de tu póliza, requirieras una intervención quirúrgica, recibirás tu Suma Asegurada contratada, en una sola exhibición. Para ello, será necesario que cumplas al menos 72 horas en el hospital como amparo a la situación.</p>

                                <p>Esta cobertura tiene un periodo de carencia de 3 meses contados desde la contratación del seguro y podrá ser utilizada en dos ocasiones por año. Dicho periodo no aplicará en el caso de Accidentes ni en el caso de las renovaciones.</p>

                                <p class="legal">*Algunas de las cirugías que no serán cubiertas son: cirugías ambulatorias, intervenciones quirúrgicas derivadas de padecimientos preexistentes y/o sus complicaciones a la fecha de Inicio de vigencia de la Póliza, tratamientos con fines preventivos, entre otras. Para conocer el alcance completo consulta las condiciones generales.
                                </p>
                                
                            </article>  
                        </div>
                    </section>
                    
                

                    <h3>¡Disfruta beneficios exclusivos!</h3>
                    <p>Tu seguro incluye <strong>beneficios adicionales sin costo</strong> a través de nuestra app “Ecosistemas Cardif”, con ¡un comparador de medicamentos y descuentos en fármacos!</p>

                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Comparador de medicamentos  </p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>Utiliza nuestra aplicación y conéctate a la red de farmacias disponibles cerca de tu hogar en un rango de 10 km; con ella, podrás encontrar todas las presentaciones disponibles del medicamento, ya sea por marca, gramaje y precio.</p>
                                <p>Compara los costos, elige el de tu preferencia, marca a la farmacia y ¡cómpralo!</p>
                                <p>También cuentas con la opción de solicitarlo a través de la página del establecimiento. Una vez que elijas el medicamento, sólo busca la ubicación desde nuestra aplicación, y decide cómo llegar: puedes utilizar Waze, Google Maps, Apple Maps, Uber o Didi. Estas funciones ¡son únicas en el mercado de los seguros!</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Descuentos en medicamentos</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>Ingresa a la app y comienza a utilizar los descuentos que tenemos para ti, encuéntralos ¡desde un 30 a 50% de su precio regular! Este beneficio está disponible a nivel nacional en más de 6,250 poblaciones.</p>
                                <p>Además, si así lo decides, el medicamento podrá ser enviado a tu domicilio ¡con sólo una llamada!</p>
                            </article>
                        </div>
                    </section>

                    <p class="legal">Para utilizar el comparador de medicamentos y descuentos, deberás<br>
                        1-ingresar a alguno de los siguientes links (dependiendo de tu sistema operativo):<br>
                        <a href="https://apps.apple.com/mx/app/ecosistemas-cardif/id1482763141" target="_blank"><span class="navy_blue">https://apps.apple.com/mx/app/ecosistemas-cardif/id1482763141</span></a><br>
                        <a class="navy_blue" href="https://play.google.com/store/apps/details?id=com.Cardif.ScotiabankSalud" target="_blank"><span class="navy_blue">https://play.google.com/store/apps/details?id=com.Cardif.ScotiabankSalud</span></a><br>
                        2-Descarga la App “Ecosistemas Cardif”<br>
                        3-Ingresar el correo electrónico que diste al momento de comprar tu seguro.
                    </p>
                    
                </section>
                <!--accordion--> 
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
                <div class="btFotter2"><a href="download/MX_IG_CGs_CuidadosEsencial_2022-2023_VF.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <!--div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_vital_escencial.pdf" target="_blank">Clausulado General de Asistencias</a></div-->
                <div class="btFotter2"><a href="download/MX_IG_Folleto_CuidadosEsencial_2022-2023_Final.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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