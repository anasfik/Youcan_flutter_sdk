import 'package:you_can_flutter_sdk/src/store_front/http_requests/extensions/store/all_info.dart';

import '../../../core/models/store/store_informations.dart';
import '../store.dart';

extension AllInformationsExtension on Store {
  // This is the extension method that will be make an http request to get all the store informations.
  // This method will return a [StoreInformations] object.
  Future<StoreInformations> allInformationsExtension() async {
    return await httpRequests.storeInformations();
  }
}
