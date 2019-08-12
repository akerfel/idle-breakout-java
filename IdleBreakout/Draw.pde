public void drawEverything() {
  drawBricks();  
  drawBasicBalls();
  drawGold();
}

public void drawBricks() {
   for (Brick brick : bricks) {
    brick.draw();
  }
}

public void drawBasicBalls() {
   for (BasicBall basicBall : basicBalls) {
    basicBall.draw();
  }
}

public void drawGold() {
  fill(textColor);
  text("$:" + str(gold), width - 250, 20);
}
