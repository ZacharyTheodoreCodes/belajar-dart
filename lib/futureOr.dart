//FutureOr: return type yang bisa untuk aysnchronous atau synchronous code
/**
 * abstract class: bikin interface -> pakai implements
 * implements -> pake semua methodnya, di-override
 * Extends -> class inheritance
 */

import 'dart:async';

void main(List<String> args) async {
  User user = User();
  UserManager userManager = UserManager(FirebaseStorage());

  print(await userManager.getUserAge(user));
}


class User {
 int age = 0;
}

class UserManager{
 final IDDataStorage dataStorage;

  UserManager(this.dataStorage);
  
  void saveUserData(User user, int option){
    dataStorage.saveData(user);
  }
  
  FutureOr<int> getUserAge(User user) async{
    return await dataStorage.getUserAge(user);
  }
}

abstract class IDDataStorage{
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}


class FirebaseStorage implements IDDataStorage{
  @override
  void saveData(User user){}

  @override
  FutureOr<int> getUserAge(User user) async{
    await Future.delayed(Duration(seconds: 1));
    return 20;
  }
}

class LocalStorage implements IDDataStorage{
  @override
  void saveData(User user){}

  @override
  int getUserAge(User user) => 10;
}

