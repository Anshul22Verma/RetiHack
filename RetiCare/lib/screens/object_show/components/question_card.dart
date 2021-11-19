import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reticare/controllers/object_show_controller.dart';
import 'package:reticare/models/ObjectShow.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final ObjShow question;

  @override
  Widget build(BuildContext context) {
    ObjShowQuestionController _controller = Get.put(ObjShowQuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "What is the object/animal in this image known as",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          new Image.asset(question.img, height: 120, width: 120),
          SizedBox(height: kDefaultPadding / 6),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index] as String,
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
