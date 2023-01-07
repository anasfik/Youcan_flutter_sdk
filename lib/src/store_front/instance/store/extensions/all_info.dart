import 'package:youcan_flutter_sdk/src/store_front/http_requests/extensions/store/all_info.dart';

import '../../../core/models/store/store_informations.dart';
import '../store.dart';

extension AllInformations on Store {
  Future<StoreInformations> allInformationsExtension() async {
    return await httpRequests.storeInformations();
  }
}
