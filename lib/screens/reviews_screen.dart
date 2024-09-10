import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reseñas'),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ReviewCard(
            reviewerName: 'Johanna',
            reviewText: 'Mi perro estuvo súper bien cuidado, el paseador fue muy amable y las instalaciones estaban limpias y seguras. ¡Recomendado al 100%!',
            rating: 5,
          ),
          ReviewCard(
            reviewerName: 'Eduardo',
            reviewText: 'Buen servicio, 100% recomendado, mi perro regresó contento.',
            rating: 4,
          ),
          ReviewCard(
            reviewerName: 'María',
            reviewText: 'Fue un excelente servicio, mis mascotas se la pasaron genial. Sin duda volveré a utilizar este servicio en el futuro.',
            rating: 5,
          ),
          // Agrega más reseñas si es necesario
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción para escribir una nueva reseña
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown,
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String reviewerName;
  final String reviewText;
  final int rating;

  ReviewCard({required this.reviewerName, required this.reviewText, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(reviewerName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.yellow,
                );
              }),
            ),
            SizedBox(height: 10),
            Text(reviewText, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}