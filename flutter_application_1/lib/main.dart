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
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff137333),
          appBar: AppBar(
            toolbarHeight: 80,
            title: const Text(
              'Containers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Containers(
                icon: Icon(Icons.width_full_outlined),
                text: Text('Current Weight'),
                unit: Text(
                  '--kgs',
                  style: TextStyle(
                    color: Color(0xff898A8D),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Containers(
                icon: Icon(Icons.width_full_outlined),
                text: Text('Target Weight'),
                unit: Text(
                  '--kgs',
                  style: TextStyle(
                    color: Color(0xff898A8D),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Containers(
                icon: Icon(Icons.redeem),
                text: Text('Height'),
                unit: Text(
                  '--cm',
                  style: TextStyle(
                    color: Color(0xff898A8D),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class Containers extends StatelessWidget {
  const Containers(
      {super.key, required this.icon, required this.text, required this.unit});
  final Icon icon;
  final Text text;
  final Text unit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFFFFF),
          ),
          width: 315,
          height: 48,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 130,
                  height: 48,
                  color: const Color(0xffFFFFFF),
                  child: Row(
                    children: [
                      icon,
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: text,
                      ),
                    ],
                  ),
                ),
                unit,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
