// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The upSell model at YouCan.
class UpSell {
  final String id;
  final String name;
  final String? description;
  final String productId;
  final List<String> productOfferIds;
  final dynamic actions;
  final String? footer;
  final int weight;
  final bool active;

  /// The upSell model at YouCan.
  UpSell({
    required this.id,
    required this.name,
    this.description,
    required this.productId,
    required this.productOfferIds,
    required this.actions,
    this.footer,
    required this.weight,
    required this.active,
  });

  factory UpSell.fromMap(Map<String, dynamic> map) {
    return UpSell(
      id: map['id'] as String,
      name: map['name'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      productId: map['productId'] as String,
      productOfferIds: List<String>.of(
        (map['product_offer_ids'] as List<String>),
      ),
      actions: map['actions'] as dynamic,
      footer: map['footer'] != null ? map['footer'] as String : null,
      weight: map['weight'] as int,
      active: map['active'] as int == 1 ? true : false,
    );
  }

  factory UpSell.fromJson(String source) =>
      UpSell.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'productId': productId,
      'product_offer_ids': productOfferIds,
      'actions': actions,
      'footer': footer,
      'weight': weight,
      'active': active ? 1 : 0,
    };
  }

  String toJson() => json.encode(toMap());
}
