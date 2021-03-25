import 'package:pantalla_registro/src/pages/api_page.dart';
import 'package:pantalla_registro/src/pages/formulario_page.dart';
import 'package:pantalla_registro/src/pages/secondFormPage.dart';

import 'package:pantalla_registro/src/pages/billetera_page.dart';
import 'package:pantalla_registro/src/pages/fotos_page.dart';
import 'package:pantalla_registro/src/pages/home_page.dart';
import 'package:pantalla_registro/src/pages/lugares_page.dart';
import 'package:pantalla_registro/src/pages/mapa_page.dart';
import 'package:pantalla_registro/src/pages/podcast_page.dart';
//import 'package:app_prac/src/pages/botones_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'fotos': (BuildContext context) => FotosPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
  };
}
