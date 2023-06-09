// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseConnection {
  static final DatabaseConnection _instance = DatabaseConnection._internal();
  late Database _database;

  factory DatabaseConnection() {
    return _instance;
  }

  DatabaseConnection._internal();

  Future<Database> get database async {
    // ignore: unnecessary_null_comparison
    if (_database != null) {
      return _database;
    }
    _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    String path = await getDatabasesPath();
    return await openDatabase(
      join(path, 'home.db'),
      onCreate: (Database database, int version) async {
        await createTables(database);
      },
      version: 1,
    );
  }

  static Future<void> createTables(Database database) async {
    await database.execute('''
      CREATE TABLE home (
        homeId INTEGER PRIMARY KEY AUTOINCREMENT,
        nameHome TEXT NOT NULL,
        priceAll REAL
      )
    ''');

    await database.execute('''
      CREATE TABLE room (
        roomId INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        homeId INTEGER NOT NULL,
        FOREIGN KEY (homeId) REFERENCES home(homeId)
      )
    ''');

    await database.execute('''
      CREATE TABLE floowall (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        type TEXT,
        width REAL,
        length REAL,
        price REAL,
        roomId INTEGER,
        homeId INTEGER,
        FOREIGN KEY (roomId) REFERENCES room(roomId),
        FOREIGN KEY (homeId) REFERENCES home(homeId)
      )
    ''');
  }
}
