import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/store/extensions/all_info.dart';

import '../../core/models/store/store_informations.dart';

class Store with RequestsClient {
  Future<StoreInformations> allInformations() async {
    return await allInformationsExtension();
  }
}
