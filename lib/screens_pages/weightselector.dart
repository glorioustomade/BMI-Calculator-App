import 'package:bmi_application/screens_pages/selectbtn.dart';
import 'package:flutter/material.dart';

class WeightSelector extends StatefulWidget {
  const WeightSelector({super.key});

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Weight',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '45', // Replace with dynamic data if needed
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           
           Selectbtn(
            onPress: () { },
            icon: Icons.add,
            ),
            Selectbtn(
            onPress: () { },
            icon: Icons.remove,
            ),
        ],
        )
      ],
    );
  }
}
