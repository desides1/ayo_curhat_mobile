import 'package:ayo_curhat/app/data/profile_provider_provider.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  final count = 0.obs;
  @override
  void onInit() {
    // Panggil metode fetchProfileData selama inisialisasi controller
    // fetchProfileData();
    super.onInit();
  }

  // Future<void> fetchProfileData() async {
  //   try {
  //     var profileData = await ProfileProviderProvider.getDataProfile();

  //     if (profileData.statusCode == 200) {
  //       var data = profileData.body;
  //       var nama = data['nama'];
  //       var nim = data['nim'];
  //       var email = data['email'];
  //     } else {
  //       print('Error fetching profile data: ${profileData.statusCode}');
  //     }
  //   } catch (error) {
  //     print('Error fetching profile data: $error');
  //   }
  // }
}
