import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:RetiCare/controllers/object_controller.dart';
import 'package:RetiCare/models/ObjectQuestion.dart';

import '../../../constants.dart';
import 'option.dart';

class ObjectQuestionCard extends StatelessWidget {
  const ObjectQuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Obj3 question;

  @override
  Widget build(BuildContext context) {
    ObjectQuestionController _controller = Get.put(ObjectQuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            "Please select the pattern you saw",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
                (index) => Option(
              index: index,
              img1: question.options[index][0],
              img2: question.options[index][1],
              img3: question.options[index][2],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
