import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get pacmanIdleLeft => SpriteAnimation.load(
      'map/pacman/pac_man_1.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get pacmanIdleRight => SpriteAnimation.load(
      'map/pacman/pac_man_1.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get pacmanRunLeft => SpriteAnimation.load(
      'map/pacman/pac_man_1.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get pacmanRunRight => SpriteAnimation.load(
      'map/pacman/pac_man_1.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));
}
