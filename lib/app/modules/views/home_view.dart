import 'package:ayo_curhat/app/modules/controllers/login_controller.dart';
import 'package:ayo_curhat/app/modules/model/home_model.dart';
import 'package:ayo_curhat/app/modules/views/constants.dart';
import 'package:ayo_curhat/app/modules/views/tweet_top_info_view.dart';
import 'package:ayo_curhat/app/modules/views/tweet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  TweetModel tweet = tweets[0];
  final login = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/logo.png'),
        ),
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0.0,
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/photo_profile.svg'),
          )
        ],
      ),
      body: ListView(
          children: tweets.map((tweet) {
        return TweetView(
          tweet: tweet,
        );
      }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => login.logout(),
        child: Icon(Icons.logout),
      ),
    );
  }
}
