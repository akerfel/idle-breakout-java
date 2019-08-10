int gold = 0;
ArrayList<Brick> bricks = new ArrayList<Brick>();

void setup() {
  size(800, 600);
  
  makeRectOfBricks(60, 30, 5, 7, 3);
  makeRectOfBricks(400, 30, 5, 7, 3);
}

void draw() {
  background(backgroundColor);
  removeDeadBricks();
  drawEverything();
}
