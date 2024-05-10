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
            String sumaCompraProtegida;
            String sumaRoboEfectivo;
            String sumaFraudeInternet;
            String sumaRoboCelularTablets;
            String sumaRoboBienesMoviles;
            String sumaRoboDocumentos;
            String sumaRoboObjetosPersonales;

            switch (intPlan) {
                case 2541:
                    plan = "Plan 1";
                    precioPlanMensual = "$150.00";
                    sumaCompraProtegida = "$40,000.00";
                    sumaRoboEfectivo = "$40,000.00";
                    sumaFraudeInternet = "$40,000.00";
                    sumaRoboCelularTablets = "$4,000";
                    sumaRoboBienesMoviles = "$4,000";
                    sumaRoboDocumentos = "$2,000";
                    sumaRoboObjetosPersonales = "$5,000";
                    break;

                case 2542:
                    plan = "Plan 2";
                    precioPlanMensual = "$175.00";
                    sumaCompraProtegida = "$60,000.00";
                    sumaRoboEfectivo = "$60,000.00";
                    sumaFraudeInternet = "$60,000.00";
                    sumaRoboCelularTablets = "$6,000";
                    sumaRoboBienesMoviles = "$6,000";
                    sumaRoboDocumentos = "$3,000";
                    sumaRoboObjetosPersonales = "$7,500";
                    break;

                case 2543:
                    plan = "Plan 3";
                    precioPlanMensual = "$222.00";
                    sumaCompraProtegida = "$80,000.00";
                    sumaRoboEfectivo = "$80,000.00";
                    sumaFraudeInternet = "80,000.00";
                    sumaRoboCelularTablets = "$8,000";
                    sumaRoboBienesMoviles = "$8,000";
                    sumaRoboDocumentos = "$3,500";
                    sumaRoboObjetosPersonales = "$10,000";
                    break;
                    
                case 2544:
                    plan = "Plan 4";
                    precioPlanMensual = "$305.00";
                    sumaCompraProtegida = "$100,000.00";
                    sumaRoboEfectivo = "$100,000.00";
                    sumaFraudeInternet = "$100,000.00";
                    sumaRoboCelularTablets = "$10,000";
                    sumaRoboBienesMoviles = "$10,000";
                    sumaRoboDocumentos = "$4,000";
                    sumaRoboObjetosPersonales = "$12,000";
                    break;

                case 2545:
                    plan = "Plan 5";
                    precioPlanMensual = "$114.00";
                    sumaCompraProtegida = "$10,000.00";
                    sumaRoboEfectivo = "$10,000.00";
                    sumaFraudeInternet = "$10,000.00";
                    sumaRoboCelularTablets = "$2,000";
                    sumaRoboBienesMoviles = "$2,000";
                    sumaRoboDocumentos = "$2,000";
                    sumaRoboObjetosPersonales = "$2,500";
                    break;
                    
                case 2571:
                    plan = "Plan 1";
                    precioPlanMensual = "$150.00";
                    sumaCompraProtegida = "$40,000.00";
                    sumaRoboEfectivo = "$40,000.00";
                    sumaFraudeInternet = "$40,000.00";
                    sumaRoboCelularTablets = "$4,000";
                    sumaRoboBienesMoviles = "$4,000";
                    sumaRoboDocumentos = "$2,000";
                    sumaRoboObjetosPersonales = "$5,000";
                    break;

                case 2572:
                    plan = "Plan 2";
                    precioPlanMensual = "$175.00";
                    sumaCompraProtegida = "$60,000.00";
                    sumaRoboEfectivo = "$60,000.00";
                    sumaFraudeInternet = "$60,000.00";
                    sumaRoboCelularTablets = "$6,000";
                    sumaRoboBienesMoviles = "$6,000";
                    sumaRoboDocumentos = "$3,000";
                    sumaRoboObjetosPersonales = "$7,500";
                    break;

                case 2573:
                    plan = "Plan 3";
                    precioPlanMensual = "$222.00";
                    sumaCompraProtegida = "$80,000.00";
                    sumaRoboEfectivo = "$80,000.00";
                    sumaFraudeInternet = "80,000.00";
                    sumaRoboCelularTablets = "$8,000";
                    sumaRoboBienesMoviles = "$8,000";
                    sumaRoboDocumentos = "$3,500";
                    sumaRoboObjetosPersonales = "$10,000";
                    break;
                    
                case 2574:
                    plan = "Plan 4";
                    precioPlanMensual = "$305.00";
                    sumaCompraProtegida = "$100,000.00";
                    sumaRoboEfectivo = "$100,000.00";
                    sumaFraudeInternet = "$100,000.00";
                    sumaRoboCelularTablets = "$10,000";
                    sumaRoboBienesMoviles = "$10,000";
                    sumaRoboDocumentos = "$4,000";
                    sumaRoboObjetosPersonales = "$12,000";
                    break;

                case 2575:
                    plan = "Plan 5";
                    precioPlanMensual = "$114.00";
                    sumaCompraProtegida = "$10,000.00";
                    sumaRoboEfectivo = "$10,000.00";
                    sumaFraudeInternet = "$10,000.00";
                    sumaRoboCelularTablets = "$2,000";
                    sumaRoboBienesMoviles = "$2,000";
                    sumaRoboDocumentos = "$2,000";
                    sumaRoboObjetosPersonales = "$2,500";
                    break;

                default:
                    plan = "Plan no v�lido";
                    precioPlanMensual = "-";
                    sumaCompraProtegida = "$-";
                    sumaRoboEfectivo = "$-";
                    sumaFraudeInternet = "-";
                    sumaRoboCelularTablets = "$-";
                    sumaRoboBienesMoviles = "$-";
                    sumaRoboDocumentos = "$-";
                    sumaRoboObjetosPersonales = "$-";
                    break;
            }


        %>

        <div class="cont">
            <div class="header">
                <div class="logo_scotiabank"><img src="images/logo_scotiabank.jpg"/></div>
                <div class="logo_cardif"><img src="images/logo_cardif.png"/></div>
            </div>
            <div class="clear separador"></div>
            <div class="bannerScotiaBank_val_seg"><img src="images/ban_val_seg_sctbnk_m.jpg"/></div>
            <div class="cont_info">
                <h1>�Qu� plan he contratado?</h1>
                <h2>Contrataste el Plan <strong><%=plan%></strong> y estar�s pagando mensualmente <strong><%=precioPlanMensual%></strong> (IVA incluido) por �l.</h2>
                <p><strong>Valores + Seguros</strong> ofrece protecci�n a TODAS las tarjetas de cr�dito y d�bito que tengas para darte mayor tranquilidad en eventos inesperados como: </p>
                <div class="separador"></div>
                <div class="coberturaT">Cobertura</div>
                <div class="sumaT">Suma Asegurada</div>
                <div class="clear"></div>
                <!--accordion-->
                <section id="only-one" data-accordion-group>
                    <section data-accordion>
                        <button data-control>
                            <p>Compra Protegida</p>
                            <span><%=sumaCompraProtegida%> MXN</span></button>
                        <div data-content>
                            <article>Robo de mercanc�a comprada con la tarjeta de cr�dito o d�bito.<br><br>
                                Se cubre el robo de cualquier mercanc�a comprada con tarjetas de cr�dito, d�bito y cheques de cualquier banco Visa o MasterCard, siempre que el robo suceda dentro de las 72 horas siguientes al haber realizado la compra.<br><br>
                                Se pagar� el valor del producto robado, sin l�mite de reclamaciones hasta agotar la suma asegurada, con un intervalo de 30 d�as entre eventos.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Efectivo </p>
                            <span><%=sumaRoboEfectivo%> MXN</span></button>
                        <div data-content>
                            <article>Robo de efectivo con cargo a las tarjetas amparadas.<br><br>
                                Se cubre el robo del efectivo retirado en cualquier cajero, sucursal o corresponsal bancario (tiendas, supermercados, etc), con cargo a las tarjetas de cr�dito o d�bito de cualquier banco (Visa o MasterCard) del asegurado, siempre que el robo suceda dentro de las 8 horas posteriores al retiro.<br><br>
                                Se pagar� el importe retirado y robado, sin l�mite de reclamaciones hasta agotar la suma asegurada.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Fraude en ScotiaWeb y Cheques Scotiabank</p>
                            <span><%=sumaFraudeInternet%> MXN</span></button>
                        <div data-content>
                            <article>Transferencias electr�nicas de Fondos no reversibles, no autorizadas por el titular a trav�s del sitio de internet de la instituci�n autorizada para transferencias electr�nicas y fraude por robo o extrav�o de cheques.<br><br>
                                Se cubren las transacciones realizadas a trav�s del portal bancario de Scotiabank por alguien no autorizado por el asegurado, as� como el uso fraudulento derivado del robo o extrav�o de cheques de Scotiabank.<br><br>
                                Se cubren 72 horas previas al aviso para el bloqueo a la instituci�n bancaria. Sin l�mite de reclamaciones hasta agotar la suma asegurada, con un intervalo de 2 meses entre eventos.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Celular y/o Tabletas</p>
                            <span><%=sumaRoboCelularTablets%> MXN</span>
                            <%if (intPlan == 2544) {%>
                            <span style="font-size:12px; margin-top:2px;">(En 2 eventos de $5,000 pesos c/u)</span>
                            <%}%>
                        </button>
                        <div data-content>
                            <article>Se cubre el robo de celular o tableta mientras sean propiedades del asegurado o de terceros bajo el cuidado del asegurado al momento del robo.<br><br>
                                Se cubre un solo evento por la suma asegurada contratada. Aplica un deducible del 15%.<br><br>
                                La cobertura es efectiva 1 mes despu�s de la contrataci�n.<br><br>
                                <%if (intPlan == 2541 || intPlan == 2542 || intPlan == 2543) {%>
                                Se cubre un solo evento por la suma asegurada contratada.<br><br>
                                <%}%>
                                <%if (intPlan == 2544) {%>
                                * Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 2 eventos al a�o, con un intervalo de 2 meses entre eventos.</article>
                                <%}%>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Bienes M�viles</p>
                            <span><%=sumaRoboBienesMoviles%> MXN</span>
                            <%if (intPlan == 2544) {%>
                            <span style="font-size:12px; margin-top:2px;">(En 2 eventos de $5,000 pesos c/u)</span>
                            <%}%>
                            </button>
                        <div data-content>
                            <article>Robo de equipos electr�nicos fijos y/o port�tiles<br><br>

                                Se cubre el robo de equipos electr�nicos port�tiles mientras sean propiedades del asegurado o de terceros bajo el cuidado del asegurado al momento del robo.<br><br>
                                Se cubre un solo evento por la suma asegurada contratada. Aplica un deducible del 15%.<br><br>
                                La cobertura es efectiva 1 mes despu�s de la contrataci�n.<br><br>

                                Los equipos que se cubren son: C�maras de video / fotogr�ficas, Ipods, Consolas de video juegos, GPS, Tabletas / Ipad, Discos duros port�tiles, GoPro, Drones, Laptops, Notebooks y Discman.<br><br>
                                <%if (intPlan == 2541 || intPlan == 2542 || intPlan == 2543) {%>
                                Se cubre un solo evento por la suma asegurada contratada.<br><br>
                                <%}%>
                                <%if (intPlan == 2544) {%>
                                * Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 2 eventos al a�o, con un intervalo de 2 meses entre eventos.</article>
                                <%}%>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Documentos</p>
                            <span><%=sumaRoboDocumentos%> MXN</span></button>
                        <div data-content>
                            <article>Se cubren los gastos que se originen por el reemplazo de documentos personales a consecuencia de un robo, tales como: Pasaporte, Licencia de Conducir, c�dula profesional, T�tulos escolares, etc.<br><br>
                                Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 4 eventos al a�o, con un intervalo de 2 meses entre eventos.<br><br>
                                La cobertura es efectiva 1 mes despu�s de la contrataci�n.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control>
                            <p>Robo de Objetos Personales</p>
                            <span><%=sumaRoboObjetosPersonales%> MXN</span>
                             <%if (intPlan == 2544) {%>
                            <span style="font-size:12px; margin-top:2px;">(En 2 eventos de $6,000 pesos c/u)</span>
                            <%}%>
                            </button>
                        <div data-content>
                            <article>Se cubre el robo de objetos mientras sean propiedad del asegurado.<br><br>
                                Los objetos personales que se cubren son: objetos deportivos, cartera, bolsa, joyas, lentes, reloj, mochila, maleta, instrumentos musicales, calzado y abrigos o chamarras.<br><br>
                                La cobertura es efectiva 2 mes despu�s de la contrataci�n.<br><br>
                                <%if (intPlan == 2541 || intPlan == 2542 || intPlan == 2543) {%>
                                Se cubre un solo evento por la suma asegurada contratada. <br><br>
                                <%}%>
                                <%if (intPlan == 2544) {%>
                                * Se cubre hasta agotar la suma asegurada, con un l�mite m�ximo de 2 eventos al a�o, con un intervalo de 2 meses entre eventos.</article>
                                <%}%>
                        </div>
                    </section>

                    <h3>Principales Exclusiones:</h3>
                    <ol type="1" style="margin-left: 30px !important; width: 80% !important; margin-top:10px; line-height:20px;">
                        <li style="text-align:justify;">Uso fraudulento de los C�digos, Claves y/o NIP�s por parte del TITULAR o de las personas que civilmente dependan de �l.</li>
                        <li style="text-align:justify;">Pago de la anualidad de las Tarjetas Amparadas o la cuenta de Cheques.</li>
                        <li style="text-align:justify;">Fraudes cometidos despu�s de la notificaci�n de Bloqueo a la Instituci�n.</li>
                        <li style="text-align:justify;">Cuando los bienes cubiertos sean portados por un tercero al momento de la ocurrencia del evento.</li>
                        <li style="text-align:justify;">El Da�o Patrimonial sufrido a bienes distintos a los comprendidos en la definici�n de Bienes Cubiertos.</li>
                        <li style="text-align:justify;">Robo fuera del rango de horas estipulado en la car�tula de p�liza.</li>
                        <li style="text-align:justify;">Robo de efectivo que se derive de cualquier acontecimiento o Evento distinto a los expresamente se�alados en la cobertura de Robo de efectivo con cargo a las tarjetas amparadas.</li>
                    </ol>

                    <!--h3>Adem�s</h3>
                    <p>Tu seguro te incluye un completo <strong>Servicio de Asistencias</strong> que cubre:</p>
                    <p><strong>� Asistencia Legal:</strong> Se brindar� asesor�a legal en caso de robo de identidad, ya sea por extrav�o de estados de cuenta o transacciones en cuentas bancarias por Internet.</p>
                    <p><strong>� Asistencia Legal Telef�nica:</strong> Se asesorar� telef�nicamente sobre c�mo levantar denuncias ante a la autoridad.</p>
                    <p><strong>� Protecci�n Infocard:</strong> Se comunicar� con la instituci�n bancaria correspondiente para el bloqueo de tarjetas robadas o extraviadas.</p>
                    <p><strong>� Servicio de Taxi:</strong> En caso de robo o asalto, se podr� solicitar el servicio de taxi seguro. Limitado a un evento al a�o de hasta $150.00 MXP.</p>
                    <p><strong>� Robo de Tarjeta:</strong> Asesoramiento legal presencial para la realizaci�n de los tr�mites necesarios en caso de robo de tarjetas y uso forzado de la misma, derivado de un asalto.</p>
                    <p><strong>� Asistencia Legal Funeraria:</strong> Se brindar� asesor�a legal en los tr�mites derivados del fallecimiento del asegurado a consecuencia de asalto.</p>
                    <p><strong>� Asistencia Telef�nica para el Bloqueo de Celular:</strong> En caso de robo de celular, se comunicar� con la compa��a telef�nica correspondiente para el bloqueo del celular.</p>
                    <p><strong>� Asistencia M�dica Telef�nica:</strong> Se brindar� orientaci�n m�dica para enfermedades no graves, informaci�n general para el uso de medicamentos e informaci�n general acerca de salud p�blica y privada.</p>
                    <p><strong>� Consulta con m�dico general:</strong> Se coordinar� una cita con un m�dico general. Limitado a un evento al a�o de hasta $600.00 MXP. En caso de exceder el monto, este deber� ser cubierto por el asegurado.</p>
                    <p><strong>� Env�o de cerrajero para cambio de chapa:</strong> En caso de robo o asalto se enviar� un cerrajero al domicilio para el cambio de chapa. Limitado a un evento al a�o de hasta $500.00 MXP.</p>
                    <p><strong>� Referencias de hogar con costo preferencial:</strong> Se brindar� la informaci�n necesaria para la contrataci�n necesaria de cerrajeros, vidrieros, plomeros y electricistas que se encuentren cercanos a su domicilio.</p-->

                    <h3>Adem�s</h3>
                    <p>Tu seguro te incluye un completo <strong>Servicio de Asistencias</strong> que cubre:</p>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Legal</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se brindar� asesor�a legal en caso de robo de identidad, ya sea por extrav�o de estados de cuenta o transacciones en cuentas bancarias por Internet. </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Legal Telef�nica</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se asesorar� telef�nicamente sobre c�mo levantar denuncias ante a la autoridad.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Protecci�n Infocard</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se comunicar� con la instituci�n bancaria correspondiente para el bloqueo de tarjetas robadas o extraviadas. </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Servicio de Taxi</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>En caso de robo o asalto, se podr� solicitar el servicio de taxi seguro. Limitado a un evento al a�o de hasta $150.00 MXP. </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Robo de Tarjeta</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Asesoramiento legal presencial para la realizaci�n de los tr�mites necesarios en caso de robo de tarjetas y uso forzado de la misma, derivado de un asalto. </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Legal Funeraria</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se brindar� asesor�a legal en los tr�mites derivados del fallecimiento del asegurado a consecuencia de asalto. </article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia Telef�nica para el Bloqueo de Celular</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>En caso de robo de celular, se comunicar� con la compa��a telef�nica correspondiente para el bloqueo del celular.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Asistencia M�dica Telef�nica</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se brindar� orientaci�n m�dica para enfermedades no graves, informaci�n general para el uso de medicamentos e informaci�n general acerca de salud p�blica y privada.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Consulta con m�dico general</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se coordinar� una cita con un m�dico general. Limitado a un evento al a�o de hasta $600.00 MXP. En caso de exceder el monto, este deber� ser cubierto por el asegurado.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Env�o de cerrajero para cambio de chapa</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>En caso de robo o asalto se enviar� un cerrajero al domicilio para el cambio de chapa. Limitado a un evento al a�o de hasta $500.00 MXP.</article>
                        </div>
                    </section>
                    <section data-accordion>
                        <button data-control style="background: none;">
                            <p style="margin-left: 0 !important; width: 90% !important;">� Referencias de hogar con costo preferencial</p>
                            <span style="width: 10% !important;"></span></button>
                        <div data-content>
                            <article>Se brindar� la informaci�n necesaria para la contrataci�n necesaria de cerrajeros, vidrieros, plomeros y electricistas que se encuentren cercanos a su domicilio.</article>
                        </div>
                    </section>







                    <!--p>Los servicios de la Asistencia est�n <strong>disponibles las 24h, los 365 d�as del a�o</strong> en todo el territorio nacional. H�blanos siempre que nos necesites, estamos listos para atenderte.</p>
                    
                    <p><strong>Los servicios de asistencias son proporcionados por Allianz Assistance en caso de requerir alguno de �stos, comun�cate al <a href="tel:51773843" style="color:#434343;" target="_blank">5177 3843</a>.</strong></p-->

                </section>
                <!--end accordion--> 

            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">
                Los servicios de la Asistencia est�n <strong>disponibles las 24h, los 365 d�as del a�o</strong> en todo el territorio nacional. H�blanos siempre que nos necesites, estamos listos para atenderte.<br><br>
                Los servicios de asistencias son proporcionados por Allianz Assistance. En caso de requerir alguno de �stos, comun�cate al 5177 3843 o del interior de la Rep�blica al <a href="tel:018000014722" target="_blank">01 800 001 4722</a>.
            </div>
            <div class="redBanner2">
                <p>Te recordamos que cuentas con 48 horas para cancelar o revisar todo lo relacionado con tu seguro. Si as� lo decides, comun�cate al <a href="tel:018008012402" target="_blank">01 800 801 2402</a> de lunes a viernes de 8:30 a 21:00 horas donde con gusto te atenderemos.</p>
            </div>
            <div class="greyBG" style="margin-top: 20px; text-align: justify;">La informaci�n mostrada anteriormente solo es de car�cter informativo, para conocer las caracter�sticas particulares y el alcance de las coberturas de seguro y de los servicios de asistencias antes indicadas, consulta y descarga aqu� las Condiciones Generales del Seguro, el Clausulado General de las Asistencias y los Derechos del Asegurado.</div>
            <div style="text-align: center">
                <div class="btFotter2"><a href="download/condiciones_generales_seguro_vse.pdf" target="_blank">Condiciones Generales del Seguro</a></div>
                <div class="btFotter2"><a href="download/clausurado_general_de_asistencias_vse.pdf" target="_blank">Clausulado General de Asistencias</a></div>
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