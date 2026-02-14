import 'package:flutter/material.dart';
import 'screen_b.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenB(),
              ),
            );
          },
          child: const Text('Ir a Pantalla B'),
        ),
      ),
    );
  }
}
