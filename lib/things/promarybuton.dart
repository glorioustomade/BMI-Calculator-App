import 'package:flutter/material.dart';

class PrimaryButon extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;

  const PrimaryButon({
    super.key,
    required this.icon,
    required this.btnName, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),  
          color: Theme.of(context).colorScheme.primary,
        ),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            const SizedBox(width: 8),
            Text(
              btnName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
