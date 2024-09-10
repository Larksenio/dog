import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo2.png', // Asegúrate de que el logo esté en esta ruta
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Bienvenido a DogWalker',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirmar Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre de usuario',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción cuando se presiona el botón de registro
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Registrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'O continua con',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/facebook.png', width: 40,  // Ajusta según la necesidad
              height: 40,),
                  iconSize: 10,
                  onPressed: () {
                    // Acción cuando se presiona el botón de Facebook
                  },
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Image.asset('assets/images/google.png', width: 40,  // Ajusta según la necesidad
                    height: 40,),
                  iconSize: 10,
                  onPressed: () {
                    // Acción cuando se presiona el botón de Google
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}