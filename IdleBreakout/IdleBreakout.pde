int gold;

ArrayList<Brick> bricks = new ArrayList<Brick>();

void setup() {
  size(800, 600);
  
  Brick brick = new Brick(150, 100, 2);
  bricks.add(brick);
}

void draw() {
    drawEverything();
}
