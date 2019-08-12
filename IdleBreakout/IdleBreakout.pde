int gold = 0;
int level = 1;
ArrayList<Brick> bricks = new ArrayList<Brick>();
ArrayList<BasicBall> basicBalls = new ArrayList<BasicBall>();

void setup() {
  size(800, 600);
  makeWallBricks();
  loadLevel1();
  
  BasicBall basicBall1 = new BasicBall(width/2, height/2);
  basicBalls.add(basicBall1);
  
  BasicBall basicBall2 = new BasicBall(width/2, height/2);
  basicBalls.add(basicBall2);
  
  BasicBall basicBall3 = new BasicBall(width/2, height/2);
  basicBalls.add(basicBall3);
  
  BasicBall basicBall4 = new BasicBall(width/2, height/2);
  basicBalls.add(basicBall4);
  
  BasicBall basicBall5 = new BasicBall(width/2, height/2);
  basicBalls.add(basicBall5);
  
}

void draw() {
  // Update game logic
  updateBasicBalls();
  removeDeadBricks();  // I thought I could remove this but apparently not.
  checkIfNextLevel();
  
  // Draw
  background(backgroundColor);
  drawEverything();
}
