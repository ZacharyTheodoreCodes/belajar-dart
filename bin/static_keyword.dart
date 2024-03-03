import 'package:dart_application_1/static_keyword.dart';

void main(List<String> args) {
  var p = StaticPerson("Ary", 151);
  print(p.age);
  print(StaticPerson.maxAge);
}
