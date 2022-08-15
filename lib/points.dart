import 'package:bonfire/base/game_component.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/ghost.dart';
import 'package:pacman/pacman.dart';
import 'package:pacman/points_sprite_sheet.dart';

class Points extends SimpleEnemy with ObjectCollision {
  Points(Vector2 position)
      : super(
            position: position,
            size: Vector2(20, 20),
            animation: SimpleDirectionAnimation(
                idleLeft: PointsSpriteSheet.idleLeft,
                idleRight: PointsSpriteSheet.idleRight,
                runLeft: PointsSpriteSheet.runLeft,
                runRight: PointsSpriteSheet.runRight)) {
    setupCollision(CollisionConfig(
        collisions: [CollisionArea.rectangle(size: Vector2(5, 5))]));
  }
  @override
  bool onCollision(GameComponent component, bool active) {
    //print(component);
    //print(active);
    super.onCollision(component, active);
    if (component is Ghost) {
      return false;
    }
    if (component is Pacman) {
      removeFromParent();
    }
    return active;
  }
}
