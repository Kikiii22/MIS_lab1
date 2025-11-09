import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/exam.dart';
import '../widgets/card.dart';

class ExamDetail extends StatelessWidget {
  final Exam exam;
  final String index;

  const ExamDetail({
    super.key,
    required this.exam, required this.index,
  });

  String timeUntilExam(Duration duration) {
    final int days = duration.inDays;
    final int hours = duration.inHours % 24;
    return '$days дена, $hours часа';
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final bool past = exam.dateTime.isBefore(now);
    final Duration difference = exam.dateTime.difference(now);

    return Scaffold(
      appBar: AppBar(
        title: Text('Распоред за испити-$index',style:  const TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExamCard(
              exam: exam,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Icon(Icons.hourglass_top, size: 24, color: Colors.blueGrey),
                const SizedBox(width: 8),
                Text(
                  past
                      ? 'Испитот заврши'
                      : 'Преостанато време: ${timeUntilExam(difference)}',
                  style: TextStyle(
                    fontSize: 18,
                    color: past ? Colors.pink.shade600 : Colors.pink.shade100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
