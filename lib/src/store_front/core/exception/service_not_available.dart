class ServiceNotAvailable implements Exception {
  final String message;
  ServiceNotAvailable(this.message);
}
