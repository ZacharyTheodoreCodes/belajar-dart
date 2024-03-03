class Person2 {
  String name;
  Function(String name) doingHobby;

  Person2(this.name, {required this.doingHobby});

  void takeARest() {
    doingHobby(name);
  }
}
