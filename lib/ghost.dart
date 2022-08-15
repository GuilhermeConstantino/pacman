import 'package:bonfire/bonfire.dart';
import 'package:pacman/ghost_sprite_sheet.dart';

class Ghost extends SimpleEnemy with ObjectCollision {
  Ghost(Vector2 position)
      : super(
            position: position,
            size: Vector2(20, 20),
            animation: SimpleDirectionAnimation(
                idleRight: GhostSpriteSheet.idleRight,
                runRight: GhostSpriteSheet.runRight,
                idleLeft: GhostSpriteSheet.idleLeft,
                runLeft: GhostSpriteSheet.runLeft)) {
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
