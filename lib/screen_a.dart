import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            context.push('/b');
          },
          child: const Text('Ir a Pantalla B'),
        ),
      ),
    );
  }
}
