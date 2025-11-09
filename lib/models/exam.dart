
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
        dateTime: DateTime.now().subtract(const Duration(days: 5, hours: 2)),
        rooms: ['200АБ', '117'],
      ),
      Exam(
        name: 'Математика 2',
        dateTime: DateTime.now().add(const Duration(days: 2, hours: 3)),
        rooms: ['138'],
      ),
      Exam(
        name: 'Оперативни системи',
        dateTime: DateTime.now().add(const Duration(days: 10, hours: 1)),
        rooms: ['12', '13'],
      ),
      Exam(
        name: 'Компјутерски мрежи',
        dateTime: DateTime.now().subtract(const Duration(days: 1, hours: 4)),
        rooms: ['2'],
      ),
      Exam(
        name: 'Мобилни информациски системи',
        dateTime: DateTime.now().add(const Duration(days: 7)),
        rooms: ['3'],
      ),
      Exam(
        name: 'Дистрибуирани системи',
        dateTime: DateTime.now().add(const Duration(days: 15, hours: 2)),
        rooms: ['200В', '215'],
      ),
      Exam(
        name: 'Тимски проект',
        dateTime: DateTime.now().subtract(const Duration(days: 10)),
        rooms: ['215'],
      ),
      Exam(
        name: 'Професионални вештини',
        dateTime: DateTime.now().add(const Duration(days: 20, hours: 5)),
        rooms: ['117'],
      ),
      Exam(
        name: 'Алгоритми и податочни структури',
        dateTime: DateTime.now().add(const Duration(days: 1, hours: 1)),
        rooms: ['12', '13'],
      ),
      Exam(
        name: 'Структурно програмирање',
        dateTime: DateTime.now().subtract(const Duration(days: 3)),
        rooms: ['200АБ'],
      ),
      Exam(
        name: 'Економија за ИКТ инженери',
        dateTime: DateTime.now().add(const Duration(days: 12, hours: 4)),
        rooms: ['200В'],
      ),
    ];

    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));
    return exams;
  }
}
