class Character {
  int _healthpoint = 0;

  int get healthpoint => _healthpoint;
  set healhpoint(int value) {
    if (value < 0) {
      value * -1;
    }
    _healthpoint = value;
  } 
}
