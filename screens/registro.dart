import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _phone;
  String? _password;

  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      // Datos válidos, muestra en consola
      print('Nombre: $_name');
      print('Correo: $_email');
      print('Correo: $_phone');
      print('Contraseña: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario de Registro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, ingresa tu nombre';
                    }
                    return null;
                  },
                  onSaved: (value) => _name,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Correo'),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Ingresa un correo válido';
                    }
                    return null;
                  },
                  onSaved: (value) => _email = value,
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Numero de Cuenta'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, ingresa tu teléfono';
                    }
                    return null;
                  },
                  onSaved: (value) => _phone = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Contraseña'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'La contraseña debe tener al menos 6 caracteres';
                    }
                    return null;
                  },
                  onSaved: (value) => _password = value,
                ),
                ElevatedButton(
                  onPressed: _registerUser,
                  child: const Text('Registrarse'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
