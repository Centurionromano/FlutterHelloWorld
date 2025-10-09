// Importa la librería principal de Flutter con widgets y temas visuales (Material Design)
import 'package:flutter/material.dart';

// Función principal: punto de entrada de toda aplicación en Dart
void main() {
  // runApp() ejecuta la aplicación y muestra el widget raíz (MyApp)
  runApp(const MyApp());
}

// Se define la clase MyApp, que es el widget principal de la aplicación
// Extiende StatelessWidget porque no guarda estado (no cambia dinámicamente)
class MyApp extends StatelessWidget {
  // Constructor de la clase, con super.key para identificación interna de Flutter
  const MyApp({super.key});

  // Método build: aquí se construye la interfaz visual de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Oculta el banner rojo que dice "debug" en la esquina superior derecha
      debugShowCheckedModeBanner: false,

      // Título de la aplicación (aparece en algunos dispositivos o en multitarea)
      title: 'Welcome to Flutter',

      // "home" define la pantalla principal que se mostrará al iniciar la app
      home: Scaffold(
        // Scaffold es la estructura base de una pantalla con barra superior, cuerpo, etc.
        
        // AppBar es la barra superior de la aplicación
        appBar: AppBar(
          // Texto que aparece como título en la barra superior
          title: const Text('Welcome to Flutter'),

          // Centra el título horizontalmente dentro del AppBar
          centerTitle: true,

          // Define el color de fondo de la barra superior
          backgroundColor: Colors.blueAccent,
        ),

        // "body" representa el cuerpo principal de la pantalla
        body: const Center(
          // Center centra su contenido tanto vertical como horizontalmente
          child: Text(
            // Texto que aparecerá en el centro de la pantalla
            'Hello World',

            // Propiedad que define el estilo del texto (en este caso, tamaño de fuente 24)
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

