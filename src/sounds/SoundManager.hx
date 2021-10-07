package sounds;

class SoundManager {
  public static function playSFX(sound:SFX) {
    switch (sound) {
      case BUTTON_CLICK:
        FlxG.sound.play(GameAssets.BUTTON_CLICK__png);
        break;
      case BUTTON_CLICK_FAIL:
        FlxG.sound.play(GameAssets.BUTTON_CLICK_FAIL__png);
        break;
      case BUTTON_HOVER:
        FlxG.sound.play(GameAssets.BUTTON_HOVER__png);
        break
    }
  }
}

extern enum SFX {
  BUTTON_CLICK;
  BUTTON_CLICK_FAIL;
  BUTTON_HOVER;
}
