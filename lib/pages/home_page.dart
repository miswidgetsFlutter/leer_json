import 'package:flutter/material.dart';
import 'package:leer_json/providers/menu_provider.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("componentes"),
        ),
        body: _lista(), //hablamos a widget que creamos 
      ),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()

    //creamos "futureBLDR" te lo autocompleta
    return FutureBuilder(
      future: menuProvider.cargarData(), //hablamos al future con json
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          //hablamos a list y le pasamos los datos que recibio
          children: _listaItems(snapshot.data),
        );

      },
    );


  }
  //aqui recibimos los datos y indicamos que es lista dynamica
  List<Widget> _listaItems(List<dynamic> data) {

    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.airline_seat_flat_angled, color: Colors.blue),
        trailing: Icon(Icons.arrow_right, color: Colors.blue),
        onTap: (){},
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());

    });

    return opciones;
  
  }
}
