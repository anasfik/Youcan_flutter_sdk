abstract class SendMessageImpl {
  Future<bool> sendMessage({
    required String email,
    required String subject,
    required String message,
  });
}
