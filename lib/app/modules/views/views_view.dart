import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ViewsView extends GetView {
  const ViewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ViewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
