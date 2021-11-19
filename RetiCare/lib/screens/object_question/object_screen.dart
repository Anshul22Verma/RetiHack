import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reticare/controllers/object_main_controller.dart';
import 'package:reticare/screens/object_question/components/main_body.dart';

class ObjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ObjectMainQuestionController _controller = Get.put(ObjectMainQuestionController());
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
      body: MainBody(),
    );
  }
}