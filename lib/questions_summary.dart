import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                bool isCorrect = data['user_answer'] == data['correct_answer'];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),

                        style: TextStyle(
                          fontSize: 15,
                          color: isCorrect ? Colors.green : Colors.red,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 218, 233, 255),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 253, 253, 253),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
