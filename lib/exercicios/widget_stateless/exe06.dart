import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp( // O MaterialApp precisa envolver o seu app
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Agora o MediaQuery vai funcionar porque existe um MaterialApp acima dele
    Orientation orientacao = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: const Text("Exercício Responsivo")),
      body: Center(
        child: orientacao == Orientation.portrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 100, height: 100, color: Colors.red),
                  const SizedBox(height: 20),
                  Container(width: 100, height: 100, color: Colors.blue),
                  const Text("MODO RETRATO (COLUMN)"),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 100, height: 100, color: Colors.red),
                  const SizedBox(width: 20),
                  Container(width: 100, height: 100, color: Colors.blue),
                  const Text("MODO PAISAGEM (ROW)"),
                ],
              ),
      ),
    );
  }
}