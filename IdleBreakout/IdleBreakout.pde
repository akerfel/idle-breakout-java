int gold = 0;
ArrayList<Brick> bricks = new ArrayList<Brick>();
ArrayList<BasicBall> basicBalls = new ArrayList<BasicBall>();

void setup() {
  size(800, 600);
  
  makeWallBricks();
  
  makeRectOfBricks(60, 30, 1, 1, 3);
  makeRectOfBricks(400, 30, 5, 7, 3);
  makeRectOfBricks(60, 400, 5, 7, 3);
  makeRectOfBricks(400, 400, 5, 7, 3);
  
  BasicBall basicBall1 = new BasicBall(width/2, height/2);
  /*BasicBall basicBall2 = new BasicBall(width/2, height/2);
  BasicBall basicBall3 = new BasicBall(width/2, height/2);
  BasicBall basicBall4 = new BasicBall(width/2, height/2);*/
  basicBalls.add(basicBall1);
  /*basicBalls.add(basicBall2);
  basicBalls.add(basicBall3);
  basicBalls.add(basicBall4);*/
  
}

void draw() {
  // Update game logic
  removeDeadBricks();
  updateBasicBalls();
  
  // Draw
  background(backgroundColor);
  drawEverything();
}
