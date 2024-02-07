import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    Color correctBackground = Colors.purpleAccent;
    Color correctIndexColor = const Color.fromARGB(255, 23, 34, 157);
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: summaryData.map(
            (data) {
              if (data['user_answer'] == data['correct_answer']) {
                correctBackground = const Color.fromARGB(255, 23, 34, 157);
                correctIndexColor = const Color.fromARGB(255, 95, 199, 199);
              } else {
                correctBackground = Colors.purpleAccent;
                correctIndexColor = const Color.fromARGB(255, 23, 34, 157);
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 25,
                    margin: const EdgeInsets.only(right: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: correctBackground,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lacquer().copyWith(
                        color: correctIndexColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style:
                              GoogleFonts.lato().copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String,
                            style: GoogleFonts.lato().copyWith(
                                color: const Color.fromARGB(255, 81, 51, 224))),
                        Text(data['correct_answer'] as String,
                            style: GoogleFonts.lato().copyWith(
                                color:
                                    const Color.fromARGB(255, 95, 199, 199))),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
