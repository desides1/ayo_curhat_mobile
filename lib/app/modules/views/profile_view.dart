import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Implement logic to save changes
            },
            child: const Text(
              'SAVE',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 324,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 80.0,
                          // backgroundImage:
                          //     AssetImage('assets/images/noimage.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              // Tambahkan logika untuk mengganti foto di sini
                              print('Ganti foto');
                              // Implement logic to change the photo
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFormField('Username', ''),
                  _buildFormField('NIM', '', TextInputType.number),
                  _buildFormField('Program Studi', 'Masukkan Program Studi'),
                  _buildFormField('Tanggal Lahir', 'Masukkan Tanggal Lahir',
                      TextInputType.datetime),
                  _buildFormField('Jenis Kelamin', 'Masukkan Jenis Kelamin'),
                  _buildFormField('Email', '', TextInputType.emailAddress),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasi logika untuk menyimpan data
                    },
                    child: Text('Simpan'),
                  ),
                ],
              ),
            ),
            // Bagian lain dari kode Anda di sini
          ],
        ),
      ),
    );
  }

  Widget _buildFormField(String label, String hintText,
      [TextInputType? keyboardType]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label:'),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
          keyboardType: keyboardType ?? TextInputType.text,
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
