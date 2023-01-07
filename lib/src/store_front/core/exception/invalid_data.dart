// ignore_for_file: public_member_api_docs, sort_constructors_first
class InvalidDataException implements Exception {
  final String message;
  final InvalidDataExceptionMeta _meta;
  late final String reason;

  InvalidDataException(this.message, this._meta) {
    reason = _meta.extractedReasonsOfException.isEmpty
        ? "No reason was provided."
        : _meta.extractedReasonsOfException.first;
  }

  @override
  String toString() {
    return "InvalidDataException: $message, reason: ${reason}";
  }
}

class InvalidDataExceptionMeta {
  List<String> extractedReasonsOfException;
  InvalidDataExceptionMeta({
    required this.extractedReasonsOfException,
  });

  factory InvalidDataExceptionMeta.fromMap(Map<String, dynamic> map) {
    List fieldsReasons = map.values.toList();

    List<String> reasons = fieldsReasons
        .map(
          (fieldReasons) => fieldReasons.first.toString(),
        )
        .toList();

    return InvalidDataExceptionMeta(
      extractedReasonsOfException: reasons,
    );
  }
}
