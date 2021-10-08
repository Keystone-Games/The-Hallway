package states;

class LevelSelectorState extends FlxState {
  var background:FlxSprite;
  var title:FlxText;
  
  var level_1:FlxButton;
  var level_2:FlxButton;
  var locked_2:FlxSprite;
  var level_3:FlxButton;
  var locked_3:FlxSprite;
  
  public override function create() {
    super.create();
    
    background = new FlxSprite();
    add(background);
    title = new FlxText();
    add(title);
    
    level_1 = new FlxButton();
    add(level_1);
    level_2 = new FlxButton();
    add(level_2);
    locked_2 = new FlxSprite();
    add(locked_2);
    level_3 = new FlxButton();
    add(level_3);
    locked_3 = new FlxSprite();
    add(locked_3);
  }
  public override function update(dt:Float) {
    super.update(dt);
  }
}
