import 'package:ayo_curhat/app/modules/model/home_model.dart';
import 'package:ayo_curhat/app/modules/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/tweet_top_info_controller.dart';

class TweetTopInfoView extends GetView<TweetTopInfoController> {
  const TweetTopInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweetTopInfoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TweetTopInfoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class TweetTopInfo extends StatelessWidget {
  const TweetTopInfo({
    super.key,
    required this.tweetInfo,
  });

  final String tweetInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 55.0,
          child: Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset('assets/images/photo_profile.svg')),
        ),
        const SizedBox(
          width: 7.0,
        ),
        Text(
          tweetInfo,
          style: kTweetInfoStyle,
        )
      ],
    );
  }
}
