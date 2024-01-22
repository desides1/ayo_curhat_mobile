import 'package:ayo_curhat/app/modules/model/home_model.dart';
import 'package:ayo_curhat/app/modules/views/constants.dart';
import 'package:ayo_curhat/app/modules/views/tweet_top_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/tweet_controller.dart';

class TweetView extends GetView<TweetController> {
  const TweetView({Key? key, required this.tweet}) : super(key: key);
  // TweetView({super.key, required this.tweet, });

  final TweetModel tweet;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: kLightGreyColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: 10.0),
        child: Column(
          children: [
            TweetTopInfo(tweetInfo: tweet.tweetInfoText),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 27.5,
                  backgroundImage: AssetImage(tweet.profilePicture),
                ),
                const SizedBox(
                  width: 7.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            tweet.name,
                            style: kTweetStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          tweet.hasCheckmark
                              ? SvgPicture.asset('assets/images/more_menu.svg')
                              : const SizedBox(),
                          SizedBox(
                            width: tweet.hasCheckmark ? 2.0 : 0.0,
                          ),
                          Text(
                            '@${tweet.tag}',
                            style: kTweetInfoStyle,
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            tweet.time,
                            style: kTweetInfoStyle,
                          )
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: tweet.tweet,
                          style: kTweetStyle,
                        ),
                        TextSpan(
                          text: '#${tweet.hashTag}',
                          style: kTweetStyle.copyWith(
                            color: kPrimaryColor,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          interactionCounter(
                              'comment', tweet.comments.toString()),
                          interactionCounter(
                              'upvote', tweet.retweets.toString()),
                          interactionCounter(
                              'downvote', tweet.likes.toString()),
                          interactionCounter('share', ''),
                        ],
                      )
                    ],
                  ),
                ),
                SvgPicture.asset('assets/images/downvote.svg'),
              ],
            ),
            tweet.showThread
                ? Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.5),
                        child: CircleAvatar(
                          radius: 18.5,
                          backgroundImage: AssetImage(tweet.profilePicture),
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Show this thread',
                            style: kTweetStyle.copyWith(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Row interactionCounter(String iconName, String count) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/$iconName.svg'),
        const SizedBox(
          width: 3.0,
        ),
        Text(count)
      ],
    );
  }
}
