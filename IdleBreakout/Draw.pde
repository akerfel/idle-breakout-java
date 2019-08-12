public void drawEverything() {
  drawBricks();  
  drawBasicBalls();
  drawGold();
  drawLevelNumber();
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
  String strGold = str(gold);
  text("$:" + str(gold), width - (strGold.length() + 3) * 14, 20);
}

public void drawLevelNumber() {
  fill(textColor);
  String strLevel = str(level);
  text("Level: " + strLevel, 23, 16);
}
