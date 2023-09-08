import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AgendaDB{
  static final nameDB='AGENDADB';
  static final versionDB=1;
  static Database? _database;
  get database async {
    if(_database != null) return _database;
    return _database= await  _initDatabase();
  }
  
  Future<Database?> _initDatabase() async{
    Directory folder = await getApplicationDocumentsDirectory();
    String pathDB = join(folder.path,nameDB);
    return  openDatabase(
      pathDB,
      version: versionDB,
      onCreate: _createTables
    );
  }

  FutureOr<void> _createTables(Database db, int version) {
    String query= '''CREATE TABLE tblTareas(
      idTask INTEGER PRIMARY KEY,
        nameTask VARCHAR(50),
        dscTask VARCHAR(50),
        sttTask BYTE,  
      )''';
      db.execute(query);
  }
}

