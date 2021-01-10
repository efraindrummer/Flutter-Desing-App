import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estitloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estitloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
          ),
          Container(
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
          )
        ],
      )
    );
  }
}