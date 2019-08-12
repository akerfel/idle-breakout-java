// Currently, balls are squares. Why? Collision detection is probably easier.

public class BasicBall {
  float x;
  float y;
  float vx;
  float vy;
  
  public BasicBall(int x, int y) {
      this.x = x;
      this.y = y;
      chooseVelocities();
  }
  
  /**
  * Randomizes a vx depending on speedBasicBall, 
  * and calculates the correct vy using the Pythagorean theorem:
  * speedBasicBall = sqrt(vx^2 + vy^2)
  * This ensures that the total speed (not velocity) is always equal to speedBasicBall.
  */
  public void chooseVelocities() {
    vx = random(-basicBallSpeed, basicBallSpeed);
    vy = sqrt(pow(basicBallSpeed, 2.0) - pow(vx, 2.0));
    if (random(0, 1) < 0.5) {
      vy *= -1;  // 50% chance to invert y.
    }
  }
  
  public void update() {
    x += vx;
    y += vy;
    checkWallBounce();
    checkBrickBounce();
  }
  
  public void checkBrickBounce() {
    /*
    int xint = int(x);
    int yint = int(y);
    
    for (Brick brick: bricks) {
      if ( (abs(xint - brick.x) < 5 || abs(xint - (brick.x + brickWidth)) < 5) && yint >= brick.y && yint <= brick.y + brickHeight) {
        vx *= -1.0;  
        brick.damage();
      }
      else if ( (abs(yint - brick.y) < 5 || abs(yint - (brick.y + brickHeight)) < 5) && xint >= brick.x && xint <= brick.x + brickWidth) {
        vy *= -1.0;  
        brick.damage();
      }
    }
    */
  }
  
  public void checkWallBounce() {
    if (x <= 0 || x >= width - basicBallSide) {
      vx *= -1.0;  
    }
    if (y <= 0 ||y >= height - basicBallSide) {
      vy *= -1.0;  
    }
  }
  
  public void draw() {
    fill(basicBallColor);  // 
    square(x, y, basicBallSide);
  }
}
