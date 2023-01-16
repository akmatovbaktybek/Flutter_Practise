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
            Containers(
                icon: Icons.back_hand_outlined,
                text: 'Current Weight',
                unit: '--cms'),
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

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// TextEditingController controllerLogin = TextEditingController();
// TextEditingController controllerPassword = TextEditingController();
// String title = 'Вход';

// List<String> logins = ['Login'];
// List<String> passwords = ['Password'];
// String text = '';
// String? errorText;

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Вход'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Введите логин и пароль'),
//               const SizedBox(
//                 height: 20,
//               ),
//               CustumTextField(
//                   isPassword: false,
//                   controller: controllerLogin,
//                   errorText: errorText,
//                   hintText: 'Введите логин'),
//               const SizedBox(
//                 height: 20,
//               ),
//               CustumTextField(
//                   isPassword: true,
//                   controller: controllerPassword,
//                   errorText: errorText,
//                   hintText: 'Введите пароль'),
//               ElevatedButton(
//                 onPressed: () {
//                   if (logins.contains(controllerLogin.text) &&
//                       passwords.contains(controllerPassword.text)) {
//                     text = 'Успешно';
//                   } else {
//                     errorText = 'Неверный логин или пароль';
//                   }
//                   setState(
//                     () {},
//                   );
//                 },
//                 child: Text(title),
//               ),
//               Text(text),
//               GestureDetector(
//                 onTapDown: (_) {
//                   print('down');
//                 },
//                 onTapUp: (_) {
//                   print('up');
//                 },
//                 onTap: () {
//                   print('object');
//                 },
//                 child: const Containers(
//                   icon: Icons.abc,
//                   text: 'Text',
//                   unit: 'jgs',
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controllerLogin.dispose();
//     controllerPassword.dispose();
//     super.dispose();
//   }
// }

// class CustumTextField extends StatelessWidget {
//   const CustumTextField({
//     Key? key,
//     required this.isPassword,
//     required this.controller,
//     required this.errorText,
//     required this.hintText,
//   }) : super(key: key);

//   final bool isPassword;
//   final TextEditingController controller;
//   final String? errorText;
//   final String hintText;
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: isPassword,
//       obscuringCharacter: '*',
//       controller: controller,
//       decoration: InputDecoration(
//         errorText: errorText,
//         hintText: hintText,
//         border: const OutlineInputBorder(),
//         focusedBorder: const OutlineInputBorder(),
//       ),
//     );
//   }
// }

class Containers extends StatelessWidget {
  const Containers(
      {super.key, required this.icon, required this.text, required this.unit});
  final IconData icon;
  final String text;
  final String unit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: double.infinity,
        height: 48,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: 20,
              ),
              Text(text),
              const Spacer(),
              Text(unit),
            ],
          ),
        ),
      ),
    );
  }
}
