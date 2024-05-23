import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Widget Example'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            buildCard(
              title: 'Barcelona vs Real Madrid',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6gjsO3I3DtbfBFkuSoJXNhCZlWX-Mxf3Opaj5wbuq0vyGiYIo8GoT87BpsloGuqgXPcA&usqp=CAU',
              description: '¡No te pierdas el clásico del fútbol español entre dos de los equipos más grandes del mundo!',
            ),
            buildCard(
              title: 'Arsenal vs Porto',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ5_kmhWVZgOrkrsfkUoZKorhp-7X19upB2jUajx4tLN7xM35Q0WzyzZkLzefOoGMUA_E&usqp=CAU',
              description: 'Dos equipos con una historia emocionante se enfrentan en una batalla por la supremacía europea.',
            ),
            buildCard(
              title: 'Atletico Madrid vs Inter',
              imageUrl: 'https://m.media-amazon.com/images/S/pv-target-images/6d3a93095e13d6a33f11425ae14dd4004625f3319bed95a0c6f130ecb930e531._SX1080_FMjpg_.jpg',
              description: '¡Prepárate para un choque de titanes cuando el equipo español se enfrente al gigante italiano!',
            ),
            buildCard(
              title: 'PSG vs Bayern',
              imageUrl: 'https://www.wagerbop.com/wp-content/uploads/2020/08/psg-vs-Bayern.png',
              description: 'Revive la final de la Liga de Campeones de la UEFA en un enfrentamiento lleno de emoción y talento.',
            ),
            buildCard(
              title: 'Liverpool vs Chelsea',
              imageUrl: 'https://i2-prod.liverpoolecho.co.uk/incoming/article26036719.ece/ALTERNATES/s1200/1_LFCCHE.jpg',
              description: 'Dos equipos históricos de la Premier League se enfrentan en un duelo que promete grandes emociones y goles.',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required String title, required String imageUrl, required String description}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              imageUrl,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
