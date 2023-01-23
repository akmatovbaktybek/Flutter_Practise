import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA3AEB4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectedCotainer(
                titleText: 'Beginner',
                mainText: '0-6',
                onTap: () {},
              ),
              SelectedCotainer(
                titleText: 'Intermediate',
                mainText: '6-18',
                onTap: () {},
              ),
              SelectedCotainer(
                titleText: 'Advanced',
                mainText: '18+',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectedCotainer extends StatefulWidget {
  const SelectedCotainer({
    Key? key,
    required this.titleText,
    required this.mainText,
    required this.onTap,
  }) : super(key: key);

  @override
  State<SelectedCotainer> createState() => _SelectedCotainerState();

  final String titleText;
  final String mainText;
  final Function() onTap;
}

bool isSelected = false;

Color selectedColor() {
  if (isSelected) {
    return const Color(0xff5EE0B1);
  } else {
    return Colors.white;
  }
}

class _SelectedCotainerState extends State<SelectedCotainer> {
  @override
  Widget build(BuildContext context) {
    Color borderColor = selectedColor();
    return InkWell(
      onTap: () {
        widget.onTap;
        isSelected = !isSelected;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: borderColor,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(10)),
          width: 120,
          height: 110,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 18),
            child: Column(
              children: [
                Text(
                  widget.titleText,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.mainText,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'months',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
