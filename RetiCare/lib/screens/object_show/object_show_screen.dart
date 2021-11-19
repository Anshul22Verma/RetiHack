import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reticare/controllers/object_show_controller.dart';

import 'components/body.dart';

class ObjShowQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ObjShowQuestionController _controller = Get.put(ObjShowQuestionController());
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
