import 'package:flutter/material.dart';

class AddMinusCustom extends StatelessWidget {
  const AddMinusCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 30, maxWidth: 200),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(90)),
      child: const Row(
        children: [
          _IconButtonCustom(icon: Icons.remove_outlined),
          Text('1'),
          _IconButtonCustom(icon: Icons.add_outlined),
        ],
      ),
    );
  }
}

class _IconButtonCustom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const _IconButtonCustom({
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(2),
      icon: Icon(icon),
      color: Colors.lightGreen,
      style: const ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          backgroundColor: WidgetStatePropertyAll(Color(0xFF08A5C0))),
      onPressed: () {},
      iconSize: 15,
      constraints: const BoxConstraints(maxHeight: 35, maxWidth: 35),
    );
  }
}
