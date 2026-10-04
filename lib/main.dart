import 'package:agenda/src/view/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Agenda());
}

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina el baner de depuración
      home: login(),
    );
  }
}
