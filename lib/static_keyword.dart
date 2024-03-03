class StaticPerson {
  late String name;
  late int age;
  static int maxAge = 150;

  StaticPerson(this.name, int age) {
    this.age = (age > maxAge) ? 150 : age;
  }
}
