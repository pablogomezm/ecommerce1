import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  final double size;

  const QuantitySelector({super.key, this.size = 32});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _quantity = 1;

  void decrease() {
    setState(() => _quantity--);
  }

  void increase() {
    setState(() => _quantity++);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _RoundButton(
          icon: Icons.remove,
          size: widget.size,
          onPressed: _quantity > 1 ? decrease : null,
        ),
        SizedBox(
          width: widget.size,
          child: Text(
            '$_quantity',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.size * 0.45,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
        ),
        _RoundButton(
          icon: Icons.add,
          size: widget.size,
          onPressed: increase,
        ),
      ],
    );
  }
}

class _RoundButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback? onPressed;

  const _RoundButton({
    required this.icon,
    required this.size,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDisabled = onPressed == null;

    return SizedBox(
      width: size,
      height: size,
      child: IconButton.outlined(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: isDisabled
              ? colorScheme.onSurface.withValues(alpha: 0.3)
              : colorScheme.primary,
        ),
      ),
    );
  }
}
