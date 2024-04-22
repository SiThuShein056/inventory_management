import 'package:flutter/material.dart';
import 'package:inventory_management/routes/router.dart';
import 'package:inventory_management/theme/theme.dart';
import 'package:starlight_utils/starlight_utils.dart';

void main() {
  runApp(const MainApp());
}

void testDB() {
  // final SqliteDatabase database =
  //     SqliteDatabase.newInstance("hello_world", 1);
  // final SqliteCategoryRepo categoryRepo = SqliteCategoryRepo(database);
  // final SqliteProductRepo productRepo = SqliteProductRepo(database);
  // final SqliteOptionRepo optionRepo = SqliteOptionRepo(database);
  // database.connect().then((value) async {
  // final category = await categoryRepo
  //     .create(CategoryParams.create(name: "hello ${DateTime.now()}"));
  // print(category);

  // final updated = await categoryRepo.update(
  //     category!.id, CategoryParams.update(name: "Hello World"));
  // print(updated);

  // final List<Category> category = await categoryRepo.find(limit: 5);
  // print(category);
  // final Category? category1 = await categoryRepo.delete(2);
  // print(category1);
  // final List<Category> categoryResult = await categoryRepo.find(limit: 5);
  // print(categoryResult);

  // final product = await productRepo.create(
  //   ProductParams.toCreate(
  //     name: "Category ${1} Product ${DateTime.now()}",
  //     categoryId: 1,
  //     barcode: DateTime.now().toIso8601String(),
  //   ),
  // );
  // print(product);
  // final productResult = await productRepo.findModels(limit: 1);
  // print(productResult);
  // print('_______________');
  // final productResultWithRef =
  //     await productRepo.findModels(limit: 1, useRef: true);
  // print(productResultWithRef);

  // final option = await optionRepo.create(
  //     OptionParams.toCreate(productId: 1, name: "Option${DateTime.now()}"));
  // print(option);
  // });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StarlightUtils.navigatorKey,
      theme: LightTheme().theme,
      onGenerateRoute: router,
    );
  }
}
