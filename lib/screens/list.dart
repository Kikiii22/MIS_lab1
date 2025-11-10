import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/card.dart';

class ExamList extends StatelessWidget {
  final String index;

  const ExamList({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final List<Exam> exams = Exam.getHardcodedExams();

    return Scaffold(
      appBar: AppBar(
        title: Text('Распоред за испити-$index',style: const TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.only(bottom: 100,top: 20),
            itemCount: exams.length,
            itemBuilder: (context, index) {
              final Exam exam = exams[index];
              return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ExamCard(
                    exam: exam,
                  ),
              );
            },
          ),
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.pink.shade300,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.shade100,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  'Вкупно испити: ${exams.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
