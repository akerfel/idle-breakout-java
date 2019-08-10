int gold = 0;
color textColor = color(0, 0, 0);
ArrayList<Brick> bricks = new ArrayList<Brick>();

void setup() {
  size(800, 600);
  
  Brick brick = new Brick(150, 100, 2);
  bricks.add(brick);
}

void draw() {
  background(244, 238, 215);
  removeDeadBricks();
  drawEverything();
}
