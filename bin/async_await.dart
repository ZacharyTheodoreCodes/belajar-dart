void main(List<String> args) async {
  var p = AsyncPerson();

  print('job 1');
  print('job 2');
  // await p.getDataAsync();
  p.getDataAsync().then((value) {
    print('job 3 ${p.name}');
  });
  print('job 4');
}

class AsyncPerson {
  String name = "default name";
  void getData() {
    name = 'Santi';
    print('get data done $name');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 2));
    name = 'Santie';
    print('get data done $name');
  }
}
