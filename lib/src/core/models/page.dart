// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The page model at YouCan.
class Page {
  /// Returns identifier of page ( UUID ).
  final String id;

  /// Returns the page name.
  final String name;

  /// Returns the page slug.
  final String slug;

  /// Returns the page content.
  final String? content;

  /// Returns the page visibility.
  final bool visibility;

  /// Returns if the page is using page builder.
  final bool isUsingPageBuilder;

  /// Returns the page template.
  final String template;

  /// Returns the page meta.
  final String meta;

  /// Returns the page store id.
  final String store_id;

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        content.hashCode ^
        visibility.hashCode ^
        isUsingPageBuilder.hashCode ^
        template.hashCode ^
        meta.hashCode ^
        store_id.hashCode;
  }

  /// The page model at YouCan.
  Page({
    required this.id,
    required this.name,
    required this.slug,
    this.content,
    required this.visibility,
    required this.isUsingPageBuilder,
    required this.template,
    required this.meta,
    required this.store_id,
  });

  factory Page.fromMap(Map<String, dynamic> map) {
    return Page(
      id: map['id'] as String,
      name: map['name'] as String,
      slug: map['slug'] as String,
      content: map['content'] != null ? map['content'] as String : null,
      visibility: map['visibility'] as bool,
      isUsingPageBuilder: map['is_using_page_builder'] as bool,
      template: map['template'] as String,
      meta: map['meta'] as String,
      store_id: map['store_id'] as String,
    );
  }

  factory Page.fromJson(String source) =>
      Page.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'content': content,
      'visibility': visibility,
      'is_using_page_builder': isUsingPageBuilder,
      'template': template,
      'meta': meta,
      'store_id': store_id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(covariant Page other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.content == content &&
        other.visibility == visibility &&
        other.isUsingPageBuilder == isUsingPageBuilder &&
        other.template == template &&
        other.meta == meta &&
        other.store_id == store_id;
  }

  @override
  String toString() {
    return 'Page(id: $id, name: $name, slug: $slug, content: $content, visibility: $visibility, isUsingPageBuilder: $isUsingPageBuilder, template: $template, meta: $meta, store_id: $store_id)';
  }
}
