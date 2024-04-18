import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

//  newUser Model class
class NewUser {
  final String userName;
  final String password;
  final String contact;
  NewUser(
      {required this.userName, required this.password, required this.contact});
  Map<String, dynamic> userMap() {
    return {
      'userName': userName,
      'password': password,
      'contact': contact,
    };
  }
}

// new tasks model class


// initialise database
Future<Database> databaseint() async {
  final database = openDatabase(
    join(await getDatabasesPath(), "todolist8.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE users(
                    userName TEXT PRIMARY KEY,
                    password TEXT,
                    contact TEXT
                )''');
      db.execute('''CREATE TABLE tasks(
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    title TEXT,
                    description TEXT,
                    date TEXT,
                    userName TEXT,
                    FOREIGN KEY (userName) REFERENCES users(userName)
                )''');
      db.execute('''CREATE TABLE currentUser(
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    userName TEXT,
                    password TEXT
                )''');
    },
  );
  return database;
}


class UserInfo {
  static UserInfo obj = UserInfo();
  
  var database;
  String userName = "";

  var user;

  static UserInfo getObject() {
    return obj;
  }

  
  Future<void> getDatabase() async {
    database = await databaseint();
  }

  
  Future<void> insertNewUser(NewUser nu) async {
    await getDatabase();
    final localDB = await database;
    localDB.insert(
      'users',
      nu.userMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> removeCurrentUser() async {
    final localDB = await database;
    localDB.delete(
      'currentUser',
    );
  }

  Future<void> insertCurrentUser(String currentUser, String password) async {
    await getDatabase();
    final localDB = await database;
    user = await getCurrentUser();
    await removeCurrentUser();
    if (user.isEmpty) {
      localDB.insert(
        'currentUser',
        {"userName": currentUser, "password": password},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } else {
      localDB.update(
        'currentUser',
        {"userName": currentUser, "password": password},
        where: "id = ?",
        whereArgs: [1],
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      user = await getCurrentUser();
    }
  }

  Future<List> getCurrentUser() async {
    await getDatabase();
    final localDB = await database;
    List<Map<String, dynamic>> mapEntry = await localDB.query("currentUser");

    List currentUserList = mapEntry;
    return currentUserList;
  }

  // add new task in database for that user

  // create object of newuser model class and pass to add in database
  Future<bool> addUser({
    required String username,
    required String password,
    required String contact,
  }) async {
    await getDatabase();

    // chaeck that user with given username is already exit or not
    if (!await obj.isUserExit(userName: username)) {
      NewUser newUser = NewUser(
        userName: username,
        password: password,
        contact: contact,
      );
      await insertNewUser(newUser);
      List<Map<String, dynamic>> retVal = await getUserList();
      for (int i = 0; i < retVal.length; i++) {}

      return true;
    } else {
      return false;
    }
  }

  // return list of all users
  Future<List<Map<String, dynamic>>> getUserList() async {
    await getDatabase();
    final localDB = await database;
    List<Map<String, dynamic>> mapEntry = await localDB.query("users");
    return mapEntry;
  }

  

  // this method check that user is already exit or not
  Future<bool> isUserExit({required String userName}) async {
    final localdb = await database;
    List<Map<String, dynamic>> result = await localdb
        .rawQuery("SELECT * FROM users WHERE userName = ?", [userName]);
    return result.isNotEmpty;
  }

  //check that task is allready added in list or not

  

  

  // return password for the specific username
  Future<String> getPassword({required String userName}) async {
    final localdb = await database;
    List<Map<String, dynamic>> result = await localdb
        .rawQuery("SELECT password FROM users WHERE userName = ?", [userName]);
    return result[0]['password'];
   }
}