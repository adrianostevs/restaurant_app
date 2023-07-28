import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants_res_mapper.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _instance;
  static Database? _database;

  DatabaseHelper._internal() {
    _instance = this;
  }

  factory DatabaseHelper() => _instance ?? DatabaseHelper._internal();

  static const String _tableFavorite = 'favorite';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      '$path/restaurant.db',
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE $_tableFavorite (
          id TEXT PRIMARY KEY,
          name TEXT,
          description TEXT,
          pictureId TEXT,
          city TEXT,
          address TEXT,
          rating REAL,
          categories TEXT,
          menus TEXT,
          customerReviews TEXT
        )''');
      },
      version: 1,
    );

    return db;
  }

  Future<Database?> get database async {
    _database ??= await _initializeDb();

    return _database;
  }

  Future<void> insertFavorite(Restaurants restaurants) async {
    final db = await database;
    await db?.insert(_tableFavorite,
        RestaurantResMapper.mapDomainToJson(restaurants).toJson());
  }

  Future<List<Restaurants>?> getListFavorites() async {
    final db = await database;
    List<Map<String, dynamic>>? results = await db?.query(_tableFavorite);
    final list = results?.map((e) => Restaurants.fromJson(e)).toList();
    return list;
  }

  Future<Map> getFavoriteById(String id) async {
    final db = await database;

    List<Map<String, dynamic>>? results =
        await db?.query(_tableFavorite, where: 'id = ?', whereArgs: [id]);

    if (results?.isNotEmpty == true) {
      return results!.first;
    } else {
      return {};
    }
  }

  Future<void> removeBookmark(String id) async {
    final db = await database;

    await db?.delete(_tableFavorite, where: 'id = ?', whereArgs: [id]);
  }
}
