import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  HeightSelectorState createState() => HeightSelectorState();
}

class HeightSelectorState extends State<HeightSelector> {
  double _value = 290.0; // Initial value of the slider

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Label Text
          Text(
            'Height',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 10),

          // Vertical Slider with Expanded to fill available space
          Expanded(
            child: SfSlider.vertical(
              min: 100.0,
              max: 500.0,
              value: _value,
              interval: 50,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),

          const SizedBox(height: 10),

          // Display the selected height
          Text(
            '${_value.toInt()} cm',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
