<%@page import="java.util.*, java.io.*" errorPage="../errorRedirect.jsp" %><% response.setHeader("X-Frame-Options", "SAMEORIGIN"); %><%

    String codigo = request.getParameter("codigo");
    List<String> valores = new ArrayList<String>();
    List<String> ingresos = new ArrayList<String>();
    List<String> valoresSegurosExclusiones = new ArrayList<String>();
    List<String> valoresAccidentesPersonalesBajio = new ArrayList<String>();
    List<String> valoresFraudeRoboBajio = new ArrayList<String>();
	List<String> valoraScotiabank = new ArrayList<String>();
	List<String> momentosScotiabank = new ArrayList<String>();
    List<String> valoraR2 = new ArrayList<String>();
    List<String> momentosR2 = new ArrayList<String>();    
    List<String> ingresosMasSeguros = new ArrayList<String>();
    List<String> ingresosMasSeguros0720 = new ArrayList<String>();
    List<String> valoresMasSeguros = new ArrayList<String>();
    List<String> valoresMasSeguros0720 = new ArrayList<String>();
    List<String> enfermedadesGraves = new ArrayList<String>(); 
    List<String> plenitudScotiabank = new ArrayList<String>();
    List<String> vitalEscencial = new ArrayList<String>();
    List<String> vitalEscencial2 = new ArrayList<String>();
    List<String> gapScotiabank = new ArrayList<String>();
    List<String> cuidadosEsencial = new ArrayList<String>();
    List<String> cuidadosEsencial2 = new ArrayList<String>();
    List<String> autoValorFactura = new ArrayList<String>();
    List<String> desempleoFormales = new ArrayList<String>();
    List<String> desempleoIndependientes = new ArrayList<String>();
    List<String> proteccionFinancieraElemental = new ArrayList<String>();
    List<String> segurogastosmedicos = new ArrayList<String>();
    List<String> segurodevida = new ArrayList<String>();

    valores.add("2511");
    valores.add("2512");
    valores.add("2513");
    valores.add("2514");

    ingresos.add("2521");
    ingresos.add("2522");
    ingresos.add("2523");
    ingresos.add("2531");
    ingresos.add("2532");
    ingresos.add("2533");
    ingresos.add("2534");
    ingresos.add("2535");
    ingresos.add("2536");
    ingresos.add("2537");
    ingresos.add("2538");
    
    ingresos.add("2551");
    ingresos.add("2552");
    ingresos.add("2553");
    ingresos.add("2554");
    ingresos.add("2555");
    ingresos.add("2556");
    ingresos.add("2557");
    ingresos.add("2558");
    
    valoresSegurosExclusiones.add("2541");
    valoresSegurosExclusiones.add("2542");
    valoresSegurosExclusiones.add("2543");
    valoresSegurosExclusiones.add("2544");
    valoresSegurosExclusiones.add("2545");
    
    valoresSegurosExclusiones.add("2571");
    valoresSegurosExclusiones.add("2572");
    valoresSegurosExclusiones.add("2573");
    valoresSegurosExclusiones.add("2574");
    valoresSegurosExclusiones.add("2575");
    
    valoresAccidentesPersonalesBajio.add("2610");
    valoresAccidentesPersonalesBajio.add("2611");
    valoresAccidentesPersonalesBajio.add("2612");
    valoresAccidentesPersonalesBajio.add("2613");
    
    valoresFraudeRoboBajio.add("2620");
    valoresFraudeRoboBajio.add("2621");
    valoresFraudeRoboBajio.add("2622");
	
	valoraScotiabank.add("2591");
    valoraScotiabank.add("2592");
	valoraScotiabank.add("2593");

    valoraR2.add("2565");
    valoraR2.add("2566");
    valoraR2.add("2567");
	
	momentosScotiabank.add("2581");
    momentosScotiabank.add("2582");
	momentosScotiabank.add("2583");

    momentosR2.add("2560");
    momentosR2.add("2561");
    momentosR2.add("2562");    

    ingresosMasSeguros.add("2586");
    ingresosMasSeguros.add("2587");
    ingresosMasSeguros.add("2588");

    ingresosMasSeguros0720.add("2505");
    ingresosMasSeguros0720.add("2506");
    ingresosMasSeguros0720.add("2507");

    valoresMasSeguros.add("2596");
    valoresMasSeguros.add("2597");
    valoresMasSeguros.add("2598");

    valoresMasSeguros0720.add("2515");
    valoresMasSeguros0720.add("2516");
    valoresMasSeguros0720.add("2517");

    enfermedadesGraves.add("2630");
    enfermedadesGraves.add("2631");
    enfermedadesGraves.add("2632");

    plenitudScotiabank.add("2568");
    plenitudScotiabank.add("2569");
    plenitudScotiabank.add("2570");

    vitalEscencial.add("2500");
    vitalEscencial.add("2501");
    vitalEscencial.add("2502");

    vitalEscencial2.add("2510");
    vitalEscencial2.add("2520");
    vitalEscencial2.add("2530");

    gapScotiabank.add("2576");
    gapScotiabank.add("2577");
    gapScotiabank.add("2578");
    gapScotiabank.add("2579");    
    gapScotiabank.add("2580");
    gapScotiabank.add("2584");
    gapScotiabank.add("2585");
    gapScotiabank.add("2589");
    gapScotiabank.add("2590");

    cuidadosEsencial.add("2546");
    cuidadosEsencial.add("2547");
    cuidadosEsencial.add("2548");

    cuidadosEsencial2.add("2549");
    cuidadosEsencial2.add("2550");
    cuidadosEsencial2.add("2451");

    autoValorFactura.add("3112");
    autoValorFactura.add("3113");
    autoValorFactura.add("3114");
    autoValorFactura.add("3115");
    autoValorFactura.add("3116");
    autoValorFactura.add("3117");
    autoValorFactura.add("3118");
    autoValorFactura.add("3119");
    autoValorFactura.add("3120");
    autoValorFactura.add("3121");
    autoValorFactura.add("3122");
    autoValorFactura.add("3123");
    autoValorFactura.add("3124");
    autoValorFactura.add("3125");
    autoValorFactura.add("3126");
    autoValorFactura.add("3127");
    autoValorFactura.add("3128");
    autoValorFactura.add("3129");

    desempleoFormales.add("3024");
    desempleoFormales.add("3025");
    desempleoFormales.add("3026");
    desempleoFormales.add("3027");
    desempleoFormales.add("3028");
    desempleoFormales.add("3029");
    desempleoFormales.add("3030");
    desempleoFormales.add("3031");
    desempleoFormales.add("3032");
    desempleoFormales.add("3033");
    desempleoFormales.add("3034");
    desempleoFormales.add("3035");
    desempleoFormales.add("3036");
    desempleoFormales.add("3037");
    desempleoFormales.add("3038");
    desempleoFormales.add("3039");
    desempleoFormales.add("3040");
    desempleoFormales.add("3041");
    desempleoFormales.add("3042");
    desempleoFormales.add("3043");
    desempleoFormales.add("3044");
    desempleoFormales.add("3045");
    desempleoFormales.add("3046");
    desempleoFormales.add("3047");

    desempleoIndependientes.add("3048");
    desempleoIndependientes.add("3049");
    desempleoIndependientes.add("3050");
    desempleoIndependientes.add("3051");
    desempleoIndependientes.add("3052");
    desempleoIndependientes.add("3053");
    desempleoIndependientes.add("3054");
    desempleoIndependientes.add("3055");
    desempleoIndependientes.add("3056");
    desempleoIndependientes.add("3057");
    desempleoIndependientes.add("3058");
    desempleoIndependientes.add("3059");
    desempleoIndependientes.add("3060");
    desempleoIndependientes.add("3061");
    desempleoIndependientes.add("3062");
    desempleoIndependientes.add("3063");
    desempleoIndependientes.add("3064");
    desempleoIndependientes.add("3065");
    desempleoIndependientes.add("3066");
    desempleoIndependientes.add("3067");
    desempleoIndependientes.add("3068");
    desempleoIndependientes.add("3069");
    desempleoIndependientes.add("3070");
    desempleoIndependientes.add("3071");

    proteccionFinancieraElemental.add("3072");

    segurogastosmedicos.add("2960");
    segurogastosmedicos.add("2961");
    segurogastosmedicos.add("2962");
    segurogastosmedicos.add("2963");
    segurogastosmedicos.add("2964");
    segurogastosmedicos.add("2965");
    segurogastosmedicos.add("2966");
    segurogastosmedicos.add("2967");
    segurogastosmedicos.add("2968");
    segurogastosmedicos.add("2969");
    segurogastosmedicos.add("2970");
    segurogastosmedicos.add("2971");
    segurogastosmedicos.add("2972");
    segurogastosmedicos.add("2973");
    segurogastosmedicos.add("2974");
    segurogastosmedicos.add("2975");
    segurogastosmedicos.add("2976");
    segurogastosmedicos.add("2977");
    segurogastosmedicos.add("2978");
    segurogastosmedicos.add("2979");
    

    segurodevida.add("3073");
    segurodevida.add("3074");
    segurodevida.add("3075");
    segurodevida.add("3076");
    segurodevida.add("3077");
    segurodevida.add("3078");
    segurodevida.add("3079");
    segurodevida.add("3080");
    segurodevida.add("3081");
    segurodevida.add("3082");
    segurodevida.add("3083");
    segurodevida.add("3084");
    
    

    final String accidentesPersonales = "2601";
    final String vida = "2640";
    final String vidaMA = "3160";
    final String carteraProtegida = "2603";
    final String fraude = "2602";

    if (valores.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("valores-seguros.jsp");
    } else if (ingresos.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("ingresos-seguros.jsp");
    } else if (accidentesPersonales.equals(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("accidentes-banbajio.jsp");
    } else if (vida.equals(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("vida-banbajio.jsp");
    } else if (vidaMA.equals(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("muerteAccidental-banbajio.jsp");
    } else if (valoresSegurosExclusiones.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("valores-seguros-exclusiones.jsp");
    } else if (carteraProtegida.equals(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("carteraprotegida-banbajio.jsp");
    } else if (fraude.equals(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("fraude.jsp");
    } else if( valoresAccidentesPersonalesBajio.contains(codigo) ){
        session.setAttribute("usuarioLogin", codigo);
        out.print("accidentes_personales_banbajio.jsp");    
    }else if( valoresFraudeRoboBajio.contains(codigo)){
        session.setAttribute("usuarioLogin", codigo);
        out.print("fraude_banbajio.jsp");    
    } else if (valoraScotiabank.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("valora-scotiabank.jsp");
    } else if (momentosScotiabank.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("momentos-scotiabank.jsp");
    }else if (valoraR2.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("valora-r2.jsp");
    } else if (momentosR2.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("momentos-r2.jsp");
    }else if (ingresosMasSeguros.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("ingresos-mas-seguros.jsp");
    }else if (ingresosMasSeguros0720.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("ingresos_mas_seguros.jsp");
    }else if (valoresMasSeguros.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("valores-mas-seguros.jsp");
    }else if (valoresMasSeguros0720.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("valores_mas_seguros.jsp");
    }else if (enfermedadesGraves.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("enfermedades_graves_banbajio.jsp");
    }else if (plenitudScotiabank.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("plenitud_scotiabank.jsp");
    }else if (vitalEscencial.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("vital_esencial.jsp");
    }else if (vitalEscencial2.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("vital_esencial2.jsp");
    }else if (gapScotiabank.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("auto_valor.jsp");
    }else if (cuidadosEsencial.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("cuidadosEsencial.jsp");
    }else if (cuidadosEsencial2.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("cuidadosEsencial2.jsp");
    }else if (autoValorFactura.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("auto_valor_factura.jsp");
    }else if (desempleoFormales.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("desempleoFormales.jsp");
    }else if (desempleoIndependientes.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("desempleoIndependientes.jsp");
    }else if (proteccionFinancieraElemental.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("proteccion_financiera_elemental.jsp");
    }else if (segurogastosmedicos.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("gastos_medicos.jsp");
    }else if (segurodevida.contains(codigo)) {
        session.setAttribute("usuarioLogin", codigo);
        out.print("seguro_de_vida.jsp");
    }
    else{
        StringBuffer errorsXML = new StringBuffer();
        errorsXML.append("<?xml version='1.0' encoding='UTF-8'?>");
        errorsXML.append("<errors>");
        //errorsXML.append("<invalid_login/>");
        errorsXML.append("<error_general/>");
        errorsXML.append("</errors>");
        response.setContentType("text/xml; charset=UTF-8");
        response.getWriter().write(errorsXML.toString());
    }
%>