import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final bool isPast = exam.dateTime.isBefore(DateTime.now());
    final Color backgroundColor = isPast ? Colors.pink.shade200 : Colors.pink.shade100;
    final Color borderColor = isPast ? Colors.pink.shade300 : Colors.pink.shade200;
    final String dateFormatted = DateFormat('dd.MM.yyyy').format(exam.dateTime);
    final String timeFormatted = DateFormat('HH:mm').format(exam.dateTime);
    final String roomsFormatted = exam.rooms.join(', ');
    final Color titleColor = isPast ? Colors.white : Colors.pink.shade600;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/details',
          arguments: exam,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        color: backgroundColor,
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exam.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 18, color: Colors.blueGrey),
                  const SizedBox(width: 6),
                  Text(
                    dateFormatted,
                    style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 18, color: Colors.blueGrey),
                  const SizedBox(width: 6),
                  Text(
                    timeFormatted,
                    style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.meeting_room, size: 18, color: Colors.blueGrey),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      roomsFormatted,
                      style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
