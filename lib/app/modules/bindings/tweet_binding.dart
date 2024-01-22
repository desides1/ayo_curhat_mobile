import 'package:get/get.dart';

import '../controllers/tweet_controller.dart';

class TweetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TweetController>(
      () => TweetController(),
    );
  }
}
