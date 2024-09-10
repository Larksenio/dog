import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen en la parte superior
            Image.asset(
              'assets/images/logo1.png', // Reemplaza con la ruta de tu imagen
              width: double.infinity, // Hace que la imagen ocupe todo el ancho
              height: 100.0, // Altura de la imagen
              fit: BoxFit.cover, // Ajusta la imagen para que cubra el espacio disponible
            ),
            SizedBox(height: 5),
            Image.asset(
              'assets/images/ralfs.png', // Reemplaza con la ruta de tu imagen
              width: double.infinity, // Hace que la imagen ocupe todo el ancho
              height: 400.0, // Altura de la imagen
              fit: BoxFit.cover, // Ajusta la imagen para que cubra el espacio disponible
            ),

            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de solicitud de servicios
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black12,
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('Obtenga un 20% de descuento por cada quinta reserva', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ServiceCard(
                    title: 'Alojamiento',
                    icon: Icons.home,
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                  ServiceCard(
                    title: 'Guardería',
                    icon: Icons.pets,
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                  ServiceCard(
                    title: 'Entrenamiento',
                    icon: Icons.directions_run,
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                  ServiceCard(
                    title: 'Peluquería',
                    icon: Icons.cut,
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                  ServiceCard(
                    title: 'Paseo',
                    icon: Icons.directions_walk,
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                  ServiceCard(
                    title: 'Transporte',
                    icon: Icons.directions_car,
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Reservas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: 0, // Cambiar esto basado en la selección actual
        selectedItemColor: Colors.brown,
        onTap: (index) {
          // Cambiar la pantalla en base al índice seleccionado
        },
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  ServiceCard({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
        width: 120.0, // Ajusta el ancho del botón
        height: 120.0, // Ajusta la altura del botónchild
          child:Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 50, color: Colors.brown),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
    );
  }
}