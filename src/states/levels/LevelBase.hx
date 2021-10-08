package states.levels;

class LevelBase extends FlxState {
  final level = 0;
  
  var baseMap:{};
  var title:FlxText;
  
  public override function create() { 
    super.create();
    
    initMap();
    title = new FlxText(0, 0, 0, "Level " + level).setFormat("monsterrat", 64);
    add(title);
  }
  public override function update( dt:Float ) { super.update( dt ); }
  private static function initMap() { 
    baseMap = {
      floor: {},
      rooms: {}
    };
  }
}
