import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  void _signInWithEmailAndPassword(String email, String password) {
    //Lógica para manejar el inicio de sesión    
    if (email.isNotEmpty && password.isNotEmpty) { //Validación del correo y la contraseña
      print('Sign in with email: $email and password: $password');
      
    } else {
      print('Error: Email and password are required');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(color: Colors.white), // Color del texto blanco
          ),
          centerTitle: true, // Centrar el texto del título
          backgroundColor: Colors.blue[700], // Cambiar el color de fondo de la barra de aplicación
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration( // Cambiar el color de fondo del cuerpo
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[100]!, Colors.blue[200]!],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue[900], // Cambiar el color de fondo del avatar
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.white, // Cambiar el color de fondo del campo de texto
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white, // Cambiar el color de fondo del campo de texto
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _signInWithEmailAndPassword('example@example.com', 'password123');
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white), // Color del texto blanco
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[700], // Cambiar el color del botón
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
