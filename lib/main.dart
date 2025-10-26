// Importa la librería principal de Flutter con widgets y temas visuales
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Básicos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Básicos en Flutter'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),

        // Cuerpo principal de la aplicación
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // --- WIDGET TEXT ---
              const Text(
                'Este es un widget de texto (Text)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // --- WIDGET ROW ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 40),
                  Text('Fila con íconos y texto', style: TextStyle(fontSize: 18)),
                 Icon(Icons.star, color: Colors.amber, size: 40),
                ],
              ),

              const SizedBox(height: 20),

              // --- WIDGET COLUMN ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Columna con varios textos:', style: TextStyle(fontSize: 18)),
                  Text('- Texto 1'),
                  Text('- Texto 2'),
                  Text('- Texto 3'),
                ],
              ),

              const SizedBox(height: 20),

              // --- WIDGET STACK ---
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.lightBlueAccent,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  ),
                  const Text(
                    'Stack',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // --- WIDGET CONTAINER ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: const Text(
                  'Este es un Container con color, borde y padding',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

