import 'package:dart_application_1/securebox.dart';
// import 'package:dart_application_1/securebox_datetime.dart';
// import 'package:dart_application_1/securebox_int.dart';

void main(List<String> args) {
  // var box = IntSecureBox(100, '123');
  // print(box.getData('321').toString());

  // var box = DatetimeSecureBox(DateTime.now(), '123');
  // print(box.getData('321').toString());

  //Generic type <T> jadi bisa diisi apapun, int,string,class

  var box = SecureBox(Person('Ary'), '123');
  print(box.getData('123').toString());
}

class Person{
  final String name;
  Person(this.name);
}