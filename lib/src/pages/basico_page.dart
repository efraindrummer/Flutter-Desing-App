import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estitloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estitloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Las montañas en un atardecer', style: estitloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Esto es un hermoso', style: estitloSubtitulo,),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon, String texto){

    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }

  Widget _crearTexto(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Dolore amet dolor aliquip consequat id sunt laboris velit. Sint magna do magna in eu voluptate ex. Do do amet ipsum amet adipisicing Lorem consequat enim labore id esse. Culpa qui culpa culpa culpa do consectetur. Qui anim sint amet nulla ex.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}