import 'dart:developer' as dev;

void customLog(Object message, [String name = 'YouCan']) {
  dev.log(
    message.toString(),
    name: name,
  );
}
