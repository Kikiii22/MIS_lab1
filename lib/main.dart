import 'package:flutter/material.dart';
import 'package:mis_lab1/screens/details.dart';

import 'models/exam.dart';
import 'screens/list.dart';

void main() {
  runApp(const ExamScheduleApp());
}

class ExamScheduleApp extends StatelessWidget {
  static const String index = '222001';

  const ExamScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade100),
      ),
      home: const ExamList(index: index),
      onGenerateRoute: (settings) {
        if (settings.name == '/details') {
          final exam = settings.arguments as Exam;
          return MaterialPageRoute(
            builder: (context) => ExamDetail(exam: exam,index:index),
          );
        }
        return null;
      },
    );
  }
}