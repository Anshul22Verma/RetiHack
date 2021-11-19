import 'dart:math';

var _random = new Random();

class ObjShow {
  final int id, answer_index;
  final String img;
  final List<String> options;

  ObjShow({this.id, this.img, this.options, this.answer_index});
}

// get list of images from the directory
var images = [
  ['ballon', 'assets/objectsNanimals/ballon.png'],
  ['bomb', 'assets/objectsNanimals/bomb.png'],
  ['cat', 'assets/objectsNanimals/cat.png'],
  ['dino', 'assets/objectsNanimals/dino.png'],
  ['dog', 'assets/objectsNanimals/dog.png'],
  ['ghost', 'assets/objectsNanimals/ghost.png'],
  ['pencil', 'assets/objectsNanimals/pencil.png'],
  ['soccer ball', 'assets/objectsNanimals/soccer.png'],
];

var int1 = _random.nextInt(images.length);
var int2 = _random.nextInt(images.length);

int return_diff_rand(images, ignore_){
  var r = 0;
  do{
    r = _random.nextInt(images.length);
  } while (ignore_.contains(r));
  return r;
}

var into11 = return_diff_rand(images, [int1]);
var into12 = return_diff_rand(images, [int1, into11]);
var into13 = return_diff_rand(images, [int1, into11, into12]);

var into21 = return_diff_rand(images, [int2]);
var into22 = return_diff_rand(images, [int2, into21]);
var into23 = return_diff_rand(images, [int2, into21, into22]);

var options = [];

List<Map<String, Object>> sample_object_show_data = [
  {
    "id": 1,
    "img": images[int1][1],
    "options": [
      images[int1][0],
      images[into11][0],
      images[into12][0],
      images[into13][0],
    ],
    "answer_index": 0,
  },
  {
    "id": 2,
    "img": images[int2][1],
    "options": [
      images[into21][0],
      images[int2][0],
      images[into23][0],
      images[into22][0],
    ],
    "answer_index": 1,
  },
];
