import 'package:flutter/material.dart';
import 'package:dog_walker/screens/register_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo de la aplicación
            Text(
              'DogWalker',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Imagen que cubre solo una parte de la pantalla
            Container(
              height: 700, // Ajusta la altura según lo que necesites
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splash.jpg'), // Asegúrate de que la ruta sea correcta
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Botón de Ingresar
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/auth');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black38, // Color de fondo del botón
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Ingresar', style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            SizedBox(height: 10),
            // Botón de Registrarse
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text('Registrarse', style: TextStyle(color: Colors.black, fontSize: 16, decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
    );
  }
}