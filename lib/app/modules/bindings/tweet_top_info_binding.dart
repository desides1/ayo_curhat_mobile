import 'package:get/get.dart';

import '../controllers/tweet_top_info_controller.dart';

class TweetTopInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TweetTopInfoController>(
      () => TweetTopInfoController(),
    );
  }
}
