import 'package:bmi_application/screens_pages/ageselector.dart';
import 'package:bmi_application/screens_pages/heightselector.dart';
import 'package:bmi_application/screens_pages/weightselector.dart';
import 'package:bmi_application/things/promarybuton.dart';
import 'package:flutter/material.dart';

class Homepagescreen extends StatefulWidget {
  const Homepagescreen({super.key});

  @override
  State<Homepagescreen> createState() => _HomepagescreenState();
}

class _HomepagescreenState extends State<Homepagescreen> {
  bool isMale = true;
  double height = 170.0; // in cm
  int weight = 70; // in kg
  int age = 23;

  void calculateBMI() {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    String bmiStatus;
    if (bmi < 18.5) {
      bmiStatus = 'Underweight';
    } else if (bmi < 25) {
      bmiStatus = 'Normal';
    } else if (bmi < 30) {
      bmiStatus = 'Overweight';
    } else {
      bmiStatus = 'Obese';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(bmi: bmi, status: bmiStatus),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'BMI Calculator',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 20),

              // Gender Selection Buttons
              Row(
                children: [
                  Expanded(
                    child: PrimaryButon(
                      icon: Icons.male,
                      btnName: 'MALE',
                      onPress: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: PrimaryButon(
                      icon: Icons.female,
                      btnName: 'FEMALE',
                      onPress: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // Height Selector and Age & Weight Selector Row
              Row(
                children: [
                  // Height Selector
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 507,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: HeightSelector(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Age and Weight Selector in a Column
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        // Weight Selector
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: WeightSelector()),
                        ),
                        const SizedBox(height: 10),
                        // Age Selector
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Ageselector()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // "Let's Go" Button
              PrimaryButon(
                onPress: calculateBMI,
                icon: Icons.done,
                btnName: 'Lets Go',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ResultPage extends StatelessWidget {
  final double bmi;
  final String status;

  const ResultPage({super.key, required this.bmi, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI: ${bmi.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Status: $status',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
