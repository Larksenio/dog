import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/user_type_selection_screen.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';
import 'screens/reviews_screen.dart';
import 'screens/register_screen.dart';

void main() {
  runApp(DogWalkerApp());
}

class DogWalkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DogWalker',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/auth': (context) => AuthScreen(),
        '/userTypeSelection': (context) => UserTypeSelectionScreen(),
        '/home': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/reviews': (context) => ReviewsScreen(),
      },
    );
  }
}