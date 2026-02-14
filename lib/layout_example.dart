import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Example')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hola'),

            // Row with two fixed-size boxes
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Fija', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Fija', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Row with Expanded: each child takes half the space
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.orange,
                    child: const Center(child: Text('flex: 1')),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'flex: 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Mixed row: one fixed box + one that takes the remaining space
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  child: const Center(
                    child: Text('Fija', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.teal,
                    child: const Center(child: Text('Ocupa el resto')),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Container with decoration example
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: const Text(
                'Container con padding, bordes redondeados y borde',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
