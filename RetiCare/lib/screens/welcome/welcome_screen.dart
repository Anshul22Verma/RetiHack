import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:RetiCare/constants.dart';
import 'package:RetiCare/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Row(
                    children: [
                      Text(
                        "Age",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Wise",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.amber[900], fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " MMSE,",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),// 1/6
                  Text("Enter your informations below"),
                  SizedBox(height:10),
                  Text("Name"),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(height:10),
                  Text("Age"),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Age",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(),// 1/6
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Start",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
