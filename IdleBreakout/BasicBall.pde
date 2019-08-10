public class BasicBall {
  int x;
  int y;
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
    if (x <= 0 || x >= width) {
      vx *= -1.0;  
    }
    if (y <= 0 ||y >= height) {
      vy *= -1.0;  
    }
  }
  
  public void draw() {
    fill(basicBallColor);  // 
    circle(x, y, basicBallDiameter);
  }
}
