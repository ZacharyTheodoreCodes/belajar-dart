

// // void main(List<String> arguments) {
// //   String? input = stdin.readLineSync();
// // double? num = double.tryParse(input ?? '');
// //   print((num ?? 0 )+ 10);
// // }

// // void main(List<String> args) {
// //   int? num = int.tryParse(stdin.readLineSync() ?? '');
// //   String output;
// //   output = (num! > 0) ? "positif" : "negatif atau nol";
// //   print(output);
// // }

// //Function
// /**
//  * optional parameter:
//  * -Named parameter {}
//  * -Positional parameter []
//  */
// // String say(String from, String message, {String? to, String? appName}) {
// //   return '$from say $message to ${to ?? "someone"} in ${appName ?? "some app"}';
// // }

// // String say2(String from, String message,
// //     [String? to, String? appName = "Facebook"]) {
// //   return '$from say $message to ${to ?? "someone"} in $appName';
// // }

// // //Arrow function
// // num luas_segiempat(num panjang, num lebar) => panjang * lebar;

// // //Anonymous function
// // int mathOperation(int num1, int num2, Function(int, int) operator) {
// //   return operator(num1, num2);
// // }

// // void main(List<String> args) {
// //   print(say("Ary", "Hello", appName: "some app", to: "KD"));
// //   print(say2("Rafi", "Hi", "Ary"));
// //   print(luas_segiempat(4, 5));
// //   print(mathOperation(3, 6, (p0, p1) => p0 + p1));
// // }

// //List a.k.a Array
// // void main(List<String> args) {
// //   List myList = [1, 2, 3, 4, 5, 6, 7, 8];
// //   List list = [1, 2, 3, 4];

//   // myList.add(0);
//   // myList.addAll(list);
//   // myList.insert(1, 10);
//   // myList.insertAll(5, [5, 6, 7]);
//   // myList.removeRange(1, 2);

//   //myList.removeWhere((number) => number % 2 != 0);

// //   if (myList.contains(2)) {
// //     print("ada 6");
// //   }

// //   //list.add(myList.sublist(1));

// //   list = myList.map((number) => 'angka ${number.toString()}').toList();

// //   print(list);
// //   print(myList);
// //   myList.forEach((angka) {
// //     print(angka);
// //   });
// //   // print(myList.length);
// // }

void main() {
  List<int> numbers = [1, 2, 3, 4];

  // Using map to transform each element in the list
  Iterable<String> transformedNumbers = numbers.map((int number) {
    return 'angka ${number.toString()}';
  });

  // Printing the result
  print(transformedNumbers); // Prints: (angka 1, angka 2, angka 3, angka 4)
}