/*

import 'package:flutter/material.dart';
import 'package:pantalla_registro/models/gif_model.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({Key key}) : super(key: key);

  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  Future<List<Gif>> _listaGifs;

  Future<List<Gif>> _obtenerGifs() async {
    final response = await http.get(
        'https://api.giphy.com/v1/gifs/trending?api_key=Y8MipQfAXjHAeMIko6olAhRqFZ63A25b&limit=10&rating=g');
    if (response == 200) {
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('llamada a API'),
      ),
      body: Center(child: Text('API call')),
    );
  }
}
*/
