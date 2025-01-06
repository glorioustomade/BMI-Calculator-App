import 'package:flutter/material.dart';

class Selectbtn extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;

  const Selectbtn({super.key, required this.onPress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary, 
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8), 
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.onPrimary, 
          size: 30, 
        ),
      ),
    );
  }
}
