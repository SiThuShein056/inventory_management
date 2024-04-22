import 'package:inventory_management/core/db/impl/sqlite_repo.dart';
import 'package:inventory_management/core/db/interface/database_interface.dart';
import 'package:inventory_management/core/db/utils/const.dart';
import 'package:sqflite/sqflite.dart';

import 'option_entity.dart';

class SqliteOptionRepo extends SqliteRepo<Option, OptionParams> {
  SqliteOptionRepo(DataStore<Database> store)
      : super(
          store,
          Option.fromJson,
          optionTb,
        );

  @override
  String get refQuery {
    return '''
        select "$tableName".*,"$productTb".name as product_name,"$productTb".category_id as category_id,"$productTb".barcode as product_barcode,
        "$productTb"."created_at" as product_created_at,"$productTb"."updated_at" as product_updated_at
        from "$tableName" 
        join "$productTb" on "$productTb"."id"="$tableName"."product_id" 
    ''';
  }
}
