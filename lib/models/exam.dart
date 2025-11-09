
class Exam {
  final String name;
  final DateTime dateTime;
  final List<String> rooms;

  Exam({
    required this.name,
    required this.dateTime,
    required this.rooms,
  });

  static List<Exam> getHardcodedExams() {
    final List<Exam> exams = [
      Exam(
        name: 'Математика 1',
        dateTime: DateTime(2025, 12, 1, 9, 0),
        rooms: ['200АБ', '117'],
      ),
      Exam(
        name: 'Математика 2',
        dateTime: DateTime(2025, 10, 13, 8, 0),
        rooms: ['138'],
      ),
      Exam(
        name: 'Оперативни системи',
        dateTime: DateTime(2025, 11, 11, 11, 0),
        rooms: ['12', '13'],
      ),
      Exam(
        name: 'Компјутерски мрежи',
        dateTime: DateTime(2025, 10, 11, 14, 30),
        rooms: ['2'],
      ),
      Exam(
        name: 'Мобилни информациски системи',
        dateTime: DateTime(2025, 09, 01, 19, 0),
        rooms: ['3'],
      ),
      Exam(
        name: 'Дистрибуирани системи',
        dateTime: DateTime(2025, 11, 18, 8, 0),
        rooms: ['200В', '215'],
      ),
      Exam(
        name: 'Тимски проект',
        dateTime: DateTime(2025, 10, 29, 12, 0),
        rooms: ['215'],
      ),
      Exam(
        name: 'Професионални вештини',
        dateTime: DateTime(2025, 12, 11, 13, 0),
        rooms: ['117'],
      ),
      Exam(
        name: 'Алгоритми и податочни структури',
        dateTime: DateTime(2025, 12, 05, 15, 0),
        rooms: ['12', '13'],
      ),
      Exam(
        name: 'Структурно програмирање',
        dateTime: DateTime(2025, 11, 11, 10, 0),
        rooms: ['200АБ'],
      ),
      Exam(
        name: 'Економија за ИКТ инженери',
        dateTime: DateTime(2025, 12, 17, 17, 0),
        rooms: ['200В'],
      ),
    ];

    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));
    return exams;
  }
}
