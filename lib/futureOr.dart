//FutureOr: return type yang bisa untuk aysnchronous atau synchronous code
/**
 * abstract class: bikin interface -> pakai implements
 * implements -> pake semua methodnya, di-override
 * Extends -> class inheritance
 */
class User {
 
}

class UserManager{
 final IDDataStorage dataStorage;

  UserManager(this.dataStorage);
  
  void saveUserData(User user, int option){
    dataStorage.saveData(user);
  }
 
}

abstract class IDDataStorage{
  void saveData(User user);
  
}

class FirebaseStorage implements IDDataStorage{
  @override
  void saveData(User user){}
}

class LocalStorage implements IDDataStorage{
    @override
  void saveData(User user){}
}

