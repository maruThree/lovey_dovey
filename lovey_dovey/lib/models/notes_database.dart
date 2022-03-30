// ignore: import_of_legacy_library_into_null_safe
// ignore_for_file: avoid_types_as_parameter_names

import 'package:sqflite/sqflite.dart';

import 'note.dart';

class NotesDatabase {
  static const _name = "NotesDatabase.db";
  static const _version = 1;

  late Database database;
  static const tableName="notes";

  initDatabase() async {
    database = await openDatabase(
      _name,
      version: _version,
      onCreate: (Database db, int version) async {
        await db.execute(
          '''CREATE TABLE $tableName (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            content TEXT,
            noteColor TEXT
          )'''
        );
      }
    );
  }

  Future<int> insertNote(Note note) async {
    return await database.insert(
      tableName,
      note.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  Future<int> updateNote(Note note) async {
    return await database.update(
      tableName,
      note.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  Future<List<Map<String, dynamic>>> getAllNotes() async {
    return await database.query(tableName);
  }

  Future<Map<String, dynamic>> getNotes(int, id) async {
    var result = await database.query(
      tableName,
      where: 'id = ?',
      whereArgs: [id]
    );

    if (result.length > 0) {
      return result.first;
    }

    return {};
  }

  Future<int> deleteNote(int id) async {
    return await database.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id]
    );
  }

  closeDatabase() async {
    await database.close();
  }
}