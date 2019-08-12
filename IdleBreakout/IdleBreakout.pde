int gold = 0;
int level = 1;
ArrayList<Brick> bricks = new ArrayList<Brick>();
ArrayList<BasicBall> basicBalls = new ArrayList<BasicBall>();
boolean cheatMode = true;
int cheatModeBalls = 10;

// Buttons
ArrayList<Button> buttons = new ArrayList<Button>();
Button basicBallButton;

void setup() {
  size(800, 600);
  makeWallBricks();
  loadLevel1();
  addButtons();
  if (cheatMode) {
    for (int i = 0; i < cheatModeBalls; i++) {
      basicBalls.add(new BasicBall(width/2, height/2));
    }
  }
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
