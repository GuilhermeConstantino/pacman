import 'package:bonfire/bonfire.dart';

class RedGhostSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
      'map/ghost/spr_ghost_red_0.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
      'map/ghost/spr_ghost_red_0.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
      'map/ghost/spr_ghost_red_0.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
      'map/ghost/spr_ghost_red_0.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));
}
