package sounds;

class SoundManager {
  public static function playSFX(sound:SFX) {
    switch (sound) {
      case BUTTON_CLICK:
        FlxG.sound.play(Assets.SOUND_BUTTON_CLICK);
        break;
      case BUTTON_CLICK_FAIL:
        FlxG.sound.play(Assets.SOUND_BUTTON_CLICK_FAIL);
        break;
      case BUTTON_HOVER:
        FlxG.sound.play(Assets.SOUND_BUTTON_HOVER);
        break
    }
  }
}

extern enum SFX {
  BUTTON_CLICK;
  BUTTON_CLICK_FAIL;
  BUTTON_HOVER;
}
