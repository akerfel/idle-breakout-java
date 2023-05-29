// In this file, all global variables are initialized (except the ones in Settings.pde)
// and the draw() method is defined, which is called 60 times per second.

int gold = 0;
int level = 1;
ArrayList<Brick> bricks = new ArrayList<Brick>();
ArrayList<BasicBall> basicBalls = new ArrayList<BasicBall>();
boolean cheatMode = false;
int cheatModeBalls = 5;

// Buttons
ArrayList<Button> buttons = new ArrayList<Button>();
Button basicBallButton;

// This method is called at startup
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

// This method is called 60 times per seconds
void draw() {
    // Update game logic
    updateBasicBalls();
    removeDeadBricks();
    checkIfNextLevel();

    // Draw
    background(backgroundColor);
    drawEverything();
}
