import 'package:inventory_management/core/db/impl/sqlite_repo.dart';
import 'package:inventory_management/core/db/interface/database_interface.dart';
import 'package:inventory_management/core/db/utils/const.dart';
import 'package:inventory_management/repo/product_repo/product_entity.dart';
import 'package:sqflite/sqflite.dart';

class SqliteProductRepo extends SqliteRepo<Product, ProductParams> {
  SqliteProductRepo(DataStore<Database> store)
      : super(
          store,
          Product.fromJson,
          productTb,
        );

  @override
  String get refQuery {
    return '''
        select "$tableName".*,"$categoryTb".name as category_name,
        "$categoryTb"."created_at" as category_created_at,"$categoryTb"."updated_at" as category_updated_at
        from "$tableName" 
        join "$categoryTb" on "$categoryTb"."id"="$tableName"."category_id" 
    ''';
  }
}
