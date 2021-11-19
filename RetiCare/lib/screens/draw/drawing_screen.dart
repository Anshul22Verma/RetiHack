import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:RetiCare/controllers/draw_controller.dart';

import 'components/body.dart';

class DrawingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DrawController _controller = Get.put(DrawController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
