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

void loadNextLevel() {
  level++;
  
  switch(level) {
    case 2: loadLevel2(); break;  
    case 3: loadLevel3(); break;  
    case 4: loadLevel4(); break;  
    case 5: loadLevel5(); break;  
    case 6: loadLevel6(); break;  
    
  }
}

void checkIfNextLevel() {
  if (bricks.size() == 4) {    // 4 left means there are no bricks left, because the walls are also bricks.
      loadNextLevel();
  }
  println("size: " + bricks.size());
}

void makeWallBricks() {
  bricks.add(new Brick(0, 0, width, 20, -1));  //hp -1 means invincible
  bricks.add(new Brick(0, height-20, width, 20, -1));
  bricks.add(new Brick(0, 0, 20, height, -1));
  bricks.add(new Brick(width-20, 0, 20, height, -1));
}

void makeRectOfBricks(int x, int y, int w, int h, int hp) {
  for (int i = 0; i < w; i++) {
    for (int j = 0; j < h; j++) {
      Brick newBrick = new Brick(x + i * (brickWidth + 3), y + j * (brickHeight + 3), brickWidth, brickHeight, hp);
      bricks.add(newBrick);
    }
  }
}

void updateBasicBalls() {
  for(BasicBall basicBall: basicBalls) {
    basicBall.update();
  }
}
