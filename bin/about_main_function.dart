import 'dart:io';

void main(List<String> arguments) {
  runMain1();
  runMain2();
}

void runMain1() {
  String? input = stdin.readLineSync();
  double? num = double.tryParse(input ?? '');
  print((num ?? 0) + 10);
}

void runMain2() {
  int? num = int.tryParse(stdin.readLineSync() ?? '');
  String output = (num! > 0) ? "positif" : "negatif atau nol";
  print(output);
}
