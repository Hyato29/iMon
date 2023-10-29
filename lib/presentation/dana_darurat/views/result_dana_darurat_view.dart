import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResultDanaDaruratView extends GetView {
  const ResultDanaDaruratView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResultDanaDaruratView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResultDanaDaruratView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
