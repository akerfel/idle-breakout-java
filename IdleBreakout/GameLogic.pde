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

void addButtons() {
  basicBallButton = new BasicBallButton(30, 10);
  buttons.add(basicBallButton);  
}


void loadNextLevel() {
  level++;
  
  switch(level) {
    case 2: loadLevel2(); break;  
    case 3: loadLevel3(); break;  
    case 4: loadLevel4(); break;  
    case 5: loadLevel5(); break;  
    case 6: loadLevel6(); break;  
    default: loadLevel100();
  }
}

void checkIfNextLevel() {
  if (bricks.size() == 4) {    // 4 left means there are no bricks left, because the walls are also bricks.
      loadNextLevel();
  }
}

void makeWallBricks() {
  //hp -1 means invincible
  bricks.add(new Brick(0, 0, width, 60, -1));    // top brick
  bricks.add(new Brick(0, height-20, width, 40, -1));
  bricks.add(new Brick(0, 0, 20, height, -1));
  bricks.add(new Brick(width-20, 0, 20, height, -1));
}

void makeRectOfBricks(int x, int y, int w, int h, int hp) {
  int spaceBetweenBricks = 0;
  for (int i = 0; i < w; i++) {
    for (int j = 0; j < h; j++) {
      Brick newBrick = new Brick(x + i * (brickWidth + spaceBetweenBricks), y + j * (brickHeight + spaceBetweenBricks), brickWidth, brickHeight, hp);
      bricks.add(newBrick);
    }
  }
}

void updateBasicBalls() {
  for(BasicBall basicBall: basicBalls) {
    basicBall.update();
  }
}
