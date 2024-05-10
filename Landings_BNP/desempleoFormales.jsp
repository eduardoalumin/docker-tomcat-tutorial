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
            String precioPlanMensual;

            switch (intPlan) {
                case 3024:
                    plan = "B�sico 12 meses";
                    precioPlan = "$2,695";
                    precioPlanMensual = "$225.00";
                    break;

                case 3025:
                    plan = "Intermedio 12 meses";
                    precioPlan = "$3,083";
                    precioPlanMensual = "$257.00";
                    break;    

                case 3026:
                    plan = "Superior 12 meses";
                    precioPlan = "$3,278";
                    precioPlanMensual = "$273.00";
                    break;

                case 3027:
                    plan = "Total 12 meses";
                    precioPlan = "$4,055";
                    precioPlanMensual = "$338.00";
                    break;

                case 3028:
                    plan = "B�sico 18 meses";
                    precioPlan = "$3,392";
                    precioPlanMensual = "$188.00";
                    break;

                case 3029:
                    plan = "Intermedio 18 meses";
                    precioPlan = "$3,975";
                    precioPlanMensual = "$221.00";
                    break;    

                case 3030:
                    plan = "Superior 18 meses";
                    precioPlan = "$4,266";
                    precioPlanMensual = "$237.00";
                    break;

                case 3031:
                    plan = "Total 18 meses";
                    precioPlan = "$5,432";
                    precioPlanMensual = "$302.00";
                    break;

                case 3032:
                    plan = "B�sico 24 meses";
                    precioPlan = "$4,096";
                    precioPlanMensual = "$171.00";
                    break;

                case 3033:
                    plan = "Intermedio 24 meses";
                    precioPlan = "$5,000";
                    precioPlanMensual = "$208.00";
                    break;    

                case 3034:
                    plan = "Superior 24 meses";
                    precioPlan = "$5,262";
                    precioPlanMensual = "$219.00";
                    break;

                case 3035:
                    plan = "Total 24 meses";
                    precioPlan = "$7,500";
                    precioPlanMensual = "$313.00";
                    break;  
                    
                case 3036:
                    plan = "B�sico 36 meses";
                    precioPlan = "$5,523";
                    precioPlanMensual = "$153.00";
                    break;

                case 3037:
                    plan = "Intermedio 36 meses";
                    precioPlan = "$7,272";
                    precioPlanMensual = "$202.00";
                    break;    

                case 3038:
                    plan = "Superior 36meses";
                    precioPlan = "$7,400";
                    precioPlanMensual = "$206.00";
                    break;

                case 3039:
                    plan = "Total 36 meses";
                    precioPlan = "$11,000";
                    precioPlanMensual = "$306.00";
                    break;

                case 3040:
                    plan = "B�sico 48 meses";
                    precioPlan = "$6,976";
                    precioPlanMensual = "$145.00";
                    break;

                case 3041:
                    plan = "Intermedio 48 meses";
                    precioPlan = "$8,530";
                    precioPlanMensual = "$178.00";
                    break;    

                case 3042:
                    plan = "Superior 48 meses";
                    precioPlan = "$9,308";
                    precioPlanMensual = "$194.00";
                    break;

                case 3043:
                    plan = "Total 48 meses";
                    precioPlan = "$12,417";
                    precioPlanMensual = "$259.00";
                    break;

                case 3044:
                    plan = "B�sico 60 meses";
                    precioPlan = "$8,451";
                    precioPlanMensual = "$141.00";
                    break;

                case 3045:
                    plan = "Intermedio 60 meses";
                    precioPlan = "$10,394";
                    precioPlanMensual = "$173.00";
                    break;    

                case 3046:
                    plan = "Superior 60 meses";
                    precioPlan = "$11,366";
                    precioPlanMensual = "$189.00";
                    break;

                case 3047:
                    plan = "Total 60 meses";
                    precioPlan = "$15,252";
                    precioPlanMensual = "$254.00";
                    break;                                

                default:
                    plan = "Plan no v�lido";
                    precioPlan = "-";
                    precioPlanMensual = "";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
			    <div class="logo_scotiabank"><!--img src="images/logo_scotiabank.jpg"/--></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
			</div>
			<div class="clear separador"></div>
			<div class="bannerDesempleoFormales"><img src="images/ban_desempleo_formales_m.jpg"/></div>
            <div class="cont_info">
                <h1>Agradecemos la confianza depositada en nosotros al adquirir tu seguro de protecci�n de ingresos</h1>
                <!--h2 class="navy_blue">�Felicidades por esta gran decisi�n! Contrataste el plan <strong><%=plan%> de protecci�n de ingresos </strong> con el cual estar�s pagando <strong><%=precioPlan%></strong> (IVA incluido).
                </h2-->

                <h2 class="navy_blue">
                    �Felicidades por esta gran decisi�n! Contrataste el plan <strong><%=plan%> de protecci�n de ingresos</strong> con el cual estar�s pagando un total de <strong><%=precioPlan%></strong> prima �nica / <strong><%=precioPlanMensual%></strong> prima mensual, lo anterior, conforme a la forma de pago que hayas elegido al momento de la contrataci�n.
                </h2> 

                <p><strong>A continuaci�n encontrar�s las caracter�sticas particulares del seguro contratado.</strong></p>
                <div class="separador"></div>
                <div class="clear"></div>
                <h3>Tu seguro cubre:</h3>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Desempleo involuntario</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Si eres despedido de tu empleo y permaneces en esta situaci�n por un periodo que exceda el periodo de espera*, recibir�s la Suma Asegurada contratada en un pago �nico una vez dictaminado como procedente conforme a los t�rminos establecidos en las condiciones generales del citado seguro.</p>

                                <p class="legal">* Para conocer el periodo de espera deber�s consultar tu car�tula de p�liza.<br><br>
                                    <strong>Principales exclusiones:</strong>
                                </p>
                                    <ol type="a" class="legal element-list">
                                        <li>Renuncia voluntaria o terminaci�n de la relaci�n laboral.</li>
                                        <li>Retiro por jubilaci�n, pensi�n, cesant�a en edad avanzada.</li>
                                        <li>Rescisi�n de la relaci�n laboral por alguno de los supuestos a que se refiere el art�culo 47 de la Ley Federal del Trabajo.</li>
                                    </ol>
                                <p class="legal">
                                    <strong>Principales cl�usulas:</strong><br>
                                    <%if (intPlan == 3024 || intPlan == 3025 || intPlan == 3026 || intPlan == 3027) {%>Solo se cubre un evento durante la vigencia del seguro.<%}%>
                                    <%if (intPlan == 3028 || intPlan == 3029 || intPlan == 3030 || intPlan == 3031 || intPlan == 3032 || intPlan == 3033 || intPlan == 3034 || intPlan == 3035 || intPlan == 3036 || intPlan == 3037 || intPlan == 3038 || intPlan == 3039 || intPlan == 3040 || intPlan == 3041 || intPlan == 3042 || intPlan == 3043 || intPlan == 3044 || intPlan == 3045 || intPlan == 3046 || intPlan == 3047 ) {%>La cobertura tiene dos eventos durante su vigencia; entre ellos deber� transcurrir al menos 12 meses.<%}%>
                                </p>                                
                            </article>  
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Enfermedades graves </p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Si te diagnostican por primera vez* cualquiera de las siguientes enfermedades graves, recibir�s tu Suma Asegurada contratada, en una sola exhibici�n:</p>

                                <p>
                                    <ul class="element-list">
                                        <li>C�ncer</li>
                                        <li>Infarto al miocardio</li>
                                        <li>Accidente cerebro-vascular</li>
                                        <li>Cirug�a coronaria</li>
                                        <li>Insuficiencia renal terminal</li>
                                        <li>Trasplante de �rgano vital (coraz�n, pulm�n (es), p�ncreas, ri�ones e h�gado)</li>
                                        <li>Esclerosis m�ltiple</li>
                                    </ul>    
                                </p>

                                <p class="legal">
                                    * El primer diagn�stico deber� ser dentro de la vigencia y posterior al periodo de carencia definido en tu car�tula de p�liza.<br><br>
                                    Principales Exclusiones en caso de que el primer diagn�stico sea respecto al c�ncer:
                                </p>
                                    <ol type="a" class="legal element-list">
                                        <li>Lesiones descritas como carcinoma in situ.</li>
                                        <li>Tumoraciones que no presenten met�stasis al momento del estudio.</li>
                                        <li>C�ncer de la piel, a excepci�n de melanomas malignos.</li>
                                    </ol>
                                <p class="legal">  
                                    <strong>Principales cl�usulas:</strong><br>
                                    El primer diagn�stico deber� ser dentro de la vigencia y posterior al periodo de carencia definido en tu car�tula de p�liza.<br><br>
                                     
                                    <strong>Principales Cl�usulas Generales:</strong><br><br>
                                    Residencia: Este Contrato de Seguro se contrata con mexicanos que residan habitualmente en M�xico; o con extranjeros con la calidad legal de residentes permanentes y que tengan por lo menos 6 (seis) meses residiendo en los Estados Unidos Mexicanos, sin importar su nacionalidad.</br></br>
                                    L�mite Territorial: Esta P�liza ha sido contratada en territorio nacional, para cubrir riesgos que ocurran y sean reclamados dentro del mismo y conforme a los tribunales y la legislaci�n de los Estados Unidos Mexicanos; el pago de la Suma Asegurada o indemnizaci�n que, en su caso, deba realizar la Compa��a, se efectuar� en moneda nacional y en territorio nacional.<br><br>
                                    Cancelaci�n Anticipada: El Contratante podr� solicitar la cancelaci�n, previa identificaci�n, mediante notificaci�n por escrito a la Compa��a, quien entregar� dentro de las 48 (cuarenta y ocho) horas siguientes un acuse de recibo con clave o folio de cancelaci�n, devolviendo en su caso la prima pagada correspondiente del periodo no cubierto, menos el costo de adquisici�n y administraci�n, lo anterior dentro de los 10 (diez) d�as h�biles posteriores a la cancelaci�n, a trav�s de transferencia electr�nica a la cuenta bancaria proporcionada por el mismo.
                                </p>    
                            </article>
                        </div>
                    </section>

                    <h3>�Disfruta beneficios adicionales!</h3>
                    <p>Tu seguro incluye <strong>beneficios exclusivos sin costo</strong>, a trav�s del acceso a un portal digital en donde podr�s disfrutar de:</p>
                    <section data-accordion>
                        <button data-control>
                            <p>Aprende en l�nea</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Inscr�bete a cursos 100% digitales impartidos por las mejores Universidades del mundo, sin costo adicional y con validez oficial.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Mejora tu CV</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Recibe asesor�a para la elaboraci�n de tu CV, sintetizando tu historia acad�mica, laboral y personal.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Prepara entrevistas</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Un experto en reclutamiento te ayudar� con una simulaci�n de entrevista con el objetivo de identificar tus fortalezas y debilidades.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Comparador de salarios</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Conoce la oferta econ�mica en el mercado laboral para considerar una nueva propuesta.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Consultor�a en derecho laboral</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Recibe asesor�a y apoyo constante a trav�s de expertos en derecho laboral.</p>
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Acceso a bolsa de trabajo</p>
                        </button>
                        <div data-content>
                            <article>
                                <p>Consulta m�s de 40,000 ofertas laborales vigentes con las mejores empresas de M�xico, diferenciadas por Industria.</p>
                            </article>
                        </div>
                    </section>


                </section>    
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                En caso de tener alguno de estos eventos, comun�cate a : <a href="tel:800 801 2402" target="_blank">800 801 2402</a>
            </div>
            <div class="redBanner2">
                <p>Te recordamos que est�s protegido desde este momento y cuentas con 48 (cuarenta y ocho) horas para hacer la cancelaci�n de este seguro, sin cargo a tu tarjeta o cuenta de cheque, comunic�ndote al <a href="tel:800 801 2402" target="_blank">800 801 2402</a> de lunes a viernes en un horario de 8:00 a 21:00 h donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n antes descrita es de car�cter informativo, para conocer el alcance de las coberturas de seguro, te recomendamos consultar de manera integral las Condiciones Generales del seguro.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/condiciones_formales.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <div class="btFotter2"><a href="download/MX_EA_2022N_33_Folleto.pdf" target="_blank">Derechos del Asegurado Cardif</a></div>
                <div class="btFotter2"><a href="terminos_desempleo.jsp" target="_blank">T�rminos del Ecosistema</a></div>
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