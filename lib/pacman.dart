// import 'dart:html';
// import 'dart:ui';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';
import 'package:bonfire/bonfire.dart';
import 'package:pacman/game_sprite_sheet.dart';
import 'package:pacman/ghost.dart';

class Pacman extends SimplePlayer with ObjectCollision {
  Pacman(Vector2 position)
      : super(
            position: position,
            size: Vector2(20, 20),
            animation: SimpleDirectionAnimation(
                idleLeft: GameSpriteSheet.pacmanIdleLeft,
                idleRight: GameSpriteSheet.pacmanIdleRight,
                runLeft: GameSpriteSheet.pacmanRunLeft,
                runRight: GameSpriteSheet.pacmanRunRight)) {
    setupCollision(CollisionConfig(
        collisions: [CollisionArea.rectangle(size: Vector2(17, 17))]));
  }
  @override
  bool onCollision(GameComponent component, bool active) {
    //print(component);
    //print(active);
    super.onCollision(component, active);
    if (component is Ghost) {
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(title: Text('Game Over'))));
      Future.delayed(const Duration(seconds: 2), () {
        Restart.restartApp();
      });
    }
    return active;
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
