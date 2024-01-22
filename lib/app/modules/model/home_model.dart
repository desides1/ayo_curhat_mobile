class TweetModel {
  TweetModel({
    required this.hashTag,
    required this.retweets,
    required this.showThread,
    required this.tweetInfoText,
    required this.tweet,
    required this.profilePicture,
    required this.name,
    required this.tag,
    required this.comments,
    required this.likes,
    required this.hasCheckmark,
    required this.time,
  });
  late String tweetInfoText, tweet, profilePicture, name, tag, time, hashTag;
  late int comments, likes, retweets;
  late bool showThread, hasCheckmark;
}

List<TweetModel> tweets = [
  TweetModel(
    hashTag: 'TellMeAboutYou',
    retweets: 5,
    showThread: true,
    tweetInfoText: 'muhammad dan brian liked',
    tweet:
        'UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. what do you bring?',
    profilePicture: 'assets/images/profile.png',
    name: 'Muhammad',
    tag: 'craig-love',
    comments: 28,
    likes: 21,
    hasCheckmark: false,
    time: '12h',
  ),
  TweetModel(
      hashTag: '',
      retweets: 18,
      showThread: false,
      tweetInfoText: 'Dini',
      tweet: 'Y\'all ready for this next post?',
      profilePicture: 'assets/images/profile.png',
      name: 'Mahesa',
      tag: 'maxjacobson',
      comments: 46,
      likes: 365,
      hasCheckmark: false,
      time: '3h'),
  TweetModel(
      hashTag: '',
      retweets: 18,
      showThread: false,
      tweetInfoText: 'Kieron Dorson Retweeted',
      tweet:
          'Masalah Tangga Kehidupan ? Tadi Ada Jadwal Matkul tiba-tiba digedung B 454. Ruangannya diatas sendiri lagi, akhirnya ngos-ngosan dong naik tangga. Trus ditengah jalan mikir, kenapa poliwangi bangun gedung baru tapi lift di 454 ga pernah terealisasikan buat dibangun juga? padahal itu yang paling mendesak. Dosen juga bakalan nyaman jika mau datang ke kelas yang ruangannya di lantai 5.',
      profilePicture: 'assets/images/profile.png',
      name: 'Dinda',
      tag: 'poliwangi',
      comments: 46,
      likes: 365,
      hasCheckmark: false,
      time: '3h'),
];
