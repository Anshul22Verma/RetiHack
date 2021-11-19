import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:RetiCare/constants.dart';
import 'package:RetiCare/controllers/question_controller.dart';
import 'package:RetiCare/controllers/object_controller.dart';
import 'package:RetiCare/controllers/object_show_controller.dart';
import 'package:RetiCare/controllers/speaking_controller.dart';
import 'package:RetiCare/controllers/draw_controller.dart';
import 'package:RetiCare/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    ObjectQuestionController _objqnController = Get.put(ObjectQuestionController());
    ObjShowQuestionController _objshowController = Get.put(ObjShowQuestionController());
    SpeakingController _spkController = Get.put(SpeakingController());
    DrawController _drawController = Get.put(DrawController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 1 + _objqnController.numOfCorrectAns * 3 + _objshowController.numOfCorrectAns * 1 + _spkController.numOfCorrectAns * 2 +  _drawController.numOfCorrectAns * 5}/${_qnController.questions.length * 1 + _objqnController.objquestions.length * 3 + _objshowController.questions.length * 3 + _spkController.questions.length * 2 + _drawController.questions.length * 5}",
                style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: kSecondaryColor),
            ),
              Spacer(flex: 3),
              InkWell(
                onTap: () => Get.to(HomeScreen()),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Home",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black),
                    ),
                ),
      ),
    ]),
    ],
      ),
    );
  }
}
