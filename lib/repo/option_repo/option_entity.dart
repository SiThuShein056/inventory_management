import 'dart:convert';

import 'package:inventory_management/core/db/interface/database_model.dart';
import 'package:inventory_management/repo/product_repo/product_entity.dart';

class Option extends DatabaseModel {
  final int id;
  final int productId;
  final String name;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final Product? product;

  Option({
    required this.id,
    required this.productId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.product,
  });

  factory Option.fromJson(dynamic data) {
    Map<String, dynamic>? productPayload;
    final productId = int.parse(data['product_id'].toString());
    if (data['product_created_at'] != null) {
      productPayload = {};
      productPayload['id'] = productId;
      productPayload['name'] = data['product_name'];
      productPayload['category_id'] = data['category_id'];
      productPayload['barcode'] = data['product_barcode'];
      productPayload['created_at'] = data['product_created_at'];
      productPayload['updated_at'] = data['product_updated_at'];
    }
    return Option(
      id: int.parse(data['id'].toString()),
      productId: productId,
      name: data['name'],
      createdAt: DateTime.parse(data['created_at']),
      updatedAt: DateTime.tryParse(data['updated_at'].toString()),
      product: productPayload == null ? null : Product.fromJson(productPayload),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "product_id": productId,
      "name": name,
      "created_at": createdAt.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
      "product": product?.toJson(),
    };
  }

  @override
  String toString() {
    return json.encode(toJson());
  }
}

class OptionParams extends DatabaseParamModel {
  final int productId;
  final String name;

  OptionParams._({
    required this.productId,
    required this.name,
  });

  factory OptionParams.toCreate({
    required int productId,
    required String name,
  }) {
    return OptionParams._(
      productId: productId,
      name: name,
    );
  }

  factory OptionParams.toUpdate({
    required int? productId,
    required String? name,
  }) {
    return OptionParams._(
      productId: productId ?? -1,
      name: name ?? "",
    );
  }

  @override
  Map<String, dynamic> toCreate() {
    return {
      "product_id": productId,
      "name": name,
    };
  }

  @override
  Map<String, dynamic> toUpdate() {
    final Map<String, dynamic> payload = {};
    if (productId > 1) payload["product_Id"] = productId;
    if (name.isNotEmpty) payload["name"] = name;
    assert(payload.isNotEmpty);
    return payload;
  }
}
