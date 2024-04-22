import 'package:inventory_management/core/db/impl/sqlite_repo.dart';
import 'package:inventory_management/core/db/interface/database_interface.dart';
import 'package:inventory_management/core/db/utils/const.dart';
import 'package:inventory_management/repo/category_repo/category_entity.dart';
import 'package:sqflite/sqflite.dart';

class SqliteCategoryRepo extends SqliteRepo<Category, CategoryParams> {
  SqliteCategoryRepo(DataStore<Database> store)
      : super(store, Category.fromJson, categoryTb);

  @override
  String get refQuery {
    return '''
      select "$tableName".*,
      (select count("$productTb"."id") from "$productTb" where "$productTb"."category_id"="$tableName"."id") as product_count 
      from "$tableName"
    ''';
  }
}
