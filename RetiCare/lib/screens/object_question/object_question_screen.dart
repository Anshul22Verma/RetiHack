import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reticare/controllers/object_controller.dart';
import 'package:reticare/screens/object_question/components/body.dart';

class ObjectQuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ObjectQuestionController _controller = Get.put(ObjectQuestionController());
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
