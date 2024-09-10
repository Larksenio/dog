import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Paseador'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/dog_walker.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Jose Pedro',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Quito, Ecuador', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.verified, color: Colors.green, size: 30),
                Icon(Icons.pets, color: Colors.brown, size: 30),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para contactar ahora
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Contacta Ahora'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Hospedaje'),
                    subtitle: Text('5 reseñas'),
                  ),
                  ListTile(
                    title: Text('Guardería'),
                    subtitle: Text('3 reseñas'),
                  ),
                  // Agregar más servicios si es necesario
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}