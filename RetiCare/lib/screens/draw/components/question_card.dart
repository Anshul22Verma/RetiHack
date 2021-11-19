import 'package:flutter/material.dart';

// import 'package:reticare/controllers/draw_controller.dart';
import 'package:reticare/models/Draw.dart';

import '../../../constants.dart';

class DrawingCard extends StatelessWidget {
  const DrawingCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final ObjDrawTask question;

  // FlutterSoundRecorder _myRecorder;
  // final audioPlayer = AssetsAudioPlayer();
  // String filePath;

  @override
  Widget build(BuildContext context) {
    // DrawController _controller = Get.put(DrawController());
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
            'Draw the following pattern in an image and take a picture of it \n\n',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          new Image.asset(question.img, height: 240, width: 240),
          SizedBox(height: kDefaultPadding / 2),
          ElevatedButton.icon(
              onPressed: capture,
              icon: Icon(Icons.camera),
              label: Text(''),
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

  void capture() {
    // DO NOTHING
  }

}
