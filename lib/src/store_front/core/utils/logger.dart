import 'dart:developer' as dev;

import 'package:meta/meta.dart';

/// A simple wrapper around the `dart:developer` log function, to be used as a logger for the SDK.
/// This is not implemented in use inside the SDK (yet).
@experimental
void customLog(
  Object message,
  bool enableLogging, [
  String name = 'YouCan',
]) {
  if (enableLogging) {
    dev.log(message.toString(), name: name);
  }
  ;
}
