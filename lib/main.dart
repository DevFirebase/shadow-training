import 'package:basic_structure/shadow-training.dart';
import 'package:flame/flame.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() async {
  await Flame.util.fullScreen();
  await Flame.util.setOrientation(DeviceOrientation.portraitUp);

  await Flame.images.loadAll(<String>[
    'background.png',
    'boxer/dizzy.png',
    'boxer/idle.png',
    'boxer/punch-left.png',
    'boxer/punch-right.png',
    'boxer/punch-up.png',
  ]);

  SpeedTraining game = SpeedTraining();
  runApp(game.widget);
}
