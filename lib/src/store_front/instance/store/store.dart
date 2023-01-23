import 'package:you_can_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:you_can_flutter_sdk/src/store_front/instance/store/extensions/all_info.dart';

import '../../core/models/store/store_informations.dart';

class Store with RequestsClient {
  /// Use this method to get all the store informations, this method is a [Future] and will return a [StoreInformations] object.
  /// This method will return a [StoreInformations] object.
  /// Example:
  /// ```dart
  /// await YouCan.instance.store.allInformations();
  /// ```
  Future<StoreInformations> allInformations() async {
    return await allInformationsExtension();
  }
}
