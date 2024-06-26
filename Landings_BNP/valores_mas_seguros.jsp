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
            String sumaRoboCelularTablet;
            String sumaRoboBienesMoviles;
            String sumaRoboObjetosPersonales;
            String sumaRoboEfectivo;
            String sumaRoboDocumentos;
            String sumaFraudeInternet;
            String sumaCompraProtegida;

            switch (intPlan) {
                case 2515:
                    plan = "Plan B�sico";
                    precioPlanMensual = "$197";
                    sumaRoboCelularTablet = "$6,600";
                    sumaRoboBienesMoviles = "$6,600";
                    sumaRoboObjetosPersonales = "$8,250";
                    sumaRoboEfectivo = "Hasta $33,000";
                    sumaRoboDocumentos = "$3,300";
                    sumaFraudeInternet = "Hasta $33,000";
                    sumaCompraProtegida = "Hasta $33,000";
                    break;

                case 2516:
                    plan = "Plan Preferente";
                    precioPlanMensual = "$250";
                    sumaRoboCelularTablet = "$8,800";
                    sumaRoboBienesMoviles = "$8,800";
                    sumaRoboObjetosPersonales = "$11,000";
                    sumaRoboEfectivo = "Hasta $44,000";
                    sumaRoboDocumentos = "$3,850";
                    sumaFraudeInternet = "Hasta $44,000";
                    sumaCompraProtegida = "Hasta $44,000";
                    break;

                case 2517:
                    plan = "Plan Premier";
                    precioPlanMensual = "$343";
                    sumaRoboCelularTablet = "$11,000";
                    sumaRoboBienesMoviles = "$11,000";
                    sumaRoboObjetosPersonales = "$13,200";
                    sumaRoboEfectivo = "Hasta $55,000";
                    sumaRoboDocumentos = "$4,400";
                    sumaFraudeInternet = "Hasta $55,000";
                    sumaCompraProtegida = "Hasta $55,000";
                    break;

                default:
                    plan = "Plan no v�lido";
                    precioPlanMensual = "-";
                    sumaRoboCelularTablet = "$-";
                    sumaRoboBienesMoviles = "$-";
                    sumaRoboObjetosPersonales = "-";
                    sumaRoboEfectivo = "$-";
                    sumaRoboDocumentos = "$-";
                    sumaFraudeInternet = "$-";
                    sumaCompraProtegida = "$-";
                    break;
            }


        %>

        <div class="cont">
		  	<div class="header">
			    <div class="logo_scotiabank"><img src="images/logo_scotiabank.jpg"/></div>
			    <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
		  	</div>
		  	<div class="clear separador"></div>
		  	<div class="bannerVal_Seg"><img src="images/ban_val-seg_m.jpg"/></div>
            <div class="cont_info">
                <h1>�Qu� plan he contratado?</h1>
                <h2>Contrataste el <strong><%=plan%></strong> y estar�s pagando mensualmente <strong><%=precioPlanMensual%></strong> (IVA incluido) por �l.</h2>
                <p><strong>Valores + Seguros </strong> ofrece protecci�n a <strong>TODAS</strong> las tarjetas de cr�dito y d�bito que tengas para darte mayor tranquilidad en eventos inesperados como: </p>
                <div class="separador"></div>
                <div class="coberturaT">Cobertura</div>
                <div class="sumaT">Suma Asegurada</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Compra Protegida (Robo de mercanc�a)</p>
                            <span><%=sumaCompraProtegida%> MXN</span></button>
                        <div data-content>
                            <article>Se te reembolsar� la suma asegurada contratada en caso de robo de mercanc�a comprada con tarjetas de cr�dito, d�bito y cheques de cualquier banco Visa o MasterCard, siempre que el robo suceda dentro de las 72 horas siguientes al haber realizado la compra. Se te pagar� el valor del producto robado hasta la Suma Asegurada por evento indicada en tu caratula de p�liza. Puedes usar este beneficio 2 veces al a�o con un intervalo de 2 meses entre cada evento
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Efectivo Robo </p>
                            <span><%=sumaRoboEfectivo%> MXN</span></button>
                        <div data-content>
                            <article>Se te cubrir� el robo del efectivo retirado en cualquier cajero, sucursal o corresponsal bancario (tiendas, supermercados, etc), con cargo a las tarjetas de cr�dito o d�bito de cualquier banco (Visa o MasterCard), siempre que el robo suceda dentro de las 8 horas posteriores al retiro. Se te pagar� el importe retirado y robado, hasta la Suma Asegurada por evento indicada en tu caratula de p�liza. Puedes usar este beneficio 2 veces al a�o con un intervalo de 2 meses entre cada evento
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Fraude en ScotiaWeb y Cheques Scotiabank</p>
                            <span><%=sumaFraudeInternet%> MXN</span></button>
                        <div data-content>
                            <article>Se te cubrir�n las transacciones realizadas a trav�s del portal bancario de Scotiabank por alguien no autorizado por el asegurado, as� como el uso fraudulento derivado del robo o extrav�o de cheques de Scotiabank. Se cubren 72 horas previas al aviso para el bloqueo a la instituci�n bancaria. Se te pagar� el valor de las transacciones fraudulentas hasta la Suma Asegurada por evento indicado en tu caratula de p�liza. Puedes usar este beneficio 2 veces al a�o con un intervalo de 2 meses entre cada evento.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Celular y/o Tabletas</p>
                            <span><%=sumaRoboCelularTablet%> MXN</span>
                        </button>
                        <div data-content>
                            <article>Se cubre el robo de celular o tableta mientras sean propiedades del asegurado o de terceros bajo el cuidado del asegurado al momento del robo. Se cubre un solo evento por la suma asegurada contratada. Aplica un deducible del 15%. La cobertura es efectiva 1 mes despu�s de la contrataci�n. Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 2 eventos al a�o, con un intervalo de 2 meses entre eventos.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Bienes M�viles</p>
                            <span><%=sumaRoboBienesMoviles%> MXN</span>
                        </button>
                        <div data-content>
                            <article>Se te otorgar� la suma asegurada contratada para cubrir los gastos el robo de equipos electr�nicos port�tiles mientras sean propiedades del asegurado o de terceros bajo el cuidado del asegurado al momento del robo. Se cubre un solo evento por la suma asegurada contratada. Aplica un deducible del 15%. La cobertura es efectiva 1 mes despu�s de la contrataci�n. Los equipos que se cubren son: C�maras de video / fotogr�ficas, Ipods, Consolas de video juegos, GPS, Tabletas / Ipad, Discos duros port�tiles, GoPro, Drones, Laptops, Notebooks y Discman. Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 2 eventos al a�o, con un intervalo de 2 meses entre eventos.
                            </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Documentos</p>
                            <span><%=sumaRoboDocumentos%> MXN</span></button>
                        <div data-content>
                            <article>Se cubren los gastos que se originen por el reemplazo de documentos personales a consecuencia de un robo, tales como: Pasaporte, Licencia de Conducir, c�dula profesional, T�tulos escolares, etc. Se cubre hasta agotar la suma asegurada, se cubren m�ximo 4  eventos al a�o, con un intervalo de 2 meses entre eventos. La cobertura es efectiva un mes despu�s de la contrataci�n.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Objetos Personales</p>
                            <span><%=sumaRoboObjetosPersonales%> MXN</span>
                        </button>
                        <div data-content>
                            <article>Se cubre el robo de objetos mientras sean propiedad del asegurado. Los objetos personales que se cubren son: objetos deportivos, cartera, bolsa, joyas, lentes, reloj, mochila, maleta, instrumentos musicales, calzado y abrigos o chamarras.<br><br>La cobertura es efectiva 2 mes despu�s de la contrataci�n. Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 2 eventos al a�o, con un intervalo de 2 meses entre eventos.
                            </article>
                        </div>
                    </section>

                    <h3>Adem�s</h3>
                    <p>Tu seguro incluye un completo <strong>servicio de asistencias</strong>, tales como:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Legal</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se brindar� asesor�a legal en caso de robo de identidad, ya sea por extrav�o de estados de cuenta o transacciones en cuentas bancarias por Internet.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Legal Telef�nica</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se asesorar� telef�nicamente sobre c�mo levantar denuncias ante a la autoridad.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Protecci�n Infocard</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se comunicar� con la instituci�n bancaria correspondiente para el bloqueo de tarjetas robadas o extraviadas.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Servicio de Taxi</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de robo o asalto, se podr� solicitar el servicio de taxi seguro. Limitado a un evento al a�o de hasta $150.00 MXP.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Robo de Tarjeta</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Asesoramiento legal presencial para la realizaci�n de los tr�mites necesarios en caso de robo de tarjetas y uso forzado de la misma, derivado de un asalto. 
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Legal Funeraria</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se brindar� asesor�a legal en los tr�mites derivados del fallecimiento del asegurado a consecuencia de asalto.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Telef�nica para el Bloqueo de Celular</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de robo de celular, se comunicar� con la compa��a telef�nica correspondiente para el bloqueo del celular.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia M�dica Telef�nica</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se brindar� orientaci�n m�dica para enfermedades no graves, informaci�n general para el uso de medicamentos e informaci�n general acerca de salud p�blica y privada.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Consulta con m�dico general</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se coordinar� una cita con un m�dico general. Limitado a un evento al a�o de hasta $600.00 MXP. En caso de exceder el monto, este deber� ser cubierto por el asegurado.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Env�o de cerrajero para cambio de chapa</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								En caso de robo o asalto se enviar� un cerrajero al domicilio para el cambio de chapa. Limitado a un evento al a�o de hasta $500.00 MXP.
							</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Referencias de hogar con costo preferencial</p>
                            <span style="width: 10% !important;"></span>
						</button>
                        <div data-content>
                            <article>
								Se brindar� la informaci�n necesaria para la contrataci�n necesaria de cerrajeros, vidrieros, plomeros y electricistas que se encuentren cercanos a su domicilio. 
							</article>
                        </div>
                    </section>

                </section>
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                Los servicios de la Asistencia est�n disponibles las 24h, los 365 d�as del a�o en todo el territorio nacional. H�blanos siempre que nos necesites, estamos listos para atenderte.<br><br>
                Los servicios de asistencias son proporcionados por Allianz Assistance en caso de requerir de alguno de �stos, comun�cate al tel�fono <a href="tel:51773843" target="_blank">5177 3843</a>.
            </div>
            <div class="redBanner2">
                <p>Te recordamos que cuentas con 48 horas para cancelar o revisar todo lo relacionado con tu seguro. Si as� lo decides, comun�cate al <a href="tel:8008012402" target="_blank">800 801 2402</a> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n antes descrita es de car�cter informativo, para conocer las caracter�sticas particulares y el alcance de las coberturas de seguro y de los servicios de asistencia, descarga aqu� las condiciones generales del seguro y el clausulado general de las asistencias.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/Cuadernillo_Valora_sin_asistencias.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <div class="btFotter2"><a href="download/Clausulado_General_de_Asistencias_Valora.pdf" target="_blank">Clausulado General de Asistencias</a></div>
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