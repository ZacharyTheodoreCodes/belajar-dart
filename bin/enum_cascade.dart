/**
 * enum : pake enum di depannya
 * cascade : 
 */

void main(List<String> args) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.confused);
  m
    ..move()
    ..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus status;
  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.confused:
        print("Ucoa is spinning. Dart language is confusing ");
        break;
      case UcoaStatus.poisoned:
        print("Ucoa is dead");
        break;
      case UcoaStatus.normal:
        print("Ucoa is moving");
        break;
      default:
    }
  }

  void eat() {
    print('ymmmss');
  }
}
