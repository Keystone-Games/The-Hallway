package states;

class Init extends FlxState {
  var sprite_entity_TEACHER_IDLE_0:FlxSprite;
  
  public override function create() {
    super.create();
    
    SoundManager.init();
    
    sprite_entity_TEACHER_IDLE_0 = new FlxSprite();
    sprite_entity_TEACHER_IDLE_0.loadGraphic(GameAssets.ENTITY_TEACHER_IDLE_0__png);
    add(sprite_entity_TEACHER_IDLE_0);
    remove(sprite_entity_TEACHER_IDLE_0);
  }
  public override function update(dt:Float) {
    super.update(dt);
  }
}
