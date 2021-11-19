import 'dart:math';

var _random = new Random();

class Obj3 {
  final int id, answer_index;
  final String img1, img2, img3;
  final List<List> options;

  Obj3({this.id, this.img1, this.img2, this.img3, this.options, this.answer_index});
}

// get list of images from the directory
var images = [
  'assets/objectsNanimals/ballon.png',
  'assets/objectsNanimals/bomb.png',
  'assets/objectsNanimals/cat.png',
  'assets/objectsNanimals/dino.png',
  'assets/objectsNanimals/dog.png',
  'assets/objectsNanimals/ghost.png',
  'assets/objectsNanimals/pencil.png',
  'assets/objectsNanimals/soccer.png',
];

var int1 = _random.nextInt(images.length);
var int2 = _random.nextInt(images.length);
var int3 = _random.nextInt(images.length);

int return_diff_rand(images, ignore_){
  var r = 0;
  do{
    r = _random.nextInt(images.length);
  } while (r == ignore_);
  return r;
}

var into11 = return_diff_rand(images, int1);
var into12 = _random.nextInt(images.length);
var into13 = _random.nextInt(images.length);

var into21 = _random.nextInt(images.length);
var into22 = return_diff_rand(images, int2);
var into23 = _random.nextInt(images.length);

var into31 = _random.nextInt(images.length);
var into32 = _random.nextInt(images.length);
var into33 = return_diff_rand(images, int3);

var options = [];

List<Map<String, Object>> sample_object_data = [
  {
    "id": 1,
    "img2": images[int1],
    "img1": images[int2],
    "img3": images[int3],
    "options": [

      [images[into11], images[into12], images[into13]],
      [images[int1], images[int2], images[int3]],
      [images[into21], images[into22], images[into23]],
      [images[into31], images[into32], images[into33]]
    ],
    "answer_index": 1,
  },
];
