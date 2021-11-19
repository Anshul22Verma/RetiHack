import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:RetiCare/controllers/object_controller.dart';

import '../../../constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.img1,
    this.img2,
    this.img3,
    this.index,
    this.press,
  }) : super(key: key);
  final String img1;
  final String img2;
  final String img3;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ObjectQuestionController>(
        init: ObjectQuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return kGreenColor;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}.",
                    style: TextStyle(color: getTheRightColor(), fontSize: 16),
                  ),
                  new Image.asset(img1, height: 35, width: 35),
                  new Image.asset(img2, height: 35, width: 35),
                  new Image.asset(img3, height: 35, width: 35),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                    color: getTheRightColor() == kGrayColor
                        ? Colors.transparent
                        : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == kGrayColor
                        ? null
                        : Icon(getTheRightIcon(), size: 16),
                  )
                ],
              ),
            ),
          );
        });
  }
}
