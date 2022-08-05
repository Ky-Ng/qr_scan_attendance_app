class StudentData {
  static Map data = {
    'Name': 'Alicia Li',
    'Classes': 5,
    'Date': '08/12/22',
    'Phone': '5107706008',
    'Email': 'lkf@gmail.com'
  };
  static List<Student> studentList = [
    Student(
        name: 'Alicia Li',
        classes: 5,
        date: '08/12/2022',
        phone: '5107706008',
        email: 'lkf@lkf.com'),
    Student(
        name: 'Alex Li',
        classes: 5,
        date: '08/12/2022',
        phone: '5107706008',
        email: 'lkf@lkf.com'),
    Student(
        name: 'Zheng Li',
        classes: 5,
        date: '08/12/2022',
        phone: '5107706008',
        email: 'lkf@lkf.com'),
    Student(
        name: 'Zhou Qin',
        classes: 5,
        date: '08/12/2022',
        phone: '5107706008',
        email: 'lkf@lkf.com')
  ];
}

class Student {
  String name, date, phone, email;
  int classes;
  Student(
      {required this.name,
      required this.classes,
      required this.date,
      required this.phone,
      required this.email});
}
