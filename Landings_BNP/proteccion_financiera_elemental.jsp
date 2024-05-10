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
            String sumaRetiroEfectivoProtegido;
            String sumaCompraProtegida;

            switch (intPlan) {
                case 3072:
                    plan = "B�sico";
                    precioPlan = "$70";
                    sumaRetiroEfectivoProtegido = "Hasta $20,000";
                    sumaCompraProtegida = "Hasta $30,000";
                    break;

                default:
                    plan = "Plan no v�lido";
                    precioPlan = "-";
                    sumaRetiroEfectivoProtegido = "$-";
                    sumaCompraProtegida = "$-";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank"><!--img src="images/logo_scotiabank.jpg"/--></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerProteccionFinanciera"><img src="images/ban_proteccion_financiera_elemental_m.jpg"/></div>
            <div class="cont_info">
                <h1>ADIOS SORPRESAS INESPERADAS</h1>
                <h2 class="navy_blue">�Felicidades has tomado una excelente decisi�n de protecci�n!  Al contratar el Plan <strong><%=plan%> del Seguro Protecci�n Financiera Elemental</strong>, por s�lo <strong><%=precioPlan%></strong> (IVA incluido), contar�s con respaldo ante robo de efectivo o de compras que realices con tus tarjetas amparadas, sin afectar tu estabilidad econ�mica. Adem�s, <strong>tendr�s acceso a una nuestra app en la que cuentas con asistencias sin costo</strong>, �que podr�s utilizar en cualquier momento! 
                <div class="separador"></div>
                <div class="coberturaT">Coberturas</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Retiro de efectivo protegido</p>
                            <span><%=sumaRetiroEfectivoProtegido%> MXN</span></button>
                        <div data-content>
                            <article>
                                <p>Si durante las 24 horas posteriores de haber retirado efectivo, en alg�n cajero autom�tico, ventanilla bancaria o en cualquier comercio autorizado* a nivel nacional, �ste te es robado o si eres forzado a realizar retiros de efectivo mediante el uso de violencia f�sica o moral, de alguna de tus tarjetas amparadas, recibir�s el monto equivalente al efectivo robado hasta por el monto establecido en tu p�liza.</p>

                                <p>Se cubrir�n hasta (3) tres tarjetas de d�bito o cr�dito de Scotiabank y (1) una de otro banco a nombre del asegurado titular.</p>

                                <p>Esta cobertura tiene un periodo de carencia de 60 d�as y podr� ser utilizada en 3 ocasiones, entre eventos deber�n tambi�n pasar al menos 60 d�as.</p>

                                <p><strong>Principales Exclusiones</strong></p>

                                <p>Robo ocurrido: por actos realizados por tus familiares ascendientes o descendientes, y/o parientes por afinidad hasta el segundo grado, apoderados, servidumbre, funcionarios, socios, empleados, o cualquier persona o personas por las cuales seas civilmente responsable. De igual forma no quedar� cubierto el autorobo, ni el evento derivado de enga�os, hurto o extrav�o, ni el robo por dolo o mala fe de tu parte.</p>

                                <p class="legal">Para conocer el alcance completo de la cobertura, as� como de sus exclusiones, consulta las condiciones generales.</p>

                                <p class="legal">* Establecimiento comercial autorizado por la Instituci�n Financiera en donde puedes realizar disposiciones de efectivo.</p>
                                
                            </article>  
                        </div>
                    </section>

                    <section data-accordion>
                        <button data-control>
                            <p>Compra protegida</p>
                            <span><%=sumaCompraProtegida%> MXN</span></button>
                        <div data-content>
                            <article>
                                <p>Si durante la vigencia del seguro, te es robado alg�n art�culo adquirido con la Tarjeta Amparada*, recibir�s el monto equivalente al costo del art�culo robado teniendo como l�mite lo establecido en tu p�liza como suma asegurada por evento.</p> 

                                <p>* Se cubrir�n hasta (3) tres tarjetas de d�bito o cr�dito de Scotiabank y (1) una de otro banco a nombre del asegurado titular- asegurado.</p> 

                                <p>La cobertura cuenta con un periodo de carencia de 60 d�as y ser� efectiva �nicamente durante 2 eventos hasta por la mitad de la suma asegurada ($15,000 c/u), el periodo m�nimo entre eventos es de 60 d�as.</p> 

                                <p><strong>Principales Exclusiones</strong></p>

                                <p>Robo ocurrido por tu participaci�n directa en actos delictivos, por actos realizados por tus familiares ascendientes o descendientes, y/o parientes por afinidad hasta el segundo grado, apoderados, servidumbre, funcionarios, socios, empleados, o cualquier persona o personas por las cuales seas civilmente responsable.</p>

                                <p>De igual forma no quedar� cubierto el autorobo, el evento considerado hurto o extrav�o, ni el robo por  dolo o mala fe de tu parte. </p>

                                <p class="legal">Para conocer el alcance completo de la cobertura, as� como de sus exclusiones, consulta las condiciones generales.</p>
                            </article>  
                        </div>
                    </section>
                    
                

                    <h3>�Disfruta beneficios exclusivos!</h3>
                    <p>�T� seguro incluye un ecosistema de beneficios sin costo a trav�s de nuestro portal �Vive tu seguro� <a class="link_blue" href="http://www.vivetuseguro.com" target="_blank">(www.vivetuseguro.com)</a> disfr�talos!! </p>

                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Score Financiero</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>En el portal del ecosistema, podr�s visualizar tu puntaje actual conforme a las interacciones que tengas en el sector financiero adem�s podr�s obtener recomendaciones para mejorarlo en caso de que este no sea favorable.</p>

                                <p>El servicio e informaci�n es respaldado por Bur� de cr�dito, tendr�s acceso a un reporte anual.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Diagn�stico de salud financiera</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>A trav�s de tu comportamiento en gastos y entradas, se te brindar� el servicio de darte un diagn�stico financiero, el cual buscar� que conozcas tu puntuaci�n en 10 dimensiones, usando puntajes porcentuales que ir�n de 0% a 100% para que puedas determinar, en caso de ser necesario, donde ajustarte o realizar cambios para tener una salud financiera estable que te ayude a tomar decisiones a mediano y largo plazo.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Servicio de taxi</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>Acceso a trasladarte a trav�s un servicio de taxi a consecuencia de robo o accidente. El costo de dicho servicio ser� por la cantidad de 300 pesos, en caso de un excedente �ste correr� por tu cuenta previo consentimiento a tomar el viaje.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Seguridad inform�tica</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>De manera telef�nica y/o virtual podr�s solicitar apoyo para resolver incidencias debidas a mal funcionamiento de aplicaciones y/o sistemas computacionales.  As� mismo, podr�s recibir asesor�a sobre c�mo realizar descarga de aplicaciones, configuraci�n de hardware, generar respaldos de informaci�n, recuperar datos, configuraci�n y alta de correos electr�nico entre otros temas.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">Asistencia legal telef�nica en caso de robo o extrav�o de documentos</p>
                            <span style="width: 10% !important;"></span>
                        </button>
                        <div data-content>
                            <article>
                                <p>Podr�s solicitar una cita telef�nica y / o virtual donde abogados certificados te brindar�n asesor�a legal.</p>

                                <p>Adicional en caso de robo o extrav�o de documentos como lo pueden ser actas de nacimiento, actas de matrimonio, actas de defunci�n, divorcio, pasaportes, licencias etc se te asesorar� sobre el proceso, costos y requisitos que requerir�s hacer para recuperar lo documentos ante las dependencias correspondientes.  El servicio es una asesor�a por lo que la gesti�n y seguimiento para la obtenci�n de tu documentaci�n no est�n considerados.<p>

                                <p class="legal">Para conocer los alcances y exclusiones completas de los servicios del Ecosistema, consulta las condiciones generales.</p>
                            </article>
                        </div>
                    </section>
                    
                </section>
                <!--accordion--> 
                <!--end accordion-->    

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                En caso  de siniestro, comun�cate al n�mero de Servicio de Atenci�n a clientes: <a href="tel:800 801 2402" target="_blank">800 801 2402</a>
            </div>
            <div class="redBanner2">
                <p>Te recordamos que cuentas con 48 horas para cancelar o revisar todo lo relacionado con tu seguro. Si as� lo decides, comun�cate al <a href="tel:800 801 2402" target="_blank">800 801 2402</a> de lunes a viernes de 8:00 a 21:00 horas, donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n antes descrita es de car�cter informativo, para conocer el alcance de las coberturas de Seguro, consulta las Condiciones Generales.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/MX_CH_Condiciones_PROFINELE_23-24.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <!--div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_vital_escencial.pdf" target="_blank">Clausulado General de Asistencias</a></div-->
                <div class="btFotter2"><a href="download/MX_CH_Folleto_23-24.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
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