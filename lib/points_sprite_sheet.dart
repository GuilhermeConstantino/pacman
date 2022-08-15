import 'package:bonfire/bonfire.dart';

class PointsSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
      'map/objects/point.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
      'map/objects/point.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
      'map/objects/point.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
      'map/objects/point.png',
      SpriteAnimationData.sequenced(
          amount: 1, stepTime: 1, textureSize: Vector2(32, 32)));
}
