import 'package:youcan_flutter_sdk/src/store_front/core/mixins/requests_client.dart';
import 'package:youcan_flutter_sdk/src/store_front/instance/pages/extensions/all.dart';

import '../../core/base/pages_base.dart';

class Pages with RequestsClient implements PagesBase {
  @override
  Future<List> all() async {
    return await allExtension();
  }

  @override
  String? get endPoint {}
}
