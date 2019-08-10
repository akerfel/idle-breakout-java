int gold;

ArrayList<Brick> bricks = new ArrayList<Brick>();

void setup() {
  size(600, 800);
  
  Brick brick = new Brick(75, 75, 1);
  bricks.add(brick);
}

void draw() {
    drawEverything();
}
