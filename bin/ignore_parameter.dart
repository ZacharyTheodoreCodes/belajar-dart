import 'package:dart_application_1/ignore_parameter.dart';

void main(List<String> args) {
  var p = Person2("David", doingHobby: (_) {
    print('Swimming in the pool');
  });
  p.takeARest();
}
