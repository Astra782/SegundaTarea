import 'package:flutter/material.dart';
import 'package:loginpantallas/routes/my_routes.dart';
//import 'package:loginpantallas/screens/registro.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Validación de credenciales:
    if (email == 'tu_correo@institucion.com' &&
        password == 'tu_numero_de_cuenta') {
      Navigator.pushReplacementNamed(
          context, Myroutes.home.name); // Redirigir a la pantalla de inicio
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Credenciales incorrectas. Inténtalo de nuevo.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio de Sesión')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration:
                  const InputDecoration(labelText: 'Correo Institucional'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Contraseña'),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.home.name);
              },
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navegar a la pantalla de registro
                Navigator.pushNamed(context, Myroutes.registro.name);
              },
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
