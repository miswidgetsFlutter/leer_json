import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _menuProvider {
  
  List<dynamic> opciones = [];

  //creamos el future que va a recibir el json
  Future <List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    //lo desconvertimos de formato json a mapa 
    Map dataMap = json.decode(resp);
    
    opciones = dataMap['rutas'];
  
    return opciones;
  
  }

}

final menuProvider = new _menuProvider();
