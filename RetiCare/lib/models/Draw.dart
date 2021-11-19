import 'dart:math';

var _random = new Random();

class ObjDrawTask {
  final int id;
  final String img;

  ObjDrawTask({this.id, this.img});
}

// get list of images from the directory
var images = [
  'assets/patterns/pattern1.png',
  'assets/patterns/pattern2.png',
  'assets/patterns/pattern3.png',
];


var int1 = _random.nextInt(images.length);

var options = [];

List<Map<String, Object>> sample_object_draw_data = [
  {
    "id": 1,
    "img": images[int1],
  },
];