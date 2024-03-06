/**
 * required: di parameter
 * assert: kalau null
 * try catch: handle error
 */

void main(List<String> args) {
  Person p;
  try {
    p = Person(name: '');
  } catch (e) {
    print(e);
  }
  print('hi person');
}

class Person {
  String name;
  int age;
  Person({required this.name, this.age = 0}) {
    assert(name != '', 'nama gaboleh null');
  }
}
