import 'package:audioplayers/audioplayers.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/pacman.dart';
import 'package:pacman/ghost.dart';
import 'package:pacman/points.dart';
import 'package:pacman/red_ghost.dart';
import 'ghost.dart';
// ignore: depend_on_referenced_packages

double tileSize = 32;
Future<void> main() async {
  // final audio_player = AudioPlayer();
  // await audio_player.setUrl('https://youtube.com/watch?v=HwyAwPLHqnM');
  // audio_player.play();

  // final audio_player = AudioPlayer();
  // await audio_player.play('https://www.youtube.com/watch?v=HwyAwPLHqnM');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      map: TiledWorldMap('map/mapa2.json', objectsBuilder: {
        'ghost_blue': (properties) => Ghost(properties.position),
        'ghost_red': (properties) => RedGhost(properties.position),
        'point': (properties) => Points(properties.position),
      }),
      joystick: Joystick(
          directional: JoystickDirectional(),
          keyboardConfig: KeyboardConfig(enable: true)),
      player: Pacman(Vector2(6, 6)),
      showCollisionArea: false,
    );
  }
}
