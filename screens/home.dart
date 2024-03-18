import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantalla de Inicio',
      home: HomeScreen(
          userEmail:
              'usuario@example.com'), // Cambia el correo según la autenticación
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String userEmail; // Correo electrónico del usuario (simulado)

  HomeScreen({required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Bienvenido!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Correo electrónico: $userEmail',
              style: const TextStyle(fontSize: 18),
            ),
            // Agrega más widgets según tus necesidades
          ],
        ),
      ),
    );
  }
}
