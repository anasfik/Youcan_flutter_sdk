class Page {
  final String id;
  final String name;
  final String slug;
  final String publicUrl;
  final String content;
  final String template;
  final DateTime createdAt;
  final PageMeta meta;

  Page({
    required this.id,
    required this.name,
    required this.slug,
    required this.publicUrl,
    required this.content,
    required this.template,
    required this.createdAt,
    required this.meta,
  });

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        publicUrl: json["public_url"],
        content: json["content"],
        template: json["template"],
        createdAt: DateTime.parse(json["created_at"]),
        meta: PageMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "public_url": publicUrl,
        "content": content,
        "template": template,
        "created_at": createdAt.toIso8601String(),
        "meta": meta.toJson(),
      };
}

class PageMeta {
  final String title;
  final String description;
  final List<String> images;

  PageMeta({
    required this.title,
    required this.description,
    required this.images,
  });

  factory PageMeta.fromJson(Map<String, dynamic> json) => PageMeta(
        title: json["title"],
        description: json["description"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
