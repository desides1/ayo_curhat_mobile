import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/publik_curhat_controller.dart';

class ListTileContent {
  String? title;
  String? subtile;
  String? no;
  ListTileContent({this.no, this.title, this.subtile});
}

class PublikCurhatView extends GetView<PublikCurhatController> {
  const PublikCurhatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = 100;
    String dummyText =
        " Masalah Tangga Kehidupan ? Tadi Ada Jadwal Matkul tiba-tiba digedung B 454. Ruangannya diatas sendiri lagi, akhirnya ngos-ngosan dong naik tangga. Trus ditengah jalan mikir, kenapa poliwangi bangun gedung baru tapi lift di 454 ga pernah terealisasikan buat dibangun juga? padahal itu yang paling mendesak. Dosen juga bakalan nyaman jika mau datang ke kelas yang ruangannya di lantai 5.";
    String judul1 = "Judul 1";
    String judul2 = "Judul 2";
    List judul = [
      ListTileContent(no: "1", title: "Judul 1", subtile: dummyText),
      ListTileContent(no: "2", title: "Judul 2", subtile: dummyText),
      ListTileContent(no: "3", title: "Judul 3", subtile: dummyText),
      ListTileContent(no: "4", title: "Judul 4", subtile: dummyText),
      ListTileContent(no: "5", title: "Judul 5", subtile: dummyText),
      ListTileContent(no: "6", title: "Judul 6", subtile: "Baru ditambahkan"),
      ListTileContent(
          no: "7", title: "Judul 7", subtile: "Mencoba dengan nilai baru"),
      ListTileContent(no: "8", title: "Judul 8", subtile: "Berhasil"),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              judul[index].title,
            ),
            subtitle: Text(
              judul[index].subtile,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(
              child: Text(judul[index].no),
            ),
            trailing: const Icon(Icons.more_horiz_outlined),
          );
        },
      )),
    );
  }
}

class contohListTile extends StatelessWidget {
  const contohListTile({
    super.key,
    required this.judul,
  });

  final List judul;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        title: Text(judul[0].title),
        subtitle: Text(
          judul[0].subtile,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        leading: CircleAvatar(
          child: Text(judul[0].no),
        ),
        trailing: Icon(Icons.more_horiz_rounded),
      ),
      ListTile(
        title: Text(judul[1].title),
        subtitle: Text(
          judul[1].subtile,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        leading: CircleAvatar(
          child: Text(judul[1].no),
        ),
        trailing: Icon(Icons.more_horiz_rounded),
      ),
      ListTile(
        title: Text(judul[2].title),
        subtitle: Text(judul[2].subtile),
        leading: CircleAvatar(
          child: Text(judul[2].no),
        ),
        trailing: Icon(Icons.more_horiz_rounded),
      ),
    ]);
  }
}
