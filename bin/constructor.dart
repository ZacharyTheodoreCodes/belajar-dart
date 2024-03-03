import 'package:dart_application_1/constructor_person.dart';
import 'package:dart_application_1/constructor_student.dart';

/**
 * Constructor: students and person
 */

void main(List<String> args) {
  Person p = Student();
  print(p.name);
  //downcasting
  if (p is Student) {
    Student s = p;
    print(s.name);
  }
}
