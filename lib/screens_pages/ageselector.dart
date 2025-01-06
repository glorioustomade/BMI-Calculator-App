import 'package:bmi_application/screens_pages/selectbtn.dart';
import 'package:flutter/material.dart';

class Ageselector extends StatefulWidget {
  const Ageselector({super.key});

  @override
  State<Ageselector> createState() => _AgeselectorState();
}

class _AgeselectorState extends State<Ageselector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Age',
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
            '15', 
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
