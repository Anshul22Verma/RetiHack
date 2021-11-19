import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:RetiCare/controllers/object_main_controller.dart';
import 'package:RetiCare/models/ObjectQuestion.dart';

import '../../../constants.dart';

class MainObjectQuestionCard extends StatelessWidget {
  const MainObjectQuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Obj3 question;

  @override
  Widget build(BuildContext context) {
    // ObjectMainQuestionController _controller = Get.put(ObjectMainQuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Wrap(
        children: <Widget>[
          Text(
            "Remember what you are seeing \nbecause you are going to be asked \n to indentify them again in \n a few minutes. \n\n",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          Spacer(),
          new Image.asset(question.img2, height: 110, width: 110),
          new Image.asset(question.img1, height: 110, width: 110),
          new Image.asset(question.img3, height: 110, width: 110),
          SizedBox(height: kDefaultPadding / 2),
           // ...List.generate(
           //   question.options.length,
           //       (index) => Option(
           //     index: index,
           //     text: 'Next',
           //     press: () => _controller.checkAns(question, index),
           //   ),
           // ),
        ],
        ),
      );
  }
}
