import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE1E1E1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Containers(
                icon: Icons.ac_unit, text: 'Current Weight', unit: '--kgs'),
            SizedBox(
              height: 30,
            ),
            Containers(
                icon: Icons.back_hand_outlined,
                text: 'Current Weight',
                unit: '--cms'),
            SizedBox(
              height: 30,
            ),
            Containers(
                icon: Icons.bar_chart,
                text: 'Current Weight',
                unit: '--hlijk;kgs'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class Containers extends StatefulWidget {
  const Containers(
      {super.key, required this.icon, required this.text, required this.unit});
  final IconData icon;
  final String text;
  final String unit;

  @override
  State<Containers> createState() => _ContainersState();
}

double spreadRadius = 7;
double blurRadius = 18;

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        spreadRadius = 7;
        blurRadius = 18;
        setState(() {});
      },
      onTapDown: (_) {
        spreadRadius = 0;
        blurRadius = 0;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              spreadRadius: spreadRadius,
              blurRadius: blurRadius,
              color: const Color.fromRGBO(0, 0, 0, 1),
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: double.infinity,
        height: 48,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Icon(widget.icon),
              const SizedBox(
                width: 20,
              ),
              Text(widget.text),
              const Spacer(),
              Text(widget.unit),
            ],
          ),
        ),
      ),
    );
  }
}
