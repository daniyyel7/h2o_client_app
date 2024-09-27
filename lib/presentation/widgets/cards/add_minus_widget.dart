import 'package:flutter/material.dart';

class AddMinusCustom extends StatelessWidget {
  const AddMinusCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          minHeight: 35, maxHeight: 37, minWidth: 110, maxWidth: 115),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(45)),
      child: const Row(
        children: [
          IconButtonCustom(icon: Icons.remove_outlined),
          SizedBox(
            width: 5,
          ),
          Text('1'),
          SizedBox(
            width: 5,
          ),
          IconButtonCustom(
            icon: Icons.add_outlined
          ),
        ],
      ),
    );
  }
}

class IconButtonCustom extends StatelessWidget {
    final IconData icon;
    final VoidCallback? onPressed;

  const IconButtonCustom({
    super.key,
    required this.icon,
    this.onPressed,
  });
 

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(7),
      icon: Icon(icon),
      color: Colors.lightGreen,
      style: const ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          backgroundColor: WidgetStatePropertyAll(Color(0xFF08A5C0))),
      onPressed: () {},
      iconSize: 9,
      constraints: const BoxConstraints(
          minHeight: 20, minWidth: 20, maxHeight: 40, maxWidth: 40),
    );
  }
}
