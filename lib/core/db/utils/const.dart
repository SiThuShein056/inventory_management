import 'package:inventory_management/core/db/interface/table.dart';

const String categoryTb = "categories",
    productTb = "products",
    optionTb = "options",
    valueTb = "values",
    variantTb = "variants",
    variantPropertiesTb = "variant_properties",
    inventoryTb = "inventories";

const Map<int, List<String>> tableNames = {
  1: [
    //categories
    categoryTb,
    //products
    productTb,
    //options
    optionTb,
    //values
    valueTb,
    //variants
    variantTb,
    // variant_properties
    variantPropertiesTb,
    //inventories
    inventoryTb
  ]
};

const Map<int, Map<String, List<TableProperties>>> tableColumns = {
  1: {
    categoryTb: [
      TableColumn(
        name: "name",
        type: "varchar",
      ),
      TableColumn(
        name: "covor_photo",
        type: "varchar",
      )
    ],
    productTb: [
      TableColumn(
        name: "covor_photo",
        type: "varchar",
        options: "not null",
      ),
      TableColumn(
        name: "name",
        type: "varchar",
        options: "not null",
      ),
      TableColumn(
        name: "category_id",
        type: "integer",
        options: "not null",
      ),
      TableColumn(
        name: "barcode",
        type: "varchar",
        options: "unique",
      ),
    ],
    optionTb: [
      TableColumn(
        name: "name",
        type: "varchar",
        options: "not null",
      ),
      TableColumn(
        name: "product_id",
        type: "integer",
        options: "not null",
      )
    ],
    valueTb: [
      TableColumn(
        name: "name",
        type: "varchar",
        options: "not null",
      ),
      TableColumn(
        name: "option_id",
        type: "integer",
        options: "not null",
      )
    ],
    variantTb: [
      TableColumn(
        name: "cover_photo",
        type: "varchar",
      ),
      TableColumn(
        name: "product_id",
        type: "integer",
        options: "not null",
      ),
      TableColumn(
        name: "sku",
        type: "varchar",
        options: "not null unique",
      ),
      TableColumn(
        name: "price",
        type: "NUMERIC",
        options: "default 0",
      ),
      TableColumn(
        name: "on_hand",
        type: "NUMERIC",
        options: "default 0",
      ),
      TableColumn(
        name: "damange",
        type: "NUMERIC",
        options: "default 0",
      ),
      TableColumn(
        name: "lost",
        type: "NUMERIC",
        options: "default 0",
      ),
    ],
    variantPropertiesTb: [
      TableColumn(
        name: "variant_id",
        type: "integer",
        options: "not null",
      ),
      TableColumn(
        name: "value_id",
        type: "integer",
        options: "not null",
      )
    ],
    inventoryTb: [
      TableColumn(
        name: "variant_id",
        type: "integer",
        options: "not null",
      ),
      TableColumn(
        name: "reason",
        type: "text",
        options: "not null",
      ),
      TableColumn(
        name: "quantity",
        type: "NUMERIC",
        options: "default 0",
      ),
      TableColumn(
        name: "description",
        type: "text",
      )
    ]
  },
};
