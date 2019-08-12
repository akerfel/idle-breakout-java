// Currently, balls are squares. Why? Collision detection is probably easier.

public class BasicBall {
  float x;
  float y;
  float vx;
  float vy;
  float w = basicBallSide;
  float h = basicBallSide;
  
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
    checkBounces();
  }
  
  public void checkBounces() {
    float nextx = x + vx;
    float nexty = y + vy;
    
    Iterator<Brick> iterator = bricks.iterator();
    while (iterator.hasNext()) {
      Brick brick = iterator.next();
      //if I keep moving in my current X direction, will I collide with the center rectangle?
      if (nextx + w > brick.x &&
          nextx < brick.x + brick.w &&
          y + h > brick.y &&
          y < brick.y + brick.h) {
        vx *= -1.0;
        brick.damage();
        if (brick.hp == 0) {
          iterator.remove();  
        }
        print("bounce_brick_nextx\t");
        break;
      }
      
      //if I keep moving in my current Y direction, will I collide with the center rectangle?
      if (nexty + h > brick.y &&
          nexty < brick.y + brick.h &&
          x + w > brick.x &&
          x < brick.x + brick.w) {
        vy *= -1.0;
        brick.damage();
        if (brick.hp == 0) {
          iterator.remove();  
        }
        print("bounce_brick_nexty\t");
        break;
      }
      
    }
  }
  
  public void draw() {
    fill(basicBallColor);  // 
    rect(x, y, w, h);
  }
}
