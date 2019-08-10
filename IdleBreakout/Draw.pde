public void drawEverything() {
  drawBricks();  
  drawGold();
}

public void drawBricks() {
   for (Brick brick : bricks) {
    brick.draw();
  }
}

public void drawGold() {
  fill(textColor);
  text("$:" + str(gold), width - 50, 20);
}
