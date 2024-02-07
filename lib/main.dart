import 'package:adv_basics/gradient_container.dart';
import 'package:adv_basics/quiz.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Quiz());
}

// My implementation
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: GradientContainer(
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   'assets/images/quiz-logo.png',
//                   width: 200,
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Text(
//                   'Learn Flutter the fun way!',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateColor.resolveWith(
//                           (states) => const Color.fromARGB(255, 26, 2, 80))),
//                   child: const Text('Start Quiz'),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
