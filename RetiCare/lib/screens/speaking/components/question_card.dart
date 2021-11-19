import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:reticare/controllers/speaking_controller.dart';
import 'package:reticare/models/Speaking.dart';

import '../../../constants.dart';

class SpeakingCard extends StatelessWidget {
  const SpeakingCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final SpeakingTask question;

  // FlutterSoundRecorder _myRecorder;
  // final audioPlayer = AssetsAudioPlayer();
  // String filePath;


  @override
  Widget build(BuildContext context) {
    // SpeakingController _controller = Get.put(SpeakingController());
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
            'Press the button to start/stop recording and say \n\n',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          Text(
              question.question + '\n\n',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ElevatedButton.icon(
              onPressed: record,
              icon: Icon(Icons.mic),
              label: Text('REC'),
          )
          // ...List.generate(
          //   question.options.length,
          //   (index) => Option(
          //     index: index,
          //     text: question.options[index],
          //     press: () => _controller.checkAns(question, index),
          //   ),
          // ),
        ],
      ),
    );
  }

  void record() {
    // DO NOTHING
  }

  // void stopRecord() {
  //
  // }

}
