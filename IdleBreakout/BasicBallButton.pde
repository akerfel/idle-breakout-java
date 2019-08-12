int price = 10;

public class BasicBallButton extnds Button {
  public BasicBallButton(int x, int y) {
    
    super(x, y);  
  
}
  
  
  
  public void clicked() {
    if (gold >= price) {
      basicBalls.add(new BasicBall(width/2, height/2));
      gold -= price;
    }
  }
  
  public void draw() {
    fill(color(255, 255, 255));
    rect(x, y, w, h);
    e    textSize(14);
    fill(textColor);
    String strPrice = str(price);
    text(strPrice, x + 25, y + 40);
  }
}
