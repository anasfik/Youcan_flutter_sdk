import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/contact/send_message.dart';

import '../../core/base/contact_base.dart';

class Contact with RequestsClient implements ContactBase {
  // No need to implement the constructor directly.
  Contact._();

  factory Contact() {
    return Contact._();
  }

  /// Sends a message to the store owner.
  ///
  /// Will return a boolean value indicating if the message was sent successfully and throws exception if not.
  ///
  /// Example:
  /// ```dart
  /// final isSent = await YouCan.instance.contact.sendMessage(
  /// email: 'email',
  /// subject: 'subject',
  /// message: 'message',
  /// );
  /// ```
  ///
  Future<bool> sendMessage({
    required String email,
    required String subject,
    required String message,
  }) async {
    return await httpRequests.sendMessage(
      email: email,
      subject: subject,
      message: message,
    );
  }
}
