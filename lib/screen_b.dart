import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla B'),
      ),
      body: const Center(
        child: Text('Llegaste a la Pantalla B'),
      ),
    );
  }
}
