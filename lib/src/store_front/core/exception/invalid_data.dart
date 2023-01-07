// ignore_for_file: public_member_api_docs, sort_constructors_first
class InvalidDataException implements Exception {
  final String message;
  final InvalidDataExceptionMeta meta;
  late final String reason;

  InvalidDataException(this.message, this.meta) {
    reason = meta.extractedReasonsOfException.isEmpty
        ? "No reason was provided."
        : meta.extractedReasonsOfException.first;
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
    List<List<dynamic>> fieldsReasons =
        map.values.toList() as List<List<dynamic>>;

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
