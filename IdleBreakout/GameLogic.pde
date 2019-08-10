import java.util.Iterator;

void removeDeadBricks() {
  Iterator<Brick> iterator = bricks.iterator();
  
  while (iterator.hasNext()) {
    Brick brick = iterator.next();
    if (brick.hp == 0) {
      iterator.remove();  
    }
  }
}

void makeRectOfBricks(int x, int y, int w, int h, int hp) {
  for (int i = 0; i < w; i++) {
    for (int j = 0; j < h; j++) {
      Brick newBrick = new Brick(x + i * brickWidth, y + j * brickHeight, hp);
      bricks.add(newBrick);
    }
  }
}
