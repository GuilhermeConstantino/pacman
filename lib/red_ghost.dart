import 'package:bonfire/bonfire.dart';
import 'package:pacman/ghost_sprite_sheet.dart';
import 'package:pacman/red_ghost_sprite_sheet.dart';

class RedGhost extends SimpleEnemy with ObjectCollision {
  RedGhost(Vector2 position)
      : super(
            position: position,
            size: Vector2(20, 20),
            animation: SimpleDirectionAnimation(
                idleRight: RedGhostSpriteSheet.idleRight,
                runRight: RedGhostSpriteSheet.runRight,
                idleLeft: RedGhostSpriteSheet.idleLeft,
                runLeft: RedGhostSpriteSheet.runLeft)) {
    setupCollision(CollisionConfig(
        collisions: [CollisionArea.rectangle(size: Vector2(15, 15))]));
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {},
      radiusVision: 150,
      margin: 0,
    );
    super.update(dt);
  }
}
