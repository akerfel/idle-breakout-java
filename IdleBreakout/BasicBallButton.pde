float price = 25;

public class BasicBallButton extends Button {
  public BasicBallButton(int x, int y) {
    super(x, y);  
}
  
  
  
  public void clicked() {
    if (gold >= price) {
      basicBalls.add(new BasicBall(width/2, height/2));
      gold -= price;
      price *= 1.5;
      price = floor(price);
    }
  }
  
  public void draw() {
    // Draw smaller lower rectangle, which holds the price text
    fill(color(255, 255, 255));
    rect(x, y, w, h);
    rect(x, y + h - 15, w, 15);
    
    // Draw text
    textSize(14);
    fill(textColor);
    String strPrice = str(price);
    text(strPrice, x + 25, y + 42);
    
    // Draw ball icon
    fill(basicBallColor);  
    rect(x + 20, y + 7, basicBallSide, basicBallSide);
  }
}
