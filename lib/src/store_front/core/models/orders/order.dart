class Order {
  String? id;
  String? ref;
  int? vat;
  int? total;
  String? notes;
  int? status;
  List<dynamic>? tags;
  dynamic extraFields;
  bool? isRefundedByPlatform;
  int? platformFee;
  String? createdAt;
  String? updatedAt;
  Links? links;
  Payment? payment;
  Shipping? shipping;
  List<dynamic>? refunds;
  List<VariantElement?>? variants;

  Order({
    this.id,
    this.ref,
    this.vat,
    this.total,
    this.notes,
    this.status,
    this.tags,
    this.extraFields,
    this.isRefundedByPlatform,
    this.platformFee,
    this.createdAt,
    this.updatedAt,
    this.links,
    this.payment,
    this.shipping,
    this.refunds,
    this.variants,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        ref: json["ref"],
        vat: json["vat"],
        total: json["total"],
        notes: json["notes"],
        status: json["status"],
        tags: json["tags"] == null
            ? []
            : List<dynamic>.from(json["tags"]!.map((x) => x)),
        extraFields: json["extra_fields"],
        isRefundedByPlatform: json["is_refunded_by_platform"],
        platformFee: json["platform_fee"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        links: json["links"],
        payment: json["payment"],
        shipping: json["shipping"],
        refunds: json["refunds"] == null
            ? []
            : List<dynamic>.from(json["refunds"]!.map((x) => x)),
        variants: json["variants"] == null
            ? []
            : List<VariantElement?>.from(
                json["variants"]!.map(
                  (x) => VariantElement.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ref": ref,
        "vat": vat,
        "total": total,
        "notes": notes,
        "status": status,
        "tags": List<dynamic>.from(tags ?? []),
        "extra_fields": extraFields,
        "is_refunded_by_platform": isRefundedByPlatform,
        "platform_fee": platformFee,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "links": links,
        "payment": payment,
        "shipping": shipping,
        "refunds": List<dynamic>.from(refunds ?? []),
        "variants": List<dynamic>.from(variants ?? []),
      };
}

class Links {
  String? self;
  String? edit;

  Links({
    this.self,
    this.edit,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"],
        edit: json["edit"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "edit": edit,
      };
}

class Payment {
  String? statusText;
  int? status;
  String? createdAt;
  String? updatedAt;
  PaymentPayload? payload;
  List<dynamic>? address;

  Payment({
    this.statusText,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.payload,
    this.address,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        statusText: json["status_text"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        payload: json["payload"],
        address: json["address"] == null
            ? []
            : List<dynamic>.from(json["address"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status_text": statusText,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "payload": payload,
        "address":
            address == null ? [] : List<dynamic>.from(address!.map((x) => x)),
      };
}

class PaymentPayload {
  String? gateway;
  String? gatewayId;
  String? thankYouMessage;
  dynamic note;

  PaymentPayload({
    this.gateway,
    this.gatewayId,
    this.thankYouMessage,
    this.note,
  });

  factory PaymentPayload.fromJson(Map<String, dynamic> json) => PaymentPayload(
        gateway: json["gateway"],
        gatewayId: json["gateway_id"],
        thankYouMessage: json["thank-you-message"],
        note: json["note"],
      );

  Map<String, dynamic> toJson() => {
        "gateway": gateway,
        "gateway_id": gatewayId,
        "thank-you-message": thankYouMessage,
        "note": note,
      };
}

class Shipping {
  String? statusText;
  int? status;
  int? price;
  bool? isFree;
  dynamic trackingNumber;
  ShippingPayload? payload;
  String? createdAt;
  String? updatedAt;
  List<dynamic>? address;

  Shipping({
    this.statusText,
    this.status,
    this.price,
    this.isFree,
    this.trackingNumber,
    this.payload,
    this.createdAt,
    this.updatedAt,
    this.address,
  });

  factory Shipping.fromJson(Map<String, dynamic> json) => Shipping(
        statusText: json["status_text"],
        status: json["status"],
        price: json["price"],
        isFree: json["is_free"],
        trackingNumber: json["tracking_number"],
        payload: json["payload"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        address: json["address"] == null
            ? []
            : List<dynamic>.from(json["address"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status_text": statusText,
        "status": status,
        "price": price,
        "is_free": isFree,
        "tracking_number": trackingNumber,
        "payload": payload,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "address":
            address == null ? [] : List<dynamic>.from(address!.map((x) => x)),
      };
}

class ShippingPayload {
  String? id;
  String? compoundId;
  String? instanceClassName;
  String? name;
  String? displayName;
  int? price;
  bool? isFree;
  bool? isActive;

  ShippingPayload({
    this.id,
    this.compoundId,
    this.instanceClassName,
    this.name,
    this.displayName,
    this.price,
    this.isFree,
    this.isActive,
  });

  factory ShippingPayload.fromJson(Map<String, dynamic> json) =>
      ShippingPayload(
        id: json["id"],
        compoundId: json["compound_id"],
        instanceClassName: json["instance_class_name"],
        name: json["name"],
        displayName: json["display_name"],
        price: json["price"],
        isFree: json["is_free"],
        isActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "compound_id": compoundId,
        "instance_class_name": instanceClassName,
        "name": name,
        "display_name": displayName,
        "price": price,
        "is_free": isFree,
        "is_active": isActive,
      };
}

class VariantElement {
  String? id;
  int? price;
  int? quantity;
  int? createdAt;
  int? updatedAt;
  List<dynamic>? extraFields;
  VariantVariant? variant;

  VariantElement({
    this.id,
    this.price,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.extraFields,
    this.variant,
  });

  factory VariantElement.fromJson(Map<String, dynamic> json) => VariantElement(
        id: json["id"],
        price: json["price"],
        quantity: json["quantity"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        extraFields: json["extra_fields"] == null
            ? []
            : List<dynamic>.from(json["extra_fields"]!.map((x) => x)),
        variant: json["variant"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "quantity": quantity,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "extra_fields": extraFields == null
            ? []
            : List<dynamic>.from(extraFields!.map((x) => x)),
        "variant": variant,
      };
}

class VariantVariant {
  String? id;
  VariantVariations? variations;
  List<String?>? options;
  List<String?>? values;
  int? price;
  int? compareAtPrice;
  int? weight;
  dynamic sku;
  dynamic barcode;
  int? inventory;
  bool? isSelected;
  bool? isDefault;
  VariantImage? image;
  String? createdAt;
  String? updatedAt;
  OrderProduct? product;

  VariantVariant({
    this.id,
    this.variations,
    this.options,
    this.values,
    this.price,
    this.compareAtPrice,
    this.weight,
    this.sku,
    this.barcode,
    this.inventory,
    this.isSelected,
    this.isDefault,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory VariantVariant.fromJson(Map<String, dynamic> json) => VariantVariant(
        id: json["id"],
        variations: json["variations"],
        options: json["options"] == null
            ? []
            : List<String?>.from(json["options"]!.map((x) => x)),
        values: json["values"] == null
            ? []
            : List<String?>.from(json["values"]!.map((x) => x)),
        price: json["price"],
        compareAtPrice: json["compare_at_price"],
        weight: json["weight"],
        sku: json["sku"],
        barcode: json["barcode"],
        inventory: json["inventory"],
        isSelected: json["is_selected"],
        isDefault: json["is_default"],
        image: json["image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        product: json["product"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "variations": variations,
        "options":
            options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
        "values":
            values == null ? [] : List<dynamic>.from(values!.map((x) => x)),
        "price": price,
        "compare_at_price": compareAtPrice,
        "weight": weight,
        "sku": sku,
        "barcode": barcode,
        "inventory": inventory,
        "is_selected": isSelected,
        "is_default": isDefault,
        "image": image,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "product": product,
      };
}

class VariantImage {
  dynamic name;
  dynamic url;

  VariantImage({
    this.name,
    this.url,
  });

  factory VariantImage.fromJson(Map<String, dynamic> json) => VariantImage(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class OrderProduct {
  String? id;
  String? name;
  String? slug;
  dynamic publicUrl;
  String? thumbnail;
  String? description;
  int? price;
  int? compareAtPrice;
  dynamic costPrice;
  bool? visibility;
  bool? hasVariants;
  int? variantsCount;
  List<dynamic>? variantOptions;
  int? inventory;
  bool? trackInventory;
  OrderMeta? meta;
  AdvancedOptions? advancedOptions;
  String? createdAt;
  String? updatedAt;
  bool? deletedAt;
  List<OrderProductImage?>? images;

  OrderProduct({
    this.id,
    this.name,
    this.slug,
    this.publicUrl,
    this.thumbnail,
    this.description,
    this.price,
    this.compareAtPrice,
    this.costPrice,
    this.visibility,
    this.hasVariants,
    this.variantsCount,
    this.variantOptions,
    this.inventory,
    this.trackInventory,
    this.meta,
    this.advancedOptions,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.images,
  });

  factory OrderProduct.fromJson(Map<String, dynamic> json) => OrderProduct(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        publicUrl: json["public_url"],
        thumbnail: json["thumbnail"],
        description: json["description"],
        price: json["price"],
        compareAtPrice: json["compare_at_price"],
        costPrice: json["cost_price"],
        visibility: json["visibility"],
        hasVariants: json["has_variants"],
        variantsCount: json["variants_count"],
        variantOptions: json["variant_options"] == null
            ? []
            : List<dynamic>.from(json["variant_options"]!.map((x) => x)),
        inventory: json["inventory"],
        trackInventory: json["track_inventory"],
        meta: json["meta"],
        advancedOptions: json["advanced_options"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        images: json["images"] == null
            ? []
            : List<OrderProductImage?>.from(json["images"]!.map(
                (x) => OrderProductImage.fromJson(x),
              )),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "public_url": publicUrl,
        "thumbnail": thumbnail,
        "description": description,
        "price": price,
        "compare_at_price": compareAtPrice,
        "cost_price": costPrice,
        "visibility": visibility,
        "has_variants": hasVariants,
        "variants_count": variantsCount,
        "variant_options": variantOptions == null
            ? []
            : List<dynamic>.from(variantOptions!.map((x) => x)),
        "inventory": inventory,
        "track_inventory": trackInventory,
        "meta": meta,
        "advanced_options": advancedOptions,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x!.toJson())),
      };
}

class AdvancedOptions {
  bool? enabled;
  List<dynamic>? relatedOrderProducts;

  AdvancedOptions({
    this.enabled,
    this.relatedOrderProducts,
  });

  factory AdvancedOptions.fromJson(Map<String, dynamic> json) =>
      AdvancedOptions(
        enabled: json["enabled"],
        relatedOrderProducts: json["related_products"] == null
            ? []
            : List<dynamic>.from(json["related_products"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "enabled": enabled,
        "related_products": relatedOrderProducts == null
            ? []
            : List<dynamic>.from(relatedOrderProducts!.map((x) => x)),
      };
}

class OrderProductImage {
  String? id;
  String? name;
  int? type;
  String? url;
  int? order;
  ImageVariations? variations;

  OrderProductImage({
    this.id,
    this.name,
    this.type,
    this.url,
    this.order,
    this.variations,
  });

  factory OrderProductImage.fromJson(Map<String, dynamic> json) =>
      OrderProductImage(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        url: json["url"],
        order: json["order"],
        variations: json["variations"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "url": url,
        "order": order,
        "variations": variations,
      };
}

class ImageVariations {
  String? original;
  String? sm;
  String? md;
  String? lg;

  ImageVariations({
    this.original,
    this.sm,
    this.md,
    this.lg,
  });

  factory ImageVariations.fromJson(Map<String, dynamic> json) =>
      ImageVariations(
        original: json["original"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "original": original,
        "sm": sm,
        "md": md,
        "lg": lg,
      };
}

class OrderMeta {
  String? title;
  String? description;
  List<OrderMetaImage?>? images;

  OrderMeta({
    this.title,
    this.description,
    this.images,
  });

  factory OrderMeta.fromJson(Map<String, dynamic> json) => OrderMeta(
        title: json["title"],
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<OrderMetaImage?>.from(
                json["images"]!.map((x) => OrderMetaImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x!.toJson())),
      };
}

class OrderMetaImage {
  String? path;
  String? link;

  OrderMetaImage({
    this.path,
    this.link,
  });

  factory OrderMetaImage.fromJson(Map<String, dynamic> json) => OrderMetaImage(
        path: json["path"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "link": link,
      };
}

class VariantVariations {
  String? variationsDefault;

  VariantVariations({
    this.variationsDefault,
  });

  factory VariantVariations.fromJson(Map<String, dynamic> json) =>
      VariantVariations(
        variationsDefault: json["default"],
      );

  Map<String, dynamic> toJson() => {
        "default": variationsDefault,
      };
}
