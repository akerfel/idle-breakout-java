public void drawEverything() {
  drawBricks();  
}

public void drawBricks() {
   for (Brick brick : bricks) {
    brick.draw();
  }
}
