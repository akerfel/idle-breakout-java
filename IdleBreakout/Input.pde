void mousePressed() {
  for (Brick brick : bricks) {
    if (brick.mouseOn()) {
      brick.damage();
    }
  }
}
